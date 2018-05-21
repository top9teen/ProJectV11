package com.bru.dao;

import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.util.ArrayList;
import java.util.List;

import org.springframework.stereotype.Repository;

import com.bru.model.RegisterallBean;
import com.bru.util.ConnectDB;

@Repository
public class MenberDao {

	
	public List<RegisterallBean> listuser(String name){
		ConnectDB con = new ConnectDB();
		PreparedStatement prepared = null;
		StringBuilder sql = new StringBuilder();
		List<RegisterallBean> list = new ArrayList<>();
		RegisterallBean bean = new RegisterallBean();
		
		try {
			
			sql.append(" SELECT * FROM  registerall WHERE reg_bankname = ? ");
			prepared = con.openConnect().prepareStatement(sql.toString());
			prepared.setString(1,name);
			ResultSet rs = prepared.executeQuery();
			
			while(rs.next()) {
				bean = new RegisterallBean();
				bean.setRegFirstname(rs.getString("reg_firstname"));
				bean.setRegLastname(rs.getString("reg_lastname"));
				bean.setRegTelephone(rs.getInt("reg_telephone"));
				bean.setRegProvince(rs.getString("reg_province"));
				bean.setRegCarmake(rs.getString("reg_carmake"));
				bean.setRegLesslimit(rs.getString("reg_lesslimit"));
				list.add(bean);
			}
			
		} catch (Exception e) {
			// TODO: handle exception
			e.printStackTrace();
		}
		return list;
	}
}
