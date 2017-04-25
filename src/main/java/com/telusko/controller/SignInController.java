package com.telusko.controller;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.servlet.ModelAndView;

import com.telusko.dao.SignInDaoImpl;
import com.telusko.model.SignIn;


@Controller
public class SignInController {
	
	
	@Autowired
	SignInDaoImpl sig;
	
	@RequestMapping(value="/signinpage")
	public ModelAndView show(){
		
		ModelAndView model=new ModelAndView();
		model.addObject("signin", new SignIn());
		return new ModelAndView("signin");
	} 
	
	
	@RequestMapping(value="/save" ,method=RequestMethod.POST)
	public ModelAndView save(@ModelAttribute("signin") SignIn signin){
		sig.Save(signin);
		return new ModelAndView("index");
	}


}
