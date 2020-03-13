package com.techelevator.npgeek;

import java.util.ArrayList;
import java.util.List;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpSession;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.ModelMap;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;

import com.techeevator.model.Park;
import com.techeevator.model.SurveyResults;
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
	
	
	
	
	@RequestMapping(path = "/parkDetails", method=RequestMethod.GET)
	public String showDetailPage(HttpServletRequest request, ModelMap weatherHolder ) {
		String parkCodeId = request.getParameter("id");
		
		Park detailPark = parkDAO.getParkByParkCode(parkCodeId);
		request.setAttribute("codeId", detailPark );
		
		
		List<Weather> weatherList = weatherDAO.getWeatherByParkCode(parkCodeId);
		weatherHolder.put("weatherList", weatherList);
		
		
		return "parkDetails";
	}
		
	
	
//	private List<Park> detailParks = parkDAO.getParkByParkCode(parkcode.getParameter("id"));
//	parkHolder.put("park", detailParks);
//		
//	public List<Weather> getWeather(HttpServletRequest request, ModelMap weatherHolder){
//	List<Weather>allWeather = weatherDAO.getWeatherByParkCode(request.getParameter("id")); 
//	weatherHolder.put("weather", allWeather);
//	
//		return allWeather;
//	}
		
	
	
	@RequestMapping("/survey")
	public String showSurveryPage() {
		return "survey";
	}
	
	@RequestMapping("/surveyResults")
	public String showSurveryResultsPage() {
		return "surveyResults";
	}
}
