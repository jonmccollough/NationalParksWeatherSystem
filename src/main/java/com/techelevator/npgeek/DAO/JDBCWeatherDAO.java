package com.techelevator.npgeek.DAO;

import java.util.ArrayList;
import java.util.List;

import javax.activation.DataSource;

import org.apache.commons.dbcp2.BasicDataSource;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.jdbc.core.JdbcTemplate;
import org.springframework.jdbc.support.rowset.SqlRowSet;
import org.springframework.stereotype.Component;

import com.techeevator.model.Weather;
import com.techelevator.Campground;

@Component
public class JDBCWeatherDAO implements WeatherDAO{
	private JdbcTemplate jdbcTemplate;
	private WeatherDAO weatherDao;
	
	@Autowired
	public JDBCWeatherDAO(BasicDataSource datasource) {
		this.jdbcTemplate = new JdbcTemplate(datasource);
	}

	@Override
	public List<Weather> getWeatherByParkCode() {
		ArrayList<Weather>weatherList = new ArrayList<>();
		String sqlGetWeatherByParkCode = "SELECT * FROM weather";
		
		SqlRowSet resuslts = jdbcTemplate.queryForRowSet(sqlGetWeatherByParkCode);
		while (results.next()) {
			Weather allWeather = mapRowToWeather()
		
		return null;
	}
	
	ArrayList<Campground> campgroundList = new ArrayList<>();
	String sqlGetAllCampgrounds = "SELECT campground_id, park_id, name, open_from_mm, open_to_mm, daily_fee " + "FROM campground";

	SqlRowSet results = jdbcTemplate.queryForRowSet(sqlGetAllCampgrounds);
	while (results.next()) {
		Campground allCampgrounds = mapRowToCampground(results);
		campgroundList.add(allCampgrounds);

	}

	return campgroundList;
}
}

