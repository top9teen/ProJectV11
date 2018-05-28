package com.bru.dao;

import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.util.ArrayList;
import java.util.List;

import org.springframework.stereotype.Repository;

import com.bru.model.AdminInsertallBean;
import com.bru.model.BrandBean;
import com.bru.model.CarBean;
import com.bru.model.KasikornPriceBean;
import com.bru.model.KrungsriPriceBean;
import com.bru.model.ScbeasyPriceBean;
import com.bru.model.SimBean;
import com.bru.model.TestBean;
import com.bru.model.ThanachartPriceBean;
import com.bru.model.UserAllBean;
import com.bru.model.YearBean;
import com.bru.util.ConnectDB;

@Repository
public class CustomerDao {

	// fist one "/"
	public List<YearBean> findAll() {

		List<YearBean> yearlist = new ArrayList<>();
		ConnectDB con = new ConnectDB();
		PreparedStatement prepared = null;
		StringBuilder sql = new StringBuilder();

		try {
			sql.append(" SELECT * FROM year ");
			prepared = con.openConnect().prepareStatement(sql.toString());
			ResultSet rs = prepared.executeQuery();

			while (rs.next()) {
				YearBean yearbean = new YearBean();
				yearbean.setYeYear(rs.getString("ye_year"));
				yearlist.add(yearbean);
			}
		} catch (Exception e) {
			// TODO: handle exception
		}

		return yearlist;
	}

	
	

	// SELECT "yea and car r"
	public List<BrandBean> check(String year, String car) {

		List<BrandBean> brandlist = new ArrayList<>();
		ConnectDB con = new ConnectDB();
		PreparedStatement prepared = null;
		StringBuilder sql = new StringBuilder();
		try {
			sql.append(" SELECT br_name FROM brand WHERE  car_name= ? and ye_year= ? ");
			prepared = con.openConnect().prepareStatement(sql.toString());
			prepared.setString(1, car);
			prepared.setString(2, year);
			ResultSet rs = prepared.executeQuery();
			while (rs.next()) {
				BrandBean brandbean = new BrandBean();
				brandbean.setBrName(rs.getString("br_name"));
				brandlist.add(brandbean);

			}

		} catch (Exception e) {
			// TODO: handle exception
		}

		return brandlist;
	}

	// kaprice
	public KasikornPriceBean checkpriceKa(String carYear, String carMake2) {
		KasikornPriceBean kabean = new KasikornPriceBean();
		ConnectDB con = new ConnectDB();
		PreparedStatement prepared = null;
		StringBuilder sql = new StringBuilder();

		try {
			sql.append(" SELECT * FROM kasikorn_price WHERE  ye_year= ? and br_name= ? ");
			prepared = con.openConnect().prepareStatement(sql.toString());
			prepared.setString(1, carYear);
			prepared.setString(2, carMake2);
			ResultSet rs = prepared.executeQuery();
			while (rs.next()) {
				kabean.setKaPrice(rs.getInt("ka_price"));
			}
		} catch (Exception e) {

			// TODO: handle exception
		}

		return kabean;
	}

	// krungsri_price
	public KrungsriPriceBean checkpricekr(String carYear, String carMake2) {
		KrungsriPriceBean krbean = new KrungsriPriceBean();
		ConnectDB con = new ConnectDB();
		PreparedStatement prepared = null;
		StringBuilder sql = new StringBuilder();
		try {
			sql.append(" SELECT * FROM krungsri_price WHERE  ye_year= ? and br_name= ? ");
			prepared = con.openConnect().prepareStatement(sql.toString());
			prepared.setString(1, carYear);
			prepared.setString(2, carMake2);
			ResultSet rs = prepared.executeQuery();
			while (rs.next()) {
				krbean.setKrPrice(rs.getInt("kr_price"));
			}
		} catch (Exception e) {

			// TODO: handle exception
		}
		return krbean;

	}

	// scbeasy_price
	public ScbeasyPriceBean checkpricesc(String carYear, String carMake2) {
		ScbeasyPriceBean scbean = new ScbeasyPriceBean();
		ConnectDB con = new ConnectDB();
		PreparedStatement prepared = null;
		StringBuilder sql = new StringBuilder();
		try {
			sql.append(" SELECT * FROM scbeasy_price WHERE  ye_year= ? and br_name= ? ");
			prepared = con.openConnect().prepareStatement(sql.toString());
			prepared.setString(1, carYear);
			prepared.setString(2, carMake2);
			ResultSet rs = prepared.executeQuery();
			while (rs.next()) {
				scbean.setScPrice(rs.getInt("sc_price"));
			}
		} catch (Exception e) {

			// TODO: handle exception
		}
		return scbean;
	}

	// thanachart_price
	public ThanachartPriceBean checkpriceth(String carYear, String carMake2) {
		ThanachartPriceBean thbean = new ThanachartPriceBean();
		ConnectDB con = new ConnectDB();
		PreparedStatement prepared = null;
		StringBuilder sql = new StringBuilder();
		try {
			sql.append(" SELECT * FROM thanachart_price WHERE  ye_year= ? and br_name= ? ");
			prepared = con.openConnect().prepareStatement(sql.toString());
			prepared.setString(1, carYear);
			prepared.setString(2, carMake2);
			ResultSet rs = prepared.executeQuery();
			while (rs.next()) {
				thbean.setThPrice(rs.getInt("th_price"));
			}
		} catch (Exception e) {

			// TODO: handle exception
		}
		return thbean;
	}

	// user
	public List<UserAllBean> userall() {

		List<UserAllBean> list = new ArrayList<>();
		ConnectDB con = new ConnectDB();
		PreparedStatement prepared = null;
		StringBuilder sql = new StringBuilder();

		try {
			sql.append(" SELECT * FROM userall WHERE us_role ='2' ");
			prepared = con.openConnect().prepareStatement(sql.toString());
			ResultSet rs = prepared.executeQuery();

			while (rs.next()) {
				UserAllBean bean = new UserAllBean();
				bean.setUsUsername(rs.getString("us_username"));
				bean.setUsPassword(rs.getString("us_password"));
				bean.setUsFname(rs.getString("us_fname"));
				bean.setUsLname(rs.getString("us_lname"));
				bean.setUsAddress(rs.getString("us_address"));
				bean.setUsCreatedate(rs.getDate("us_createdate"));
				list.add(bean);
			}
		} catch (Exception e) {
			// TODO: handle exception
		}

		return list;
	}
	// add for admin
public void nnn (String yy) {
	ConnectDB con = new ConnectDB();
	PreparedStatement prepared = null;
	StringBuilder sql = new StringBuilder();
	
	try {
		sql.append(
				" INSERT INTO year(ye_year) VALUES(?)");
		prepared = con.openConnect().prepareStatement(sql.toString());
		prepared.setString(1, yy);
		prepared.executeUpdate();
	} catch (Exception e) {
		// TODO: handle exception
		e.printStackTrace();
	}
	
}
public void nnn2 (String yy ,String cc) {
	ConnectDB con = new ConnectDB();
	PreparedStatement prepared = null;
	StringBuilder sql = new StringBuilder();
	
	try {
		sql.append(
				" INSERT INTO  car(ye_year,car_name) VALUES(?,?) ");
		prepared = con.openConnect().prepareStatement(sql.toString());
		prepared.setString(1, yy);
		prepared.setString(2, cc);
		prepared.executeUpdate();
	} catch (Exception e) {
		// TODO: handle exception
		e.printStackTrace();
	}
	
}
public void nnn3 (SimBean bean) {
	ConnectDB con = new ConnectDB();
	PreparedStatement prepared = null;
	StringBuilder sql = new StringBuilder();
	try {
		sql.append(
				" INSERT INTO  brand(ye_year,car_name,br_name) VALUES(?,?,?) ");
		prepared = con.openConnect().prepareStatement(sql.toString());
		prepared.setString(1, bean.getMyYear());
		prepared.setString(2, bean.getMycar());
		prepared.setString(3, bean.getName());  
		prepared.executeUpdate();
	} catch (Exception e) {
		// TODO: handle exception
		e.printStackTrace();
	}
}

public void nnn4 (SimBean bean) {
	ConnectDB con = new ConnectDB();
	PreparedStatement prepared = null;
	StringBuilder sql = new StringBuilder();
		try {
			sql.append(
					" INSERT INTO  thanachart_price(ye_year,br_name,th_price) VALUES(?,?,?) ");
			prepared = con.openConnect().prepareStatement(sql.toString());
			prepared.setString(1, bean.getMyYear());
			prepared.setString(2, bean.getName());
			prepared.setInt(3, 10);
			prepared.executeUpdate();
	} catch (Exception e) {
		// TODO: handle exception
		e.printStackTrace();
	}}
	
public void nnn5 (SimBean bean) {
	ConnectDB con = new ConnectDB();
	PreparedStatement prepared = null;
	StringBuilder sql = new StringBuilder();
		try {
			sql.append(
					" INSERT INTO  scbeasy_price(ye_year,br_name,sc_price) VALUES(?,?,?) ");
			prepared = con.openConnect().prepareStatement(sql.toString());
			prepared.setString(1, bean.getMyYear());
			prepared.setString(2, bean.getName());
			prepared.setInt(3, 10);
			prepared.executeUpdate();
	} catch (Exception e) {
		// TODO: handle exception
		e.printStackTrace();
	}}

public void nnn6 (SimBean bean) {
	ConnectDB con = new ConnectDB();
	PreparedStatement prepared = null;
	StringBuilder sql = new StringBuilder();
		try {
			sql.append(
					" INSERT INTO  krungsri_price(ye_year,br_name,kr_price) VALUES(?,?,?) ");
			prepared = con.openConnect().prepareStatement(sql.toString());
			prepared.setString(1, bean.getMyYear());
			prepared.setString(2, bean.getName());
			prepared.setInt(3, 10);
			prepared.executeUpdate();
	} catch (Exception e) {
		// TODO: handle exception
		e.printStackTrace();
	}}

public void nnn7 (SimBean bean) {
	ConnectDB con = new ConnectDB();
	PreparedStatement prepared = null;
	StringBuilder sql = new StringBuilder();
		try {
			sql.append(
					" INSERT INTO  kasikorn_price(ye_year,br_name,ka_price) VALUES(?,?,?) ");
			prepared = con.openConnect().prepareStatement(sql.toString());
			prepared.setString(1, bean.getMyYear());
			prepared.setString(2, bean.getName());
			prepared.setInt(3, 10);
			prepared.executeUpdate();
	} catch (Exception e) {
		// TODO: handle exception
		e.printStackTrace();
	}}
public void coler23 (SimBean bean) {
	ConnectDB con = new ConnectDB();
	PreparedStatement prepared = null;
	StringBuilder sql = new StringBuilder();
		try {
			sql.append(
					" INSERT INTO  coleridcard(co_idcard,co_colername) VALUES(?,?) ");
			prepared = con.openConnect().prepareStatement(sql.toString());
			prepared.setLong(1, bean.getCoco());
			prepared.setString(2, bean.getConame());
			prepared.executeUpdate();
	} catch (Exception e) {
		// TODO: handle exception
		e.printStackTrace();
	}}
	// end class
}
