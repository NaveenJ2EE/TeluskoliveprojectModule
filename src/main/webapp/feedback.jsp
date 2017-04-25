<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
	
	
  <html>
  <head>
    <meta charset="utf-8">
    <meta name="viewport" content="width=device-width, initial-scale=1">
    <title>Feedback | Telusko</title>
    <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/css/bootstrap.css"/>
    <link href="https://cdnjs.cloudflare.com/ajax/libs/materialize/0.97.7/css/materialize.css" rel="stylesheet">
    <!-- <link rel="stylesheet"  href="css/contact.css"> -->
    <link href="<c:url value="/css/contact.css" />" rel="stylesheet">
    
    
    
  </head>
  <body>
    <div class="navbar navbar-inverse navbar-fixed-top">
      <div class="container-fluid">
        <div class="navbar-header">
          <button type="button" class="navbar-toggle" data-toggle="collapse" data-target="#myNavbar">
            <span class="icon-bar"></span>
            <span class="icon-bar"></span>
            <span class="icon-bar"></span> 
          </button>
          <a class="navbar-brand" href="#"><img alt="" src="image/logo1.png" align="top"></a>
        </div>
        <div class="collapse navbar-collapse" id="myNavbar">
          <ul class="nav navbar-nav">
            <li><a href="#">Home</a></li>
            <li><a href="#">Video</a></li>
            <li><a href="#">Codes</a></li> 
            <li><a href="#">Test</a></li>
            <li class="active"><a href="#">Feedback</a></li>
            <li><a href="#">About us</a></li> 
          </ul>
          <ul class="nav navbar-nav navbar-right">
            <li><a href="#"><span class="glyphicon glyphicon-user"></span> Sign Up</a></li>
            <li><a href="#"><span class="glyphicon glyphicon-log-in"></span> Login</a></li>
          </ul>
        </div>
      </div>
    </div>
    <div class="ctrlqFormContentWrapper">
      <div class="ctrlqHeaderMast"></div>
      <div class="ctrlqCenteredContent">
        <div class="ctrlqFormCard">
          <div class="ctrlqAccent"></div>
          <div class="ctrlqFormContent">

            <form action="savefeedback" method="post">  

              <div class="row header">
                <div class="input-field col s12 navbar-collapse" align="center">
                  <h4 style="font-weight: bolder;">Feedback Us</h4>
                  <p><center>Your Feedback Matters</center> </p>
                </div>
              </div>

              <div class="row">
                <div class="input-field col s12">
                  <input id="name" name="name" pattern="[A-Za-z]{2,}" title="Two or more characters" type="text" class="validate" data-error="#e1" required>
                  <label for="name">Your Name</label>
                  <div id="e1"></div>
                </div>
              </div>

              <div class="row">
                <div class="input-field col s12">
                  <input id="email" name="email" pattern="[A-Za-z0-9._%+-]+@[A-Za-z0-9.-]+\.[A-Za-z]{2,3}$" title="Invalid Email Address" type="text" class="validate" data-error="#e2" required>
                  <label for="email">Your Email</label>
                  <div id="e2"></div>
                </div>
              </div>

              <div class="row">
                <div class="input-field col s12">
                  <select id="reg" name="websidemode" class="validate" data-error="#e3" required>    
                      <option value="Website">Website</option> 
                      <option value="MrNavinReddy">Mr. Navin Reddy</option>
                      <option value="OnlineCourse">Online Course</option>
                  </select>
                  <div id="e3"></div>
                </div>
              </div>

               <div class="row">
                <div class="input-field col s12">
                  <input id="code" name="code" type="text" class="validate" data-error="#e5">
                  <label for="code">Code(If any)</label>
                  <div id="e5"></div>
                </div>
              </div>

              <div class="row">
                <div class="input-field col s12">
                  <textarea pattern=".{1,}" title="One or more characters" id="msg" name="msg" class="materialize-textarea" data-error="#e4" required></textarea>
                  <label for="msg">Feedback Message</label>
                  <div id="e4"></div>
                </div>
              </div>

              <div class="row">
                <p>Overall Rating</p>
                <span class="overallRatings">
                  <input type="radio" name="rating" style="display:none" required/>
                  <div style="clear:both;"></div>
                  <input type="radio" id="rating-5" name="rating" value="5"/><label for="rating-5"></label>
                  <input type="radio" id="rating-4" name="rating" value="4" /><label for="rating-4"></label>
                  <input type="radio" id="rating-3" name="rating" value="3" /><label for="rating-3"></label>
                  <input type="radio" id="rating-2" name="rating" value="2" /><label for="rating-2"></label>
                  <input type="radio" id="rating-1" name="rating" value="1"/><label for="rating-1"></label>
                </span>
              </div>
              
              <div class="row">
                <div class="input-field col m6 s12">
                  <button type="reset" value="reset" class="waves-effect waves-light btn-large navbar-right">Reset</button>
                </div>
                <div class="input-field col m6 s12">
                  <button type="submit" class="waves-effect waves-light btn-large">Submit</button>
                </div>
              </div>

            </form>
          </div>
        </div>
      </div>
    </div>


    <script src="https://cdnjs.cloudflare.com/ajax/libs/jquery/2.2.4/jquery.min.js"></script>
    <script src="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/js/bootstrap.min.js"></script>
    <script src="https://cdnjs.cloudflare.com/ajax/libs/materialize/0.97.7/js/materialize.min.js"></script>
    <script src="https://cdnjs.cloudflare.com/ajax/libs/jquery-validate/1.15.0/jquery.validate.min.js"></script>
    <script src="https://cdnjs.cloudflare.com/ajax/libs/jquery-validate/1.15.0/additional-methods.min.js"></script>
    <script type="text/javascript">
      $(document).ready(function() {
        $('[type*="radio"]').change(function () {
          var me = $(this);
        });
        $('select').material_select();
        $.validator.setDefaults({
          ignore: []
        });
        $("form").validate({
          submitHandler: function(form) {
            alert("Thank you for Feedback");
            return true;
            
          },
          errorElement: 'div',
          errorPlacement: function(error, element) {
            var placement = $(element).data('error');
            if (placement) {
              $(placement).append(error)
            } else {
              error.insertAfter(element);
            }
          }

        });
      });

    </script>
  </body>

  </html>