package com.OnlineAssessmentSystem.controller;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.annotation.RestController;
import org.springframework.web.servlet.ModelAndView;

import com.OnlineAssessmentSystem.model.User;
import com.OnlineAssessmentSystem.repository.UserRepository;

@RestController
public class OnlineAssessmentSystemLogInController {
	
	@Autowired
	UserRepository urepo;
	
	private boolean userExists;
	private boolean isAuthorised;
	private boolean isAdmin;
	
	private User user;
	
	public User getUser() {
		return user;
	}

	public void setUser() {
		this.user = null;
	}

	@RequestMapping("/login")
	public ModelAndView login(@RequestParam("email") String email,
							 @RequestParam("password") String password) {
		userExists= urepo.existsUserByEmail(email);
		if(userExists) {
			user= urepo.findByEmail(email).get();
			isAuthorised= UserRepository.isAuthorised(user, password);
			isAdmin=UserRepository.isAdmin(user);
		}
		ModelAndView mvc= new ModelAndView("redirect:/login/do");
		return mvc;
	}
	
	@RequestMapping("/login/do")
	public ModelAndView loginresult() {
		ModelAndView mvc= new ModelAndView();
		if(userExists && isAuthorised) {
			if(isAdmin)
				mvc.setViewName("adminHomePage");
			else
				mvc.setViewName("candidateHomePage");
		}
		else if(userExists && !isAuthorised)
			mvc.setViewName("passwordError");
		else
			mvc.setViewName("invalidUser");
		return mvc;
	}
}
