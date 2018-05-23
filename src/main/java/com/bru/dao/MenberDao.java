package com.bru.dao;

import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.util.ArrayList;
import java.util.List;

import org.springframework.stereotype.Repository;

import com.bru.model.RegisterallBean;
import com.bru.model.RegnameBean;
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
				bean.setRegId(rs.getInt("reg_id"));
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
	
	public List<RegnameBean> listuser2(String name){
		ConnectDB con = new ConnectDB();
		PreparedStatement prepared = null;
		StringBuilder sql = new StringBuilder();
		List<RegnameBean> list = new ArrayList<>();
		RegnameBean bean = new RegnameBean();
		
		try {
			
			sql.append(" SELECT * FROM  regname WHERE na_bankname = ? ");
			prepared = con.openConnect().prepareStatement(sql.toString());
			prepared.setString(1,name);
			ResultSet rs = prepared.executeQuery();
			
			while(rs.next()) {
				bean = new RegnameBean();
				bean.setRegId(rs.getInt("na_id"));
				bean.setRegFirstname(rs.getString("na_firstname"));
				bean.setRegLastname(rs.getString("na_lastname"));
				bean.setRegTelephone(rs.getInt("na_telephone"));
				bean.setRegProvince(rs.getString("na_province"));
				bean.setRegCarmake(rs.getString("na_carmake"));
				bean.setRegLesslimit(rs.getString("na_lesslimit"));
				list.add(bean);
			}
			
		} catch (Exception e) {
			// TODO: handle exception
			e.printStackTrace();
		}
		return list;
	}
//adminsel1
	public List<RegisterallBean> listuser1(){
		ConnectDB con = new ConnectDB();
		PreparedStatement prepared = null;
		StringBuilder sql = new StringBuilder();
		List<RegisterallBean> list = new ArrayList<>();
		RegisterallBean bean = new RegisterallBean();
		
		try {
			
			sql.append(" SELECT * FROM  registerall  ");
			prepared = con.openConnect().prepareStatement(sql.toString());
			ResultSet rs = prepared.executeQuery();
			
			while(rs.next()) {
				bean = new RegisterallBean();
				bean.setRegId(rs.getInt("reg_id"));
				bean.setRegBankname(rs.getString("reg_bankname"));
				bean.setRegFirstname(rs.getString("reg_firstname"));
				bean.setRegLastname(rs.getString("reg_lastname"));
				bean.setRegTelephone(rs.getInt("reg_telephone"));
				bean.setRegProvince(rs.getString("reg_province"));
				bean.setRegCarmake(rs.getString("reg_carmake"));
				bean.setRegLesslimit(rs.getString("reg_lesslimit"));
				bean.setRegDate(rs.getDate("reg_date"));
				list.add(bean);
			}
			
		} catch (Exception e) {
			// TODO: handle exception
			e.printStackTrace();
		}
		return list;
	}
	public List<RegnameBean> listuser3(){
		ConnectDB con = new ConnectDB();
		PreparedStatement prepared = null;
		StringBuilder sql = new StringBuilder();
		List<RegnameBean> list = new ArrayList<>();
		RegnameBean bean = new RegnameBean();
		
		try {
			
			sql.append(" SELECT * FROM  regname ");
			prepared = con.openConnect().prepareStatement(sql.toString());
			ResultSet rs = prepared.executeQuery();
			
			while(rs.next()) {
				bean = new RegnameBean();
				bean.setRegId(rs.getInt("na_id"));
				bean.setRegBankname(rs.getString("na_bankname"));
				bean.setRegFirstname(rs.getString("na_firstname"));
				bean.setRegLastname(rs.getString("na_lastname"));
				bean.setRegTelephone(rs.getInt("na_telephone"));
				bean.setRegProvince(rs.getString("na_province"));
				bean.setRegCarmake(rs.getString("na_carmake"));
				bean.setRegLesslimit(rs.getString("na_lesslimit"));
				bean.setRegDate(rs.getDate("na_date"));
				list.add(bean);
			}
			
		} catch (Exception e) {
			// TODO: handle exception
			e.printStackTrace();
		}
		return list;
	}
}
