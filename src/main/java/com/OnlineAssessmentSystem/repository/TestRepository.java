package com.OnlineAssessmentSystem.repository;

import java.util.List;

import org.springframework.data.jpa.repository.JpaRepository;
import org.springframework.stereotype.Repository;

import com.OnlineAssessmentSystem.model.Test;

@Repository
public interface TestRepository extends JpaRepository<Test, Integer> {
	
	// Sorting in Ascending order of Date attribute
	List<Test> findAllByOrderByDateAsc();

}
