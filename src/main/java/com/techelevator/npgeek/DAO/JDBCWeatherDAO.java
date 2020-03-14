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
	
	@Autowired
	private WeatherDAO weatherDao;
	
	@Autowired
	public JDBCWeatherDAO(BasicDataSource datasource) {
		this.jdbcTemplate = new JdbcTemplate(datasource);
	}

	@Override
	public ArrayList<Weather> getWeatherByParkCode(String parkCode) {
		ArrayList<Weather>weatherList = new ArrayList<Weather>();
		String sqlGetWeatherByParkCode = "SELECT * FROM weather WHERE parkcode = ? ORDER BY parkcode, fivedayforecastvalue;";
		
		SqlRowSet results = jdbcTemplate.queryForRowSet(sqlGetWeatherByParkCode, parkCode);
		while (results.next()) {
			Weather allWeather = mapRowToWeather(results);
			weatherList.add(allWeather);
		}
		return weatherList;
	}
	
	public Weather mapRowToWeather(SqlRowSet results) {
		Weather allWeather = new Weather();
		allWeather.setParkCode(results.getString("parkcode"));
		allWeather.setFiveDayForecastValue(results.getInt("fivedayforecastvalue"));
		allWeather.setLow(results.getInt("low"));
		allWeather.setHigh(results.getInt("high"));
		allWeather.setForecast(results.getString("forecast"));
		allWeather.setLowC((results.getInt("low")-32)*5/9);
		allWeather.setHighC((results.getInt("high")-32)*5/9);
		return allWeather;
	}
}

