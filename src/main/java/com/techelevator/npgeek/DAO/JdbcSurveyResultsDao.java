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
			SurveyResults survey = new SurveyResults();
			survey.setParkCode(results.getString("parkcode"));
			survey.setEmailAddress(results.getString("emailaddress"));
			survey.setState(results.getString("state"));
			survey.setActivityLevel(results.getString("activitylevel"));
			surveyResults.add(survey);
		}
		return surveyResults;
	}

	@Override
	public void addSurvey(SurveyResults thisSurvey) {
		String sqlSurvey = "INSERT INTO survey_result (parkcode, emailaddress, state, activitylevel) " +
							"VALUES (?, ?, ?, ?)";
		jdbcTemplate.update(sqlSurvey, thisSurvey.getParkCode(), thisSurvey.getEmailAddress(), thisSurvey.getState(), thisSurvey.getActivityLevel());
	}
	
//	public SurveyResults mapRowToSurvey(SqlRowSet results) {
//		SurveyResults survey = new SurveyResults();
//		survey.setParkCode(results.getString("parkcode"));
//		survey.setEmailAddress(results.getString("emailaddress"));
//		survey.setState(results.getString("state"));
//		survey.setActivityLevel(results.getString("activitylevel"));
//		
//		return survey;
//	}
	
}
