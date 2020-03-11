package com.techelevator.npgeek.DAO;

import java.math.BigDecimal;
import java.math.RoundingMode;
import java.util.ArrayList;
import java.util.List;

import javax.activation.DataSource;

import org.apache.commons.dbcp2.BasicDataSource;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.jdbc.core.JdbcTemplate;
import org.springframework.jdbc.support.rowset.SqlRowSet;
import org.springframework.stereotype.Component;

import com.techeevator.model.Weather;


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
		
		SqlRowSet results = jdbcTemplate.queryForRowSet(sqlGetWeatherByParkCode);
		while (results.next()) {
			Weather allWeather = mapRowToWeather(results);
			weatherList.add(allWeather);
		}
		
		return weatherList;
	}
	private Weather mapRowToWeather(SqlRowSet results) {
		Weather allWeather = new Weather();
		allWeather.setParkCode(results.getString("parkcode"));
		allWeather.setFiveDayForecastValue(results.getInt("fivedayforecastvalue"));
		allWeather.setLow(results.getInt("low"));
		allWeather.setHigh(results.getInt("high"));
		allWeather.setForecast(results.getString("forecast"));
		
		return allWeather;
	}
		
		
}

