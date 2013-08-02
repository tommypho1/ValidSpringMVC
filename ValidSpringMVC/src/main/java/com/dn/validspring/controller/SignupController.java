package com.dn.validspring.controller;


import javax.validation.Valid;

import org.springframework.stereotype.Controller;
import org.springframework.validation.BindingResult;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.servlet.ModelAndView;

import com.dn.validspring.domain.User;
import com.dn.validspring.domain.User1;
import com.dn.validspring.domain.User2;



@Controller
public class SignupController {

	@RequestMapping(value = "/signupPage", method = RequestMethod.GET)
	public ModelAndView signupPage() {
		ModelAndView modelView = new ModelAndView("signup", "user", new User());
		return modelView;
	}
	
	@RequestMapping(value = "/signupPage1", method = RequestMethod.GET)
	public ModelAndView signupPage1() {
		ModelAndView modelView = new ModelAndView("signup1", "user1", new User1());
		return modelView;
	}
	
	@RequestMapping(value = "/signupPage2", method = RequestMethod.GET)
	public ModelAndView signupPage2() {
		ModelAndView modelView = new ModelAndView("signup2", "user2", new User2());
		return modelView;
	}
	
	
	
	@RequestMapping(value = "/processSignup", method = RequestMethod.POST)
	public ModelAndView processSignup(@Valid User user, BindingResult result) {
		
		ModelAndView modelView;
		if (result.hasErrors()){
			modelView = new ModelAndView("signup", "user", user);
			return modelView;
		}
		
		modelView = new ModelAndView("signupDone", "user", user);
		return modelView;
	}

	@RequestMapping(value = "/processSignup1", method = RequestMethod.POST)
	public ModelAndView processSignup(@Valid User1 user1, BindingResult result) {
		
		ModelAndView modelView;
		if (result.hasErrors()){
			modelView = new ModelAndView("signup1", "user1", user1);
			return modelView;
		}
		
		modelView = new ModelAndView("signupDone", "user1", user1);
		return modelView;
	}
	
	@RequestMapping(value = "/processSignup2", method = RequestMethod.POST)
	public ModelAndView processSignup(@Valid User2 user2, BindingResult result) {
		
		ModelAndView modelView;
		if (result.hasErrors()){
			modelView = new ModelAndView("signup2", "user2", user2);
			return modelView;
		}
		
		modelView = new ModelAndView("signupDone", "user2", user2);
		return modelView;
	}
}
