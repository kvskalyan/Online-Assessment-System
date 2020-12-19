package com.OnlineAssessmentSystem.controller;

import java.text.DateFormat;
import java.text.SimpleDateFormat;
import java.util.Date;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.annotation.RestController;
import org.springframework.web.servlet.ModelAndView;

import com.OnlineAssessmentSystem.model.Test;
import com.OnlineAssessmentSystem.model.User;
import com.OnlineAssessmentSystem.repository.TestRepository;
import com.OnlineAssessmentSystem.repository.UserRepository;

@RestController
public class OnlineAssessmentSystemCandidateLoginHibernateAssessmentController {

	@Autowired
	UserRepository urepo;
	@Autowired
	TestRepository trepo;
	@Autowired
	OnlineAssessmentSystemLogInController loginUser;
	
	
	@GetMapping("/hibernateAssessment")
	public ModelAndView getSpringAssesment() {
		ModelAndView mvc =new ModelAndView("hibernateAssessment");
		return mvc;
	}
	
	@PostMapping("/hibernateAssessment")
	public ModelAndView postSpringAssesment(@RequestParam("Question1")String a1,
											@RequestParam("Question2")String a2,
											@RequestParam("Question3")String a3,
											@RequestParam("Question4")String a4,
											@RequestParam("Question5")String a5) {
		int pscore=0;
		String presult="Failed",pdate;
		
		DateFormat df = new SimpleDateFormat("dd/MM/yy HH:mm:ss");
		Date dateobj = new Date();
		pdate=df.format(dateobj);
		
		String ans[]= new String[] {a1,a2,a3,a4,a5};
		String cans[]=new String[] {"Object Relational Mapping","uni-directional & bi-directional",
									"configuration file","Hibernate Query Language",
									"isolation levels"};
		for(int i=0;i<5;i++) {
			if(ans[i].equals(cans[i]))
				pscore+=10;
		}
		if(pscore>=30) {presult="Passed";}
		
		User puser=loginUser.getUser();
		
		Test pTest=new Test(puser.getEmail(),"Hibernate-L1",pdate,pscore,50,presult);
		trepo.save(pTest);
		
		ModelAndView mvc = new ModelAndView("redirect:/evaluate/hibernate/test");
		return mvc;
	}
	
	@RequestMapping("/evaluate/hibernate/test")
	public ModelAndView springEvaluation() {
		Test ptest=trepo.findById((int) trepo.count()).get();
		ModelAndView mvc = new ModelAndView();
		if(ptest.getResult().equalsIgnoreCase("Passed")) {
			mvc.setViewName("passedAssessment");
		}
		else mvc.setViewName("failedAssessment");
		return mvc;
	}
}
