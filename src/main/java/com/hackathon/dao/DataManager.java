package com.hackathon.dao;

import org.springframework.stereotype.Component;

@Component
public class DataManager {
	
	BaseDAO baseDAO;
	
	
	public void DataManagerTest() {
		baseDAO = new BaseDAO();
		System.out.println(baseDAO.BaseDAOTest());
	}
	
}
