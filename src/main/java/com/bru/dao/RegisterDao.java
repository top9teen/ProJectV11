package com.bru.dao;



import java.sql.Date;
import java.sql.PreparedStatement;

import org.springframework.stereotype.Repository;

import com.bru.model.RegisterallBean;
import com.bru.util.ConnectDB;

@Repository
public class RegisterDao {

	public void register( RegisterallBean bean) {
		
		ConnectDB con = new ConnectDB();
		PreparedStatement prepared = null;
		StringBuilder sql = new StringBuilder();
		
		try {
			sql.append(" INSERT INTO  registerall(reg_bankname,reg_firstname,reg_lastname,reg_age,reg_province,reg_telephone,reg_idcard,reg_email,reg_carmodel,reg_carmake,reg_totalincome,reg_salary,reg_lesslimit,reg_lessday,reg_imgfront,reg_imgback,reg_imgleft,reg_imgright,reg_date) VALUES(?,?,?,?,?,?,?,?,?,?,?,?,?,?,?,?,?,?,?) ");
			prepared = con.openConnect().prepareStatement(sql.toString());
			prepared.setString(1, bean.getRegBankname());
			prepared.setString(2, bean.getRegFirstname());
			prepared.setString(3, bean.getRegLastname());
			prepared.setInt(4, bean.getRegAge());
			prepared.setString(5, bean.getRegProvince());
			prepared.setInt(6, bean.getRegTelephone());
			prepared.setInt(7, bean.getRegIdCard());
			prepared.setString(8, bean.getRegEmail());
			prepared.setString(9, bean.getRegCarmodel());
			prepared.setString(10, bean.getRegCarmake());
			prepared.setString(11, bean.getRegTotalincome());
			prepared.setString(12, bean.getRegSalary());
			prepared.setString(13, bean.getRegLesslimit());
			prepared.setString(14, bean.getRegLessday());
			prepared.setString(15, bean.getRegImgfront());
			prepared.setString(16, bean.getRegImgback());
			prepared.setString(17, bean.getRegImgLeft());
			prepared.setString(18, bean.getRegImgright());
			prepared.setDate(19, new Date(bean.getRegDate().getTime()));
			prepared.executeUpdate();
		} catch (Exception e) {
			// TODO: handle exception
			e.printStackTrace();
		}
		
	}
}
