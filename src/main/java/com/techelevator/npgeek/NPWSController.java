package com.techelevator.npgeek;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;

@Controller
public class NPWSController {

	
	@RequestMapping("/")
	public String displayHomePage() {
		return "homePage";
	}
	
	@RequestMapping("/parkDetails")
	public String showDetailPage() {
		return "parkDetails";
	}
	
	@RequestMapping("/survey")
	public String showSurveryPage() {
		return "survey";
	}
	
	@RequestMapping("/surveyResults")
	public String showSurveryResultsPage() {
		return "surveyResults";
	}
}
