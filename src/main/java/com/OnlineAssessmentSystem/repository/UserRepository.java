package com.OnlineAssessmentSystem.repository;

import java.util.Optional;

import org.springframework.data.jpa.repository.JpaRepository;
import org.springframework.stereotype.Repository;

import com.OnlineAssessmentSystem.model.User;

@Repository
public interface UserRepository extends JpaRepository<User, Integer>{
	
	Optional<User> findByEmail(String email);
	
	boolean existsUserByEmail(String email);
	
	static boolean isAuthorised(User u,String password) {
		if(u.getPassword().equals(password))
			return true;
		else
			return false;
	}
	
	static boolean isAdmin(User u) {
		if(u.getUserType().equals("admin"))
			return true;
		else
			return false;
	}
}
