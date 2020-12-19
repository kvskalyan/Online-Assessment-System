package com.OnlineAssessmentSystem.controller;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.data.domain.*;
import org.springframework.data.domain.Sort.*;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RestController;
import org.springframework.web.servlet.ModelAndView;

import com.OnlineAssessmentSystem.model.Test;
import com.OnlineAssessmentSystem.model.User;
import com.OnlineAssessmentSystem.repository.TestRepository;
import com.OnlineAssessmentSystem.repository.UserRepository;

@RestController
public class OnlineAssessmentSystemAdminController {
	
	@Autowired
	UserRepository urepo;
	@Autowired
	TestRepository trepo;
	@Autowired
	OnlineAssessmentSystemLogInController loginUser;
	
	
	@RequestMapping("/users/all")
	public ModelAndView showAllUsers() {
		List<User> x = urepo.findAll(Sort.by(Direction.ASC, "firstName"));
		ModelAndView mvc = new ModelAndView();
		mvc.setViewName("allUsers");
		mvc.addObject("x",x);
		return mvc;
	}
	
	@RequestMapping("/tests/all")
	public ModelAndView showAllTests() {
		List<Test> x = trepo.findAllByOrderByDateAsc();
		ModelAndView mvc = new ModelAndView();
		mvc.setViewName("allTests");
		mvc.addObject("x",x);
		return mvc;
	}
}
