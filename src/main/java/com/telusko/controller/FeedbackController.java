package com.telusko.controller;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.servlet.ModelAndView;

import com.telusko.dao.FeedbackDao;
import com.telusko.dao.SignInDaoImpl;
import com.telusko.model.Feedback;
import com.telusko.model.SignIn;


@Controller
public class FeedbackController {
	
	@Autowired
    FeedbackDao dao;
	
	
	@RequestMapping(value="/getfeedback")
	public ModelAndView show(){
		
		/*ModelAndView model=new ModelAndView();
		model.addObject("feedback",new Feedback());*/
		return new ModelAndView("feedback");
	}
	
	@RequestMapping(value="/savefeedback" ,method=RequestMethod.POST)
	public ModelAndView save(@ModelAttribute("feedback") Feedback feedback)
	{
		
		dao.save(feedback);
		return new ModelAndView("index");
		
	}
	
}
