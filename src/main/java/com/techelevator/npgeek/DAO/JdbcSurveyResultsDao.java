package com.techelevator.npgeek.DAO;

import java.util.ArrayList;
import java.util.List;

import javax.activation.DataSource;

import org.apache.commons.dbcp2.BasicDataSource;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.jdbc.core.JdbcTemplate;
import org.springframework.jdbc.support.rowset.SqlRowSet;
import org.springframework.stereotype.Component;


import com.techeevator.model.SurveyResults;
@Component
public class JdbcSurveyResultsDao implements SurveyDAO {
	private JdbcTemplate jdbcTemplate;
	private SurveyDAO surveryDao;

	@Autowired
	public JdbcSurveyResultsDao(BasicDataSource datasource) {
		this.jdbcTemplate = new JdbcTemplate(datasource); 
	}
	
	@Override
	public List<SurveyResults> getAllSurvey() {
		List<SurveyResults> surveyResults = new ArrayList<>();
		
		String sqlGetAllSurvey = "SELECT * FROM survey_result";
		SqlRowSet results = jdbcTemplate.queryForRowSet(sqlGetAllSurvey);
		while(results.next()) {
			SurveyResults survey = mapRowToSurvey(results);
			
			surveyResults.add(survey);
		}
		return surveyResults;
	}

	public SurveyResults mapRowToSurvey(SqlRowSet results) {
		SurveyResults survey = new SurveyResults();
		survey.setSurveyId(results.getInt("surveyId"));
		survey.setParkCode(results.getString("parkcode"));
		survey.setEmailAddress(results.getString("emailaddress"));
		survey.setState(results.getString("state"));
		survey.setActivityLevel(results.getString("activitylevel"));
		
		return survey;
	}
}
