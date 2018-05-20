package com.bru.dao;

import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.util.ArrayList;
import java.util.List;

import org.springframework.stereotype.Repository;

import com.bru.model.BrandBean;
import com.bru.util.ConnectDB;

@Repository
public class CarallDao {
	
/*	// SELECT "ck2017benz"
	public List<BrandBean> ck2017benz() {
		String car;
		String year;
		car = "BENZ";
		year = "2017";
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
	// SELECT "ck2017AUDI"
		public List<BrandBean> ck2017AUDI() {
			String car;
			String year;
			car = "AUDI";
			year = "2017";
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
		// SELECT "ck2017BMW"
		public List<BrandBean> ck2017BMW() {
			String car;
			String year;
			car = "BMW";
			year = "2017";
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
		// SELECT "ck2017CHEVROLET"
		public List<BrandBean> ck2017CHEVROLET() {
			String car;
			String year;
			car = "CHEVROLET";
			year = "2017";
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
		// SELECT "ck2017FORD"
		public List<BrandBean> ck2017FORD() {
			String car;
			String year;
			car = "FORD";
			year = "2017";
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
		// SELECT "ck2017HONDA"
		public List<BrandBean> ck2017HONDA() {
			String car;
			String year;
			car = "HONDA";
			year = "2017";
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
		// SELECT "ck2017ISUZU"
		public List<BrandBean> ck2017ISUZU() {
			String car;
			String year;
			car = "ISUZU";
			year = "2017";
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
		// SELECT "ck2017MAZDA"
		public List<BrandBean> ck2017MAZDA() {
			String car;
			String year;
			car = "MAZDA";
			year = "2017";
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
		// SELECT "ck2017MITSUBISHI"
		public List<BrandBean> ck2017MITSUBISHI() {
			String car;
			String year;
			car = "MITSUBISHI";
			year = "2017";
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
		// SELECT "ck2017NISSANI"
		public List<BrandBean> ck2017NISSAN() {
			String car;
			String year;
			car = "NISSAN";
			year = "2017";
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
		// SELECT "ck2017SUZUKI"
		public List<BrandBean> ck2017SUZUKI() {
			String car;
			String year;
			car = "SUZUKI";
			year = "2017";
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
		// SELECT "ck2017TOYOTA"
		public List<BrandBean> ck2017TOYOTA() {
			String car;
			String year;
			car = "TOYOTA";
			year = "2017";
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
		//2016
		// SELECT "ck2016benz"
		public List<BrandBean> ck2016benz() {
			String car;
			String year;
			car = "BENZ";
			year = "2016";
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
		// SELECT "ck2017AUDI"
			public List<BrandBean> ck2016AUDI() {
				String car;
				String year;
				car = "AUDI";
				year = "2016";
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
			// SELECT "ck2016BMW"
			public List<BrandBean> ck2016BMW() {
				String car;
				String year;
				car = "BMW";
				year = "2016";
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
			// SELECT "ck2016CHEVROLET"
			public List<BrandBean> ck2016CHEVROLET() {
				String car;
				String year;
				car = "CHEVROLET";
				year = "2016";
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
			// SELECT "ck2016FORD"
			public List<BrandBean> ck2016FORD() {
				String car;
				String year;
				car = "FORD";
				year = "2016";
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
			// SELECT "ck2016HONDA"
			public List<BrandBean> ck2016HONDA() {
				String car;
				String year;
				car = "HONDA";
				year = "2016";
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
			// SELECT "ck2016ISUZU"
			public List<BrandBean> ck2016ISUZU() {
				String car;
				String year;
				car = "ISUZU";
				year = "2016";
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
			// SELECT "ck2016MAZDA"
			public List<BrandBean> ck2016MAZDA() {
				String car;
				String year;
				car = "MAZDA";
				year = "2016";
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
			// SELECT "ck2016MITSUBISHI"
			public List<BrandBean> ck2016MITSUBISHI() {
				String car;
				String year;
				car = "MITSUBISHI";
				year = "2016";
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
			// SELECT "ck2016NISSANI"
			public List<BrandBean> ck2016NISSAN() {
				String car;
				String year;
				car = "NISSAN";
				year = "2016";
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
			// SELECT "ck2016SUZUKI"
			public List<BrandBean> ck2016SUZUKI() {
				String car;
				String year;
				car = "SUZUKI";
				year = "2016";
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
			// SELECT "ck2016TOYOTA"
			public List<BrandBean> ck2016TOYOTA() {
				String car;
				String year;
				car = "TOYOTA";
				year = "2016";
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
			
		*/
		// 2015
		// all
			// SELECT "ck2016TOYOTA"
						public List<BrandBean> alls() {
							List<BrandBean> brandlist = new ArrayList<>();
							ConnectDB con = new ConnectDB();
							PreparedStatement prepared = null;
							StringBuilder sql = new StringBuilder();
							try {
								sql.append(" SELECT * FROM brand ");
								prepared = con.openConnect().prepareStatement(sql.toString());
							
								ResultSet rs = prepared.executeQuery();
								while (rs.next()) {
									BrandBean brandbean = new BrandBean();
									brandbean.setBrName(rs.getString("br_name"));
									brandbean.setYeYear(rs.getString("ye_year"));
									brandbean.setCarName(rs.getString("car_name"));
									brandlist.add(brandbean);

								}

							} catch (Exception e) {
								// TODO: handle exception
							}

							return brandlist;
						}
						
//end class
}
