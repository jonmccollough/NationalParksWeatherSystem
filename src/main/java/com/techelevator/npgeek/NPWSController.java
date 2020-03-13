package com.techelevator.npgeek;

import java.util.ArrayList;
import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.ModelMap;
import org.springframework.web.bind.annotation.RequestMapping;

import com.techeevator.model.Park;
import com.techeevator.model.Weather;
import com.techelevator.npgeek.DAO.ParkDao;
import com.techelevator.npgeek.DAO.WeatherDAO;

@Controller
public class NPWSController {

	@Autowired
	private WeatherDAO weatherDAO;
	
	@Autowired ParkDao parkDAO;
	
	@RequestMapping("/")
	public String displayHomePage(ModelMap modelHolder) {
		List<Park> allParks = parkDAO.getAllParks(); 
		modelHolder.put("park", allParks);
		return "homePage";
	}
	
	
	@RequestMapping("/parkDetails")
	public String showDetailPage(ModelMap modelHolder) {
		
//		List<Weather> allWeather = weatherDAO.getWeatherByParkCode(); 
//		modelHolder.put("weather", allWeather);
//		
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
