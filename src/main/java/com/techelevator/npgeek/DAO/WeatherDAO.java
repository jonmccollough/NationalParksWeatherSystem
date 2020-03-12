package com.techelevator.npgeek.DAO;

import java.util.List;

import com.techeevator.model.Weather;

public interface WeatherDAO {
	
	public List<Weather> getWeatherByParkCode(String parkCode);

}
