package com.techelevator.npgeek.DAO;

import java.util.ArrayList;
import java.util.List;

import javax.activation.DataSource;

import org.apache.commons.dbcp2.BasicDataSource;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.jdbc.core.JdbcTemplate;
import org.springframework.jdbc.support.rowset.SqlRowSet;
import org.springframework.stereotype.Component;

import com.techelevator.classes.CampGround;
import com.techelevator.npgeek.SurveyResults;

public class JdbcNpGeekDao implements SurveyDAO {
	private JdbcTemplate jdbcTemplate;
	private SurveyDAO surveryDao;

	@Autowired
	public JdbcNpGeekDao(DataSource datasource) {
		this.jdbcTemplate = new JdbcTemplate();
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
		return null;
	}

	public SurveyResults mapRowToSurvey(SqlRowSet results) {
		SurveyResults survey = new SurveyResults();
		survey.setP
		survey.setParkCode(results.getString("parkcode"));
		survey.setParkName(results.getString("parkname"));
		
		return survey;
	}
}
