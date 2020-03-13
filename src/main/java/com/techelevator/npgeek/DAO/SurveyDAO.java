package com.techelevator.npgeek.DAO;

import java.util.List;
import com.techeevator.model.SurveyResults;

public interface SurveyDAO {
	
	public List <SurveyResults> getSurveyResults ();

	public void addSurvey(SurveyResults thisSurvey);
	
}
