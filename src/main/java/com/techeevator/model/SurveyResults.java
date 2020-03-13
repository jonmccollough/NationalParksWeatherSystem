package com.techeevator.model;

import org.hibernate.validator.constraints.Email;
import org.hibernate.validator.constraints.NotBlank;

public class SurveyResults {
	
	private int surveyId;
	private String parkCode;
	private String state;
	private String activityLevel;
	private int count;
	
	@NotBlank(message="Email is required")
	@Email(message= "Email must be a valid email address")
	private String emailAddress;
	private String parkName;
	
	
	public int getSurveyId() {
		return surveyId;
	}
	public void setSurveyId(int surveyId) {
		this.surveyId = surveyId;
	}
	public String getParkCode() {
		return parkCode;
	}
	public void setParkCode(String parkCode) {
		this.parkCode = parkCode;
	}
	public String getEmailAddress() {
		return emailAddress;
	}
	public void setEmailAddress(String emailAddress) {
		this.emailAddress = emailAddress;
	}
	public String getState() {
		return state;
	}
	public void setState(String state) {
		this.state = state;
	}
	public String getActivityLevel() {
		return activityLevel;
	}
	public void setActivityLevel(String activityLevel) {
		this.activityLevel = activityLevel;
	}
	public void setCount(int count) {
		this.count	= count;
	}
	
	public int getCount() {
		return count;
	}
	
	public void setParkName(String parkName) {
		this.parkName = parkName;
	}
	public String getParkName() {
		return parkName;
	}
	

}
