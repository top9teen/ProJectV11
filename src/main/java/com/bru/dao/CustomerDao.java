package com.bru.dao;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.ArrayList;
import java.util.List;

import org.springframework.stereotype.Repository;


import com.bru.model.BrandBean;

import com.bru.model.KasikornPriceBean;
import com.bru.model.KrungsriPriceBean;
import com.bru.model.ScbeasyPriceBean;
import com.bru.model.SimBean;

import com.bru.model.ThanachartPriceBean;
import com.bru.model.UserAllBean;
import com.bru.model.YearBean;
import com.bru.util.ConnectDB;

@Repository
public class CustomerDao {

	// fist one "/"
	public List<YearBean> findAll() throws SQLException{

		List<YearBean> yearlist = new ArrayList<>();
		ConnectDB con = new ConnectDB();
		PreparedStatement prepared = null;
		StringBuilder sql = new StringBuilder();
		Connection conn = con.openConnect();

		try {
			sql.append(" SELECT * FROM year ");
			prepared = conn.prepareStatement(sql.toString());
			ResultSet rs = prepared.executeQuery();

			while (rs.next()) {
				YearBean yearbean = new YearBean();
				yearbean.setYeYear(rs.getString("ye_year"));
				yearlist.add(yearbean);
			}
		} catch (Exception e) {
			// TODO: handle exception
		}

		finally {
			conn.close();
		}
		return yearlist;
	}

	
	

	// SELECT "yea and car r"
	public List<BrandBean> check(String year, String car) throws SQLException {

		List<BrandBean> brandlist = new ArrayList<>();
		ConnectDB con = new ConnectDB();
		PreparedStatement prepared = null;
		StringBuilder sql = new StringBuilder();
		Connection conn = con.openConnect();
		try {
			sql.append(" SELECT br_name FROM brand WHERE  car_name= ? and ye_year= ? ");
			prepared = conn.prepareStatement(sql.toString());
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
		finally {
			conn.close();
		}

		return brandlist;
	}

	// kaprice
	public KasikornPriceBean checkpriceKa(String carYear, String carMake2) throws SQLException {
		KasikornPriceBean kabean = new KasikornPriceBean();
		ConnectDB con = new ConnectDB();
		PreparedStatement prepared = null;
		StringBuilder sql = new StringBuilder();
		Connection conn = con.openConnect();

		try {
			sql.append(" SELECT * FROM kasikorn_price WHERE  ye_year= ? and br_name= ? ");
			prepared = conn.prepareStatement(sql.toString());
			prepared.setString(1, carYear);
			prepared.setString(2, carMake2);
			ResultSet rs = prepared.executeQuery();
			while (rs.next()) {
				kabean.setKaPrice(rs.getInt("ka_price"));
			}
		} catch (Exception e) {

			// TODO: handle exception
		}
		finally {
			conn.close();
		}


		return kabean;
	}

	// krungsri_price
	public KrungsriPriceBean checkpricekr(String carYear, String carMake2) throws SQLException {
		KrungsriPriceBean krbean = new KrungsriPriceBean();
		ConnectDB con = new ConnectDB();
		PreparedStatement prepared = null;
		StringBuilder sql = new StringBuilder();
		Connection conn = con.openConnect();
		try {
			sql.append(" SELECT * FROM krungsri_price WHERE  ye_year= ? and br_name= ? ");
			prepared = conn.prepareStatement(sql.toString());
			prepared.setString(1, carYear);
			prepared.setString(2, carMake2);
			ResultSet rs = prepared.executeQuery();
			while (rs.next()) {
				krbean.setKrPrice(rs.getInt("kr_price"));
			}
		} catch (Exception e) {

			// TODO: handle exception
		}
		finally {
			conn.close();
		}
		return krbean;

	}

	// scbeasy_price
	public ScbeasyPriceBean checkpricesc(String carYear, String carMake2) throws SQLException {
		ScbeasyPriceBean scbean = new ScbeasyPriceBean();
		ConnectDB con = new ConnectDB();
		PreparedStatement prepared = null;
		StringBuilder sql = new StringBuilder();
		Connection conn = con.openConnect();
		try {
			sql.append(" SELECT * FROM scbeasy_price WHERE  ye_year= ? and br_name= ? ");
			prepared = conn.prepareStatement(sql.toString());
			prepared.setString(1, carYear);
			prepared.setString(2, carMake2);
			ResultSet rs = prepared.executeQuery();
			while (rs.next()) {
				scbean.setScPrice(rs.getInt("sc_price"));
			}
		} catch (Exception e) {

			// TODO: handle exception
		}
		finally {
			conn.close();
		}
		return scbean;
	}

	// thanachart_price
	public ThanachartPriceBean checkpriceth(String carYear, String carMake2) throws SQLException  {
		ThanachartPriceBean thbean = new ThanachartPriceBean();
		ConnectDB con = new ConnectDB();
		PreparedStatement prepared = null;
		StringBuilder sql = new StringBuilder();
		Connection conn = con.openConnect();
		try {
			sql.append(" SELECT * FROM thanachart_price WHERE  ye_year= ? and br_name= ? ");
			prepared = conn.prepareStatement(sql.toString());
			prepared.setString(1, carYear);
			prepared.setString(2, carMake2);
			ResultSet rs = prepared.executeQuery();
			while (rs.next()) {
				thbean.setThPrice(rs.getInt("th_price"));
			}
		} catch (Exception e) {

			// TODO: handle exception
		}
		finally {
			conn.close();
		}
		return thbean;
	}

	// user
	public List<UserAllBean> userall() throws SQLException {

		List<UserAllBean> list = new ArrayList<>();
		ConnectDB con = new ConnectDB();
		PreparedStatement prepared = null;
		StringBuilder sql = new StringBuilder();
		Connection conn = con.openConnect();

		try {
			sql.append(" SELECT * FROM userall WHERE us_role ='2' ");
			prepared = conn.prepareStatement(sql.toString());
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
		finally {
			conn.close();
		}
		return list;
	}
	// add for admin
public void nnn (String yy) throws SQLException {
	ConnectDB con = new ConnectDB();
	PreparedStatement prepared = null;
	StringBuilder sql = new StringBuilder();
	Connection conn = con.openConnect();
	
	try {
		sql.append(
				" INSERT INTO year(ye_year) VALUES(?)");
		prepared = conn.prepareStatement(sql.toString());
		prepared.setString(1, yy);
		prepared.executeUpdate();
	} catch (Exception e) {
		// TODO: handle exception
		e.printStackTrace();
	}
	finally {
		conn.close();
	}
	
}
public void nnn2 (String yy ,String cc) throws SQLException {
	ConnectDB con = new ConnectDB();
	PreparedStatement prepared = null;
	StringBuilder sql = new StringBuilder();
	Connection conn = con.openConnect();
	
	try {
		sql.append(
				" INSERT INTO  car(ye_year,car_name) VALUES(?,?) ");
		prepared = conn.prepareStatement(sql.toString());
		prepared.setString(1, yy);
		prepared.setString(2, cc);
		prepared.executeUpdate();
	} catch (Exception e) {
		// TODO: handle exception
		e.printStackTrace();
	}
	finally {
		conn.close();
	}
	
}
public void nnn3 (SimBean bean) throws SQLException  {
	ConnectDB con = new ConnectDB();
	PreparedStatement prepared = null;
	StringBuilder sql = new StringBuilder();
	Connection conn = con.openConnect();
	try {
		sql.append(
				" INSERT INTO  brand(ye_year,car_name,br_name) VALUES(?,?,?) ");
		prepared = conn.prepareStatement(sql.toString());
		prepared.setString(1, bean.getMyYear());
		prepared.setString(2, bean.getMycar());
		prepared.setString(3, bean.getName());  
		prepared.executeUpdate();
	} catch (Exception e) {
		// TODO: handle exception
		e.printStackTrace();
	}
	finally {
		conn.close();
	}
}

public void nnn4 (SimBean bean) throws SQLException  {
	ConnectDB con = new ConnectDB();
	PreparedStatement prepared = null;
	StringBuilder sql = new StringBuilder();
	Connection conn = con.openConnect();
		try {
			sql.append(
					" INSERT INTO  thanachart_price(ye_year,br_name,th_price) VALUES(?,?,?) ");
			prepared = conn.prepareStatement(sql.toString());
			prepared.setString(1, bean.getMyYear());
			prepared.setString(2, bean.getName());
			prepared.setInt(3, 10);
			prepared.executeUpdate();
	} catch (Exception e) {
		// TODO: handle exception
		e.printStackTrace();
	}
		finally {
			conn.close();
		}
		}
	
public void nnn5 (SimBean bean) throws SQLException  {
	ConnectDB con = new ConnectDB();
	PreparedStatement prepared = null;
	StringBuilder sql = new StringBuilder();
	Connection conn = con.openConnect();
		try {
			sql.append(
					" INSERT INTO  scbeasy_price(ye_year,br_name,sc_price) VALUES(?,?,?) ");
			prepared = conn.prepareStatement(sql.toString());
			prepared.setString(1, bean.getMyYear());
			prepared.setString(2, bean.getName());
			prepared.setInt(3, 10);
			prepared.executeUpdate();
	} catch (Exception e) {
		// TODO: handle exception
		e.printStackTrace();
	}
		finally {
			conn.close();
		}		
}
 
public void nnn6 (SimBean bean) throws SQLException  {
	ConnectDB con = new ConnectDB();
	PreparedStatement prepared = null;
	StringBuilder sql = new StringBuilder();
	Connection conn = con.openConnect();
		try {
			sql.append(
					" INSERT INTO  krungsri_price(ye_year,br_name,kr_price) VALUES(?,?,?) ");
			prepared = conn.prepareStatement(sql.toString());
			prepared.setString(1, bean.getMyYear());
			prepared.setString(2, bean.getName());
			prepared.setInt(3, 10);
			prepared.executeUpdate();
	} catch (Exception e) {
		// TODO: handle exception
		e.printStackTrace();
	}
		finally {
			conn.close();
		}	
		}

public void nnn7 (SimBean bean) throws SQLException {
	ConnectDB con = new ConnectDB();
	PreparedStatement prepared = null;
	StringBuilder sql = new StringBuilder();
	Connection conn = con.openConnect();
		try {
			sql.append(
					" INSERT INTO  kasikorn_price(ye_year,br_name,ka_price) VALUES(?,?,?) ");
			prepared = conn.prepareStatement(sql.toString());
			prepared.setString(1, bean.getMyYear());
			prepared.setString(2, bean.getName());
			prepared.setInt(3, 10);
			prepared.executeUpdate();
	} catch (Exception e) {
		// TODO: handle exception
		e.printStackTrace();
	}
		finally {
			conn.close();
		}	
}
public void coler23 (SimBean bean) throws SQLException {
	ConnectDB con = new ConnectDB();
	PreparedStatement prepared = null;
	StringBuilder sql = new StringBuilder();
	Connection conn = con.openConnect();
		try {
			sql.append(
					" INSERT INTO  coleridcard(co_idcard,co_colername) VALUES(?,?) ");
			prepared = conn.prepareStatement(sql.toString());
			prepared.setLong(1, bean.getCoco());
			prepared.setString(2, bean.getConame());
			prepared.executeUpdate();
	} catch (Exception e) {
		// TODO: handle exception
		e.printStackTrace();
	}
		finally {
			conn.close();
		}			
}
	// end class
}
