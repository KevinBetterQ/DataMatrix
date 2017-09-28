package com.park.test;

import java.sql.Date;
import java.util.List;

import com.park.dao.ParksDao;

import com.park.dao.domain.Parks;

import com.park.dao.impl.ParksDaoImpl;



public class ParksTest {

	public static void main(String[] args) {
		//insert();
		//update();
		//delete();
		//getall();
		getbyId();
		//parks测试全部通过

	}

	
	private static void getbyId() {
		ParksDao parksDao = new ParksDaoImpl();
		Parks parks = parksDao.getParkById("2017-07-03");
		System.out.println("ok3");
		System.out.println(parks.getKeliu());
		
	}


	

}
