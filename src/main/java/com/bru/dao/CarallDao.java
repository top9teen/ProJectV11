package com.bru.dao;

import java.sql.PreparedStatement;
import java.sql.ResultSet;


import org.springframework.stereotype.Repository;

import com.bru.model.BrandBean;
import com.bru.model.CarBean;
import com.bru.model.SimBean;
import com.bru.model.TestBean;
import com.bru.model.YearBean;
import com.bru.util.ConnectDB;

@Repository
public class CarallDao {
	

	public CarBean brand(SimBean si) {
		CarBean bean = new CarBean();
		ConnectDB con = new ConnectDB();
		PreparedStatement prepared = null;
		StringBuilder sql = new StringBuilder();
		
		try {
			sql.append(" SELECT * FROM car WHERE  ye_year = ? and car_name = ? ");
			prepared = con.openConnect().prepareStatement(sql.toString());
			prepared.setString(1, si.getMyYear());
			prepared.setString(2, si.getMycar());
			ResultSet rs = prepared.executeQuery();

			while (rs.next()) {
				bean.setCarName(rs.getString("car_name"));
			}
		} catch (Exception e) {
			// TODO: handle exception
		}

		return bean;
	}

	public BrandBean model1(SimBean si) {
		BrandBean bean = new BrandBean();
		ConnectDB con = new ConnectDB();
		PreparedStatement prepared = null;
		StringBuilder sql = new StringBuilder();
		
		try {
			sql.append(" SELECT * FROM brand WHERE  ye_year = ?  and br_name = ?  ");
			prepared = con.openConnect().prepareStatement(sql.toString());
			prepared.setString(1, si.getMyYear());
			prepared.setString(2, si.getName());
			ResultSet rs = prepared.executeQuery();
			

			while (rs.next()) {
			
				bean.setBrName(rs.getString("br_name"));
			}
		} catch (Exception e) {
			// TODO: handle exception
		}

		return bean;
	}
	public YearBean year1(SimBean si) {
		YearBean bean = new YearBean();
		ConnectDB con = new ConnectDB();
		PreparedStatement prepared = null;
		StringBuilder sql = new StringBuilder();
		try {
			sql.append(" SELECT * FROM year WHERE  ye_year = ? ");
			prepared = con.openConnect().prepareStatement(sql.toString());
			prepared.setString(1, si.getMyYear());
			ResultSet rs = prepared.executeQuery();
			while (rs.next()) {
				bean.setYeYear(rs.getString("ye_year"));
			}
		} catch (Exception e) {
			// TODO: handle exception
		}

		return bean;
	}

	
	
//end class
}
