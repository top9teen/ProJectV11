package com.bru.dao;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.ArrayList;
import java.util.List;

import org.springframework.stereotype.Repository;

import com.bru.model.BrandBean;
import com.bru.model.CarBean;
import com.bru.model.ColeridcardBean;
import com.bru.model.YearBean;
import com.bru.util.ConnectDB;

@Repository
public class CarDao {

	// Year
	public List<YearBean> findAll() throws SQLException{
	
		YearBean bean = new YearBean();
		List<YearBean> list = new ArrayList<YearBean>();
//		query master data
		
		ConnectDB con = new ConnectDB();
		PreparedStatement prepared = null;
		StringBuilder sql = new StringBuilder();
		Connection conn = con.openConnect();

		try {
			sql.append(" SELECT * FROM year ");
			prepared = conn.prepareStatement(sql.toString());
			ResultSet rs = prepared.executeQuery();

			while (rs.next()) {
				bean = new YearBean();
				bean.setYeYear(rs.getString("ye_year"));
				list.add(bean);
		
			}
		} catch (Exception e) {
			// TODO: handle exception
		}
		finally {
			conn.close();
		}
		return list;
	}
	public List<CarBean> findAll(String year) throws SQLException {
		
		CarBean bean = new CarBean();
		List<CarBean> list = new ArrayList<CarBean>();
//		query master data
		
		ConnectDB con = new ConnectDB();
		PreparedStatement prepared = null;
		StringBuilder sql = new StringBuilder();
		Connection conn = con.openConnect();

		try {
			sql.append(" SELECT * FROM car  WHERE ye_year = ?  ");
			prepared = conn.prepareStatement(sql.toString());
			prepared.setString(1,year);
			ResultSet rs = prepared.executeQuery();

			while (rs.next()) {
				bean = new CarBean();
				bean.setCarName(rs.getString("car_name"));
				list.add(bean);
		
			}
		} catch (Exception e) {
			// TODO: handle exception
		}
		finally {
			conn.close();
		}
		return list;
	}
public List<BrandBean> findAll(String year ,String brand) throws SQLException {
		
	BrandBean bean = new BrandBean();
		List<BrandBean> list = new ArrayList<BrandBean>();
//		query master data
		
		ConnectDB con = new ConnectDB();
		PreparedStatement prepared = null;
		StringBuilder sql = new StringBuilder();
		Connection conn = con.openConnect();

		try {
			sql.append(" SELECT * FROM brand WHERE ye_year = ? AND car_name = ?  ");
			prepared = conn.prepareStatement(sql.toString());
			prepared.setString(1,year);
			prepared.setString(2,brand);
			ResultSet rs = prepared.executeQuery();

			while (rs.next()) {
				bean = new BrandBean();
				bean.setBrName(rs.getString("br_name"));
				list.add(bean);
		
			}
		} catch (Exception e) {
			// TODO: handle exception
		}
		finally {
			conn.close();
		}
		return list;
	}
public ColeridcardBean coler(Long number) throws SQLException {
		ColeridcardBean bean = new ColeridcardBean();
		
		ConnectDB con = new ConnectDB();
		PreparedStatement prepared = null;
		StringBuilder sql = new StringBuilder();
		Connection conn = con.openConnect();
		try {
			sql.append(" SELECT * FROM coleridcard WHERE co_idcard = ? ");
			prepared = conn.prepareStatement(sql.toString());
			prepared.setLong(1, number);
			ResultSet rs = prepared.executeQuery();
			while(rs.next()) {
				bean = new ColeridcardBean();
				bean.setCoName(rs.getString("co_colername"));
				bean.setCoIdcard(rs.getLong(""));
			}
			if(bean.getCoName() !=null) {
				
			}
			else {
				bean.setCoName("#FFFFFF");
			}
		} catch (Exception e) {
			// TODO: handle exception
		}
		finally {
			conn.close();
		}
	
	return bean;
}
	// end class
}
