package com.techelevator.npgeek.DAO;
import  com.techeevator.model.Park;

import java.util.ArrayList;
import java.util.List;

import org.apache.commons.dbcp2.BasicDataSource;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.jdbc.core.JdbcTemplate;
import org.springframework.jdbc.support.rowset.SqlRowSet;
import org.springframework.stereotype.Component;

@Component
public class JdbcParkDao implements ParkDao  {

	private JdbcTemplate jdbcTemplate;
	
	@Autowired
	public JdbcParkDao(BasicDataSource datasource) {
		this.jdbcTemplate = new JdbcTemplate(datasource);
	}
	
	@Override
	public List<Park> getParkByParkCode() {
		List<Park> parkList = new ArrayList<>();
		
		String sqlGetAllParks = "SELECT * FROM park";
		SqlRowSet results = jdbcTemplate.queryForRowSet(sqlGetAllParks);
		while(results.next()) {
			Park getParkList = mapRowToPark(results);
			parkList.add(getParkList);
		}
		return parkList;
	}

	public Park mapRowToPark(SqlRowSet results) {
		Park getParks = new Park();
		getParks.setParkCode(results.getString("parkcode"));
		getParks.setParkname(results.getString("parkname"));
		getParks.setState(results.getString("state"));
		getParks.setAcreage(results.getInt("acreage"));
		getParks.setElevationInFeet(results.getInt("elevationinfeet"));
		getParks.setMilesOfTrail(results.getFloat("milesoftrail"));
		getParks.setNumberOfCampsites(results.getInt("numberofcampsites"));
		getParks.setClimate(results.getString("climate"));
		getParks.setYearFounded(results.getInt("yearfounded"));
		getParks.setAnnualVisitorCount(results.getInt("annualvisitors"));
		getParks.setInspirationalQuote(results.getString("inspirationalquote"));
		getParks.setInspirationalQuoteSource(results.getString("inspirationalquotessource"));
		getParks.setParkDescription(results.getString("parkdescription"));
		getParks.setEntryFee(results.getInt("entryfee"));
		getParks.setNumberOfAnimalSpecies(results.getInt("numberofanimalsspecies"));
		
		return getParks;
	}



	
}