package com.bru.dao;

import java.sql.Date;
import java.sql.PreparedStatement;
import java.sql.ResultSet;

import org.springframework.stereotype.Repository;

import com.bru.model.RegisterallBean;
import com.bru.model.RegnameBean;
import com.bru.util.ConnectDB;

@Repository
public class RegisterDao {

	public void register(RegisterallBean bean) {

		ConnectDB con = new ConnectDB();
		PreparedStatement prepared = null;
		StringBuilder sql = new StringBuilder();

		try {
			sql.append(
					" INSERT INTO  registerall(reg_bankname,reg_firstname,reg_lastname,reg_age,reg_province,reg_telephone,reg_idcard,reg_email,reg_carmodel,reg_carmake,reg_totalincome,reg_salary,reg_lesslimit,reg_lessday,reg_imgfront,reg_imgback,reg_imgleft,reg_imgright,reg_date) VALUES(?,?,?,?,?,?,?,?,?,?,?,?,?,?,?,?,?,?,?) ");
			prepared = con.openConnect().prepareStatement(sql.toString());
			prepared.setString(1, bean.getRegBankname());
			prepared.setString(2, bean.getRegFirstname());
			prepared.setString(3, bean.getRegLastname());
			prepared.setInt(4, bean.getRegAge());
			prepared.setString(5, bean.getRegProvince());
			prepared.setInt(6, bean.getRegTelephone());
			prepared.setLong(7, bean.getRegIdCard());
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

	// regname
	public void register2(RegnameBean bean) {

		ConnectDB con = new ConnectDB();
		PreparedStatement prepared = null;
		StringBuilder sql = new StringBuilder();

		try {
			sql.append(
					" INSERT INTO  regname(na_bankname,na_firstname,na_lastname,na_age,na_province,na_telephone,na_idcard,na_email,na_carmodel,na_carmake,na_totalincome,na_salary,na_lesslimit,na_lessday,na_imgfront,na_imgback,na_imgleft,na_imgright,na_date,na_idrole) VALUES(?,?,?,?,?,?,?,?,?,?,?,?,?,?,?,?,?,?,?,?) ");
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
			prepared.setInt(20, bean.getRegidrole());

			prepared.executeUpdate();
		} catch (Exception e) {
			// TODO: handle exception
			e.printStackTrace();
		}

	}
	//ckerename
	public RegnameBean ck(int idname) {
		RegnameBean bean = new RegnameBean();
		
		ConnectDB con = new ConnectDB();
		PreparedStatement prepared = null;
		StringBuilder sql = new StringBuilder();

		try {
			sql.append(" SELECT * FROM regname WHERE na_idrole = ?");
			prepared = con.openConnect().prepareStatement(sql.toString());
			prepared.setInt(1, idname);
			ResultSet rs = prepared.executeQuery();
			while (rs.next()) {
				bean.setRegidrole(rs.getInt("na_idrole"));
			}

		} catch (Exception e) {
			e.printStackTrace();
		}
		
		return bean ;
	}

	// sel reg 1 to 1
	public RegisterallBean sel(String regid) {

		RegisterallBean bean = new RegisterallBean();
		ConnectDB con = new ConnectDB();
		PreparedStatement prepared = null;
		StringBuilder sql = new StringBuilder();

		try {
			sql.append(" SELECT * FROM  registerall WHERE reg_id = ? ");
			prepared = con.openConnect().prepareStatement(sql.toString());
			prepared.setString(1, regid);

			ResultSet rs = prepared.executeQuery();
			while (rs.next()) {
				bean.setRegId(rs.getInt("reg_id"));
				bean.setRegBankname(rs.getString("reg_bankname"));
				bean.setRegFirstname(rs.getString("reg_firstname"));
				bean.setRegLastname(rs.getString("reg_lastname"));
				bean.setRegAge(rs.getInt("reg_age"));
				bean.setRegProvince(rs.getString("reg_province"));
				bean.setRegTelephone(rs.getInt("reg_telephone"));
				bean.setRegIdCard(rs.getLong("reg_idcard"));
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

			}

		} catch (Exception e) {
			e.printStackTrace();
		}
		return bean;

	}

	// sel2
	public RegnameBean sel2(String regid) {

		RegnameBean bean = new RegnameBean();
		ConnectDB con = new ConnectDB();
		PreparedStatement prepared = null;
		StringBuilder sql = new StringBuilder();

		try {
			sql.append(" SELECT * FROM  regname WHERE na_id = ? ");
			prepared = con.openConnect().prepareStatement(sql.toString());
			prepared.setString(1, regid);

			ResultSet rs = prepared.executeQuery();
			while (rs.next()) {

				bean.setRegBankname(rs.getString("na_bankname"));
				bean.setRegFirstname(rs.getString("na_firstname"));
				bean.setRegLastname(rs.getString("na_lastname"));
				bean.setRegAge(rs.getInt("na_age"));
				bean.setRegProvince(rs.getString("na_province"));
				bean.setRegTelephone(rs.getInt("na_telephone"));
				bean.setRegIdCard(rs.getInt("na_idcard"));
				bean.setRegEmail(rs.getString("na_email"));
				bean.setRegCarmodel(rs.getString("na_carmodel"));
				bean.setRegCarmake(rs.getString("na_carmake"));
				bean.setRegTotalincome(rs.getString("na_totalincome"));
				bean.setRegSalary(rs.getString("na_salary"));
				bean.setRegLesslimit(rs.getString("na_lesslimit"));
				bean.setRegLessday(rs.getString("na_lessday"));
				bean.setRegImgfront(rs.getString("na_imgfront"));
				bean.setRegImgback(rs.getString("na_imgback"));
				bean.setRegImgLeft(rs.getString("na_imgleft"));
				bean.setRegImgright(rs.getString("na_imgright"));
				bean.setRegDate(rs.getDate("na_date"));

			}

		} catch (Exception e) {
			e.printStackTrace();
		}
		return bean;

	}

	// end class
}
