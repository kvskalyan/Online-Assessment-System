package com.OnlineAssessmentSystem.controller;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.annotation.RestController;
import org.springframework.web.servlet.ModelAndView;

import com.OnlineAssessmentSystem.model.User;
import com.OnlineAssessmentSystem.repository.UserRepository;

@RestController
public class OnlineAssessmentSystemController {
	
	@Autowired
	UserRepository urepo;
	
	@Autowired
	OnlineAssessmentSystemLogInController loginUser;
	
	String thisEmail;
	
	@RequestMapping("/")
	public ModelAndView welcome() {
		loginUser.setUser();
		ModelAndView mvc= new ModelAndView("index");
		return mvc;
	}
	
	@GetMapping("/register")
	public ModelAndView register() {
		ModelAndView mvc= new ModelAndView("register");
		return mvc;
	}
	
	@PostMapping("/register")
	public ModelAndView addUser(@RequestParam("email") String email,
								@RequestParam("firstname") String firstname,
								@RequestParam("lastname") String lastname,
								@RequestParam("password") String password) {
		thisEmail=email;
		User user=new User(email, password,firstname,lastname,"candidate");
		if(!urepo.existsUserByEmail(email))
			urepo.save(user);
		else {
			urepo.deleteById(urepo.findByEmail(thisEmail).get().getId());
			urepo.save(user);
		}
		ModelAndView mvc= new ModelAndView("redirect:registration/do");
		return mvc;
	}
	@RequestMapping("/registration/do")
	public ModelAndView registrationSuccessful() {
		ModelAndView mvc = new ModelAndView();
		User u=urepo.findByEmail(thisEmail).get();
		mvc.addObject(u);
		mvc.setViewName("registrationSuccessful");
		return mvc;
	}
}
