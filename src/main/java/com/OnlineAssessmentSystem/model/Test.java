package com.OnlineAssessmentSystem.model;

import javax.persistence.Column;
import javax.persistence.Entity;
import javax.persistence.GeneratedValue;
import javax.persistence.GenerationType;
import javax.persistence.Id;
import javax.persistence.Table;

@Entity
@Table(name="tests")
public class Test {
	@Id
	@GeneratedValue(strategy = GenerationType.IDENTITY)
	@Column(name="User_Id")
	int id;
	@Column(name="Email_Id")
	String email;
	@Column(name="Assessment_Name")
	String assessment;
	@Column(name="Date_of_Assessment")
	String date;
	@Column(name="Marks_Scored")
	int tmarks;
	@Column(name="Total_Marks")
	int maxmarks;
	@Column(name="Result")
	String result;
		
	public Test() {
		super();
	}
	
	public Test(String email, String assessment, String date, int tmarks, int maxmarks , String result) {
		super();
		this.email = email;
		this.assessment = assessment;
		this.date = date;
		this.tmarks = tmarks;
		this.maxmarks= maxmarks;
		this.result = result;
	}

	public int getId() {
		return id;
	}

	public void setId(int id) {
		this.id = id;
	}

	public String getEmail() {
		return email;
	}

	public void setEmail(String email) {
		this.email = email;
	}

	public String getAssessment() {
		return assessment;
	}

	public void setAssessment(String assessmentName) {
		this.assessment = assessmentName;
	}

	public String getDate() {
		return date;
	}

	public void setDate(String date) {
		this.date = date;
	}

	public int getTmarks() {
		return tmarks;
	}

	public void setTmarks(int tmarks) {
		this.tmarks = tmarks;
	}
	
	public int getMaxmarks() {
		return maxmarks;
	}

	public void setMaxmarks(int maxmarks) {
		this.maxmarks = maxmarks;
	}

	public String getResult() {
		return result;
	}

	public void setResult(String result) {
		this.result = result;
	}

	@Override
	public String toString() {
		return "Test [id=" + id + ", email=" + email + ", Assessment=" + assessment + ", date=" + date + ", tmarks="
				+ tmarks + ", result=" + result + "]";
	}
}
