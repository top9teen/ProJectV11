package com.bru.dao;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;

import org.springframework.stereotype.Repository;

import com.bru.model.UserAllBean;
import com.bru.util.ConnectDB;



@Repository
public class UserAllDao {

public UserAllBean login(String username, String password) throws SQLException{
		
	UserAllBean bean = new UserAllBean();
	ConnectDB con = new ConnectDB();
		PreparedStatement prepared = null;
		StringBuilder sql = new StringBuilder();
		Connection conn = con.openConnect();
		
		
		try {
			sql.append(" SELECT * FROM  userall WHERE us_username = ? AND us_password = ? ");
			prepared = conn.prepareStatement(sql.toString());
			prepared.setString(1,username);
			prepared.setString(2,password);

			ResultSet rs = prepared.executeQuery();
			while (rs.next()) {
				bean.setUsUsername(rs.getString("us_username"));
				bean.setUsPassword(rs.getString("us_password"));
				bean.setUsRole(rs.getString("us_role"));
				bean.setUsFname(rs.getString("us_fname"));
				bean.setUsImg(rs.getString("us_img"));
				bean.setUsLname(rs.getString("us_lname"));
				bean.setUsRights(rs.getString("us_rights"));
			}

	}
		catch (Exception e) {
			e.printStackTrace();
		}
		finally {
			conn.close();
		}
		return bean ;
		
	} 

public UserAllBean ck(String username,String fristName)  throws SQLException {
	
	UserAllBean bean = new UserAllBean();
	ConnectDB con = new ConnectDB();
		PreparedStatement prepared = null;
		StringBuilder sql = new StringBuilder();
		Connection conn = con.openConnect();
		
		
		try {
			sql.append(" SELECT us_username FROM  userall WHERE us_username = ? AND us_fname = ? ");
			prepared = conn.prepareStatement(sql.toString());
			prepared.setString(1,username);
			prepared.setString(2,fristName);

			ResultSet rs = prepared.executeQuery();
			while (rs.next()) {
				bean.setUsUsername(rs.getString("us_username"));
			}

	}
		catch (Exception e) {
			e.printStackTrace();
		}
		finally {
			conn.close();
		}
		return bean ;
		
	} 
// end class
}
