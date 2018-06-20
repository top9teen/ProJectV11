package com.bru.dao;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.ArrayList;
import java.util.List;

import org.springframework.stereotype.Repository;


import com.bru.model.RegisterallBean;
import com.bru.util.ConnectDB;

@Repository
public class UsertableDao {

	public RegisterallBean gotolistcar(String regname)  throws SQLException {

		RegisterallBean bean = new RegisterallBean();
		ConnectDB con = new ConnectDB();
		PreparedStatement prepared = null;
		StringBuilder sql = new StringBuilder();
		Connection conn = con.openConnect();

		try {
			sql.append(" SELECT * FROM  registerall WHERE reg_firstname = ? ");
			prepared = conn.prepareStatement(sql.toString());
			prepared.setString(1, regname);

			ResultSet rs = prepared.executeQuery();
			while (rs.next()) {
				bean.setRegId(rs.getInt("reg_id"));
				bean.setRegBankname(rs.getString("reg_bankname"));
				bean.setRegFirstname(rs.getString("reg_firstname"));
				bean.setRegLastname(rs.getString("reg_lastname"));
				bean.setRegAge(rs.getInt("reg_age"));
				bean.setRegProvince(rs.getString("reg_province"));
				bean.setRegTelephone(rs.getString("reg_telephone"));
				bean.setRegIdCard(rs.getString("reg_idcard"));
				bean.setRegEmail(rs.getString("reg_email"));
				bean.setRegCarmodel(rs.getString("reg_carmodel"));
				bean.setRegCarmake(rs.getString("reg_carmake"));
				bean.setRegTotalincome(rs.getString("reg_totalincome"));
				bean.setRegSalary(rs.getString("reg_salary"));
				bean.setRegLesslimit(rs.getString("reg_lesslimit"));
				bean.setRegLessday(rs.getString("reg_lessday"));
				bean.setRegDate(rs.getDate("reg_date"));
				bean.setRegmoban(rs.getString("reg_moban"));
				bean.setRegAmphur(rs.getString("reg_amphur"));
				

			}

		} catch (Exception e) {
			e.printStackTrace();
		}
		finally {
			conn.close();
		}
		return bean;

	}

	public List<RegisterallBean> findallist(String fname) throws SQLException{
		RegisterallBean bean = new RegisterallBean();
		List<RegisterallBean> list = new ArrayList<>();
	
//		query master data
		
		ConnectDB con = new ConnectDB();
		PreparedStatement prepared = null;
		StringBuilder sql = new StringBuilder();
		Connection conn = con.openConnect();
		try {
			sql.append(" SELECT * FROM  registerall WHERE reg_firstname = ? ");
			prepared = conn.prepareStatement(sql.toString());
			prepared.setString(1, fname);
			ResultSet rs = prepared.executeQuery();

			while (rs.next()) {
				bean = new RegisterallBean();
				bean.setRegRoleuser(rs.getString("reg_roleuser"));
				if(bean.getRegRoleuser().equals("1")) {
					
					bean.setRegId(rs.getInt("reg_id"));
					bean.setRegBankname(rs.getString("reg_bankname"));
					bean.setRegFirstname(rs.getString("reg_firstname"));
					bean.setRegLastname(rs.getString("reg_lastname"));
					bean.setRegAge(rs.getInt("reg_age"));
					bean.setRegProvince(rs.getString("reg_province"));
					bean.setRegTelephone(rs.getString("reg_telephone"));
					bean.setRegIdCard(rs.getString("reg_idcard"));
					bean.setRegEmail(rs.getString("reg_email"));
					bean.setRegCarmodel(rs.getString("reg_carmodel"));
					bean.setRegCarmake(rs.getString("reg_carmake"));
					bean.setRegTotalincome(rs.getString("reg_totalincome"));
					bean.setRegSalary(rs.getString("reg_salary"));
					bean.setRegLesslimit(rs.getString("reg_lesslimit"));
					bean.setRegLessday(rs.getString("reg_lessday"));
					bean.setRegDate(rs.getDate("reg_date"));
					bean.setRegmoban(rs.getString("reg_moban"));
					bean.setRegAmphur(rs.getString("reg_amphur"));
					list.add(bean);
					
				}
				
		
			}
		} catch (Exception e) {
			// TODO: handle exception
		}
		finally {
			conn.close();
		}
		
		return list ;
	}
	
	public List<RegisterallBean> findallist2(String fname) throws SQLException {
		RegisterallBean bean = new RegisterallBean();
		List<RegisterallBean> list = new ArrayList<>();
	
//		query master data
		
		ConnectDB con = new ConnectDB();
		PreparedStatement prepared = null;
		StringBuilder sql = new StringBuilder();
		Connection conn = con.openConnect();

		try {
			sql.append(" SELECT * FROM  registerall WHERE reg_firstname = ? ");
			prepared = conn.prepareStatement(sql.toString());
			prepared.setString(1, fname);
			ResultSet rs = prepared.executeQuery();

			while (rs.next()) {
				bean = new RegisterallBean();
				bean.setRegRoleuser(rs.getString("reg_roleuser"));
				if(bean.getRegRoleuser().equals("2")) {
					
					bean.setRegId(rs.getInt("reg_id"));
					bean.setRegBankname(rs.getString("reg_bankname"));
					bean.setRegFirstname(rs.getString("reg_firstname"));
					bean.setRegLastname(rs.getString("reg_lastname"));
					bean.setRegAge(rs.getInt("reg_age"));
					bean.setRegProvince(rs.getString("reg_province"));
					bean.setRegTelephone(rs.getString("reg_telephone"));
					bean.setRegIdCard(rs.getString("reg_idcard"));
					bean.setRegEmail(rs.getString("reg_email"));
					bean.setRegCarmodel(rs.getString("reg_carmodel"));
					bean.setRegCarmake(rs.getString("reg_carmake"));
					bean.setRegTotalincome(rs.getString("reg_totalincome"));
					bean.setRegSalary(rs.getString("reg_salary"));
					bean.setRegLesslimit(rs.getString("reg_lesslimit"));
					bean.setRegLessday(rs.getString("reg_lessday"));
					bean.setRegImgfront(rs.getString("reg_imgfront"));
					bean.setRegImgback(rs.getString("reg_imgback"));
					bean.setRegImgLeft(rs.getString("reg_imgleft"));
					bean.setRegImgright(rs.getString("reg_imgright"));
					bean.setRegDate(rs.getDate("reg_date"));
					bean.setRegDistrict(rs.getString("reg_district"));
					bean.setRegmoban(rs.getString("reg_moban"));
					bean.setRegAmphur(rs.getString("reg_amphur"));
					bean.setRegLat(rs.getString("reg_lat"));
					bean.setRegLog(rs.getString("reg_log"));
					bean.setRegLessdayformy(rs.getString("reg_lessdaytomy"));
					list.add(bean);
					
				}
				
		
			}
		} catch (Exception e) {
			// TODO: handle exception
		}
		finally {
			conn.close();
		
		
	}
		return list ;
	}
	//end class
}
