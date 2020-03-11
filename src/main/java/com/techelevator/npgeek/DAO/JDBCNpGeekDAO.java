package com.techelevator.npgeek.DAO;

import javax.activation.DataSource;

import org.apache.commons.dbcp2.BasicDataSource;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.jdbc.core.JdbcTemplate;
import org.springframework.stereotype.Component;

@Component
public class JdbcNpGeekDao implements NpgeekDAO {
	private JdbcTemplate jdbcTemplate;
	private NpgeekDAO npGeekDao;

		
	@Autowired
	public JdbcNpGeekDao(DataSource datasource) {
		this.jdbcTemplate = new JdbcTemplate();
	}
	
	
}
