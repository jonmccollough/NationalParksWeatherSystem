package com.techelevator.npgeek.DAO;

import java.util.List;


import com.techeevator.model.Park;

public interface ParkDao {
	
	public Park getParkByParkCode(String parkCode);
	
	public List<Park> getAllParks();
}
