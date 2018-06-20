package com.bru.controller;

import java.sql.SQLException;
import java.util.ArrayList;
import java.util.Date;
import java.util.List;

import javax.servlet.http.HttpServletRequest;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;

import com.bru.dao.CarDao;
import com.bru.dao.CustomerDao;
import com.bru.dao.MenberDao;
import com.bru.dao.RegisterDao;
import com.bru.dao.UserAllDao;
import com.bru.dao.UsertableDao;
import com.bru.model.ColeridcardBean;
import com.bru.model.KasikornPriceBean;
import com.bru.model.KrungsriPriceBean;
import com.bru.model.MsgadminBean;
import com.bru.model.RegisterallBean;
import com.bru.model.RegnameBean;
import com.bru.model.ScbeasyPriceBean;
import com.bru.model.SimBean;
import com.bru.model.ThanachartPriceBean;
import com.bru.model.UserAllBean;


@Controller
public class WelcomeController {
	@Autowired
	UserAllDao userAllDao;
	@Autowired
	CustomerDao customerDao;
	@Autowired
	MenberDao menberDao;
	@Autowired
	RegisterDao registerDao;
	@Autowired
	CarDao carDao;
	@Autowired
	UsertableDao usertableDao;

	String uu = "";
	String fname, lname;
	String imgall = "";

	@RequestMapping("/Hello")
	public String hel(Model model) {
		model.addAttribute("msg", "0");
		return "Wel";
	}

	@RequestMapping("/")
	public String index(Model model) {
		model.addAttribute("messessError", "");
		return "index";
	}

	@RequestMapping("/select")
	public String select(Model model) {
		model.addAttribute("msg", "");
		model.addAttribute("box", "select");
		return "welcome";
	}

	@RequestMapping("/car")
	public String credit(Model model) {

		model.addAttribute("msg", "");
		model.addAttribute("box", "car");

		return "welcome";
	}

	@RequestMapping("/gototabel")
	public String gototabel(Model model, String name, HttpServletRequest requst) throws SQLException{
		name = uu;
		List<RegisterallBean> list = new ArrayList<>();

		list = menberDao.listuser(name);

		requst.getSession().setAttribute("listUser", list);
		model.addAttribute("se", "1");
		
		model.addAttribute("head", "3");
		model.addAttribute("dd", "");
		return "welcomeMember";
	}

	@RequestMapping("/gotofist")
	public String gotofist(Model model, String name, HttpServletRequest requst)throws SQLException {
		name = uu;
		List<RegisterallBean> list = new ArrayList<>();

		list = menberDao.listuserss(name);

		requst.getSession().setAttribute("listUser", list);
		model.addAttribute("se", "2");
	
		model.addAttribute("head", "3");
		model.addAttribute("dd", "");
		return "welcomeMember";
	}

	@RequestMapping("/selidcard")
	public String selidcard(Model model) {
		
		model.addAttribute("head", "4");
		model.addAttribute("dd", "");
		model.addAttribute("se", "3");
		return "welcomeMember";
	}

	@RequestMapping("/msg2")
	public String msg(Model model) {

		model.addAttribute("se", "5");
		model.addAttribute("dd", "");
		model.addAttribute("head", "3");
		return "welcomeMember";
	}
	@RequestMapping("/msg4")
	public String msgdd(Model model) {

		model.addAttribute("se", "5");
		model.addAttribute("dd", "");
		model.addAttribute("head", "2");
		return "welcomeMember";
	}
	@RequestMapping("/msg3")
	public String msg3(Model model) {

		model.addAttribute("se", "5");
		model.addAttribute("dd", "");
		model.addAttribute("head", "4");
		return "welcomeMember";
	}
	@RequestMapping("/gotofist2")
	public String gotofist2(Model model, String name, HttpServletRequest requst)throws SQLException {
		name = uu;
		List<RegisterallBean> list = new ArrayList<>();

		list = menberDao.listuserdddd(name);

		requst.getSession().setAttribute("listUser", list);
		model.addAttribute("se", "31");
	
		model.addAttribute("head", "4");
		model.addAttribute("dd", "");
		return "welcomeMember";
	}

	

	@RequestMapping("/gotomsg")
	public String msgg(Model model, String name, String msghard, String msgbody) {
		name = uu;
		MsgadminBean bean = new MsgadminBean();
		bean.setMsName(name);
		bean.setMsMsgbody(msgbody);
		bean.setMsMsghard(msghard);
		bean.setMsDate(new Date());
		try {

			menberDao.sssss(bean);
			model.addAttribute("se", "5");
			model.addAttribute("dd", "L");
		} catch (Exception e) {
			model.addAttribute("se", "5");
			model.addAttribute("dd", "G");
		}
		return "welcomeMember";
	}

	@RequestMapping("/car2")
	public String credit2(Model model, String groupType, String carMake, String carMake2, HttpServletRequest reqest) {
		String lin = "";
		SimBean bb = new SimBean();
		KasikornPriceBean kabean = new KasikornPriceBean();
		KrungsriPriceBean krbean = new KrungsriPriceBean();
		ScbeasyPriceBean scbean = new ScbeasyPriceBean();
		ThanachartPriceBean thbean = new ThanachartPriceBean();
		try {
			kabean = customerDao.checkpriceKa(groupType, carMake2);
			krbean = customerDao.checkpricekr(groupType, carMake2);
			scbean = customerDao.checkpricesc(groupType, carMake2);
			thbean = customerDao.checkpriceth(groupType, carMake2);
			if (kabean.getKaPrice() > 0 && krbean.getKrPrice() > 0 && scbean.getScPrice() > 0
					&& thbean.getThPrice() > 0) {
				model.addAttribute("box", "");
				model.addAttribute("msg", "5");
				lin = "welcome";
				bb.setMycar(carMake);
				bb.setMybrand(carMake2);
				bb.setMyYear(groupType);
			} else {
				model.addAttribute("box", "");
				model.addAttribute("msg", "0");
				lin = "welcome";
			}

		} catch (Exception e) {
			e.printStackTrace();
		}

		//// model.addAttribute("sel1","1");
		/// model.addAttribute("sel2","1");
		reqest.getSession().setAttribute("kabean", kabean);
		reqest.getSession().setAttribute("krbean", krbean);
		reqest.getSession().setAttribute("scbean", scbean);
		reqest.getSession().setAttribute("thbean", thbean);
		reqest.getSession().setAttribute("simbean", bb);
		return lin;
	}

	// updatecarmember

	@RequestMapping("/updatecar2")
	public String updatecar2(Model model, String groupType, String carMake, String carMake2,
			HttpServletRequest reqest) {
		String lin = "";

		SimBean bb = new SimBean();
		KasikornPriceBean kabean = new KasikornPriceBean();
		KrungsriPriceBean krbean = new KrungsriPriceBean();
		ScbeasyPriceBean scbean = new ScbeasyPriceBean();
		ThanachartPriceBean thbean = new ThanachartPriceBean();
		try {
			kabean = customerDao.checkpriceKa(groupType, carMake2);
			krbean = customerDao.checkpricekr(groupType, carMake2);
			scbean = customerDao.checkpricesc(groupType, carMake2);
			thbean = customerDao.checkpriceth(groupType, carMake2);
			if (kabean.getKaPrice() > 0 && krbean.getKrPrice() > 0 && scbean.getScPrice() > 0
					&& thbean.getThPrice() > 0) {
				lin = "banksalary";
				bb.setMycar(carMake);
				bb.setMybrand(carMake2);
				bb.setMyYear(groupType);
			} else {
				model.addAttribute("sel1", "0");
				model.addAttribute("sel2", "0");
				lin = "car";
			}

		} catch (Exception e) {
			e.printStackTrace();
		}

		//// model.addAttribute("sel1","1"); /// model.addAttribute("sel2","1");
		reqest.getSession().setAttribute("kabean", kabean);
		reqest.getSession().setAttribute("krbean", krbean);
		reqest.getSession().setAttribute("scbean", scbean);
		reqest.getSession().setAttribute("thbean", thbean);
		reqest.getSession().setAttribute("simbean", bb);
		return lin;
	}

	@RequestMapping("/gotologin")
	public String login(Model model) {
		model.addAttribute("messessError", "");
		return "login";
	}

	@RequestMapping("/welcome")
	public String welcome(Model model) {
		model.addAttribute("box", "");
		model.addAttribute("msg", "");

		return "welcome";
	}

	@RequestMapping("/login")
	public String login(String username, String password, Model model, HttpServletRequest request) {
		String outhen = "";
		UserAllBean bean = new UserAllBean();
		try {
			bean = userAllDao.login(username, password);
			if (bean.getUsUsername() != null) {

				if (bean.getUsRole().equals("1")) {
					uu = bean.getUsRights();
					outhen = "welcomeAdmin";
				} else if (bean.getUsRole().equals("2")) {
					model.addAttribute("se", "");
					model.addAttribute("head", "2");
					model.addAttribute("dd", "");
					imgall =bean.getUsImg();
					uu = bean.getUsRights();
					outhen = "welcomeMember";
				} else if (bean.getUsRole().equals("5")) {
					model.addAttribute("box", "");
					model.addAttribute("msg", "0");
					uu = bean.getUsRights();
					
					fname = bean.getUsFname();
					lname = bean.getUsLname();
					outhen = "welcome";
				} else if (bean.getUsRole().equals("3")) {
					model.addAttribute("se", "");
					model.addAttribute("head", "3");
					model.addAttribute("dd", "");
					uu = bean.getUsRights();
					imgall =bean.getUsImg();
					outhen = "welcomeMember";
				}else if (bean.getUsRole().equals("4")) {
					model.addAttribute("se", "");
					model.addAttribute("dd", "");
					model.addAttribute("head", "4");
					imgall =bean.getUsImg();
					uu = bean.getUsRights();
					outhen = "welcomeMember";
				}


			} else {
				model.addAttribute("messessError", "F");
				outhen = "index";
			}

		} catch (Exception e) {
			e.printStackTrace();
		}
		request.getSession().setAttribute("Login", bean);
		return outhen;
	}

	@RequestMapping("/logoutadmin")
	public String Loout(HttpServletRequest request, Model model) {
		model.addAttribute("messessError", "0");
		return "index";

	}

	@RequestMapping("/logout")
	public String logout(HttpServletRequest request, Model model) {
		model.addAttribute("messessError", "0");
		return "index";

	}

	@RequestMapping(value = "/gotoUpdate", method = RequestMethod.POST)
	public String gotoUpdate(Model model, String regid, HttpServletRequest res) {
		RegisterallBean bean = new RegisterallBean();
		try {
			registerDao.update2(regid);
			bean=registerDao.sel(regid);
			if (bean.getRegId() != 0) {
				
				
			}

		} catch (Exception e) {
			// TODO: handle exception
			e.printStackTrace();
		}
		
		model.addAttribute("se", "");
		model.addAttribute("head", "3");
		model.addAttribute("dd", "update");
		res.getSession().setAttribute("resultBean", bean);
		return "welcomeMember";

	}


	@RequestMapping(value = "/gotoUpdate5", method = RequestMethod.POST)
	public String gotoUpdate5(Model model, String regid, HttpServletRequest res) {
		RegisterallBean bean = new RegisterallBean();
		try {
			registerDao.update2(regid);
			bean=registerDao.sel(regid);
			if (bean.getRegId() != 0) {
				
				
			}

		} catch (Exception e) {
			// TODO: handle exception
			e.printStackTrace();
		}
		
		model.addAttribute("se", "");
		model.addAttribute("head", "4");
		model.addAttribute("dd", "update3");
		res.getSession().setAttribute("resultBean", bean);
		return "welcomeMember";

	}
	@RequestMapping(value = "/gotoUpdate2", method = RequestMethod.POST)
	public String gotoUpdate2(Model model, String regid, HttpServletRequest res) {
		RegisterallBean bean = new RegisterallBean();
		try {
			registerDao.update2(regid);
			bean=registerDao.sel(regid);
			if (bean.getRegId() != 0) {

			}

		} catch (Exception e) {
			// TODO: handle exception
			e.printStackTrace();
		}
		model.addAttribute("se", "");
		model.addAttribute("head", "3");
		model.addAttribute("dd", "update2");
		res.getSession().setAttribute("resultBean", bean);
		return "welcomeMember";
	}
	@RequestMapping(value = "/gotoUpdate31", method = RequestMethod.POST)
	public String gotoUpdate31(Model model, String regid, HttpServletRequest res) {
		RegisterallBean bean = new RegisterallBean();
		try {
			registerDao.update31(regid);
			bean=registerDao.sel(regid);
			if (bean.getRegId() != 0) {

			}

		} catch (Exception e) {
			// TODO: handle exception
			e.printStackTrace();
		}
		model.addAttribute("se", "");
		model.addAttribute("head", "4");
		model.addAttribute("dd", "update31");
		res.getSession().setAttribute("resultBean", bean);
		return "welcomeMember";
	}

	// rename
	@RequestMapping(value = "/rename")
	public String register2(@ModelAttribute("SpringWeb") RegnameBean bean, String bankName, String firstName,
			String lastName, int age, String province, int telephoneNo, int idcard, String email, String carMake,
			String carModel, String totalIncome, String salary, String lessLimit, String lassday, String file1,
			String file2, String file3, String file4, Model model, HttpServletRequest res, int idname) {
		String gg = "";
		try {
			bean = registerDao.ck(idname);
			if (bean.getRegidrole() <= 0) {

				bean.setRegBankname(bankName);
				bean.setRegFirstname(firstName);
				bean.setRegLastname(lastName);
				bean.setRegAge(age);
				bean.setRegProvince(province);
				bean.setRegTelephone(telephoneNo);
				bean.setRegIdCard(idcard);
				bean.setRegEmail(email);
				bean.setRegCarmodel(carModel);
				bean.setRegCarmake(carMake);
				bean.setRegTotalincome(totalIncome);
				bean.setRegSalary(salary);
				bean.setRegLesslimit(lessLimit);
				bean.setRegLessday(lassday);
				bean.setRegImgback(file2);
				bean.setRegImgfront(file1);
				bean.setRegImgLeft(file3);
				bean.setRegImgright(file4);
				bean.setRegDate(new Date());
				bean.setRegidrole(idname);
				try {
					registerDao.register2(bean);
					model.addAttribute("se", "sss");
					gg = "welcomeMember";

				} catch (Exception e) {
					// TODO: handle exception
				}

			} else {
				model.addAttribute("se", "gg");
				gg = "welcomeMember";
			}
		} catch (Exception e) {
			// TODO: handle exception
		}

		return gg;
	}

	@RequestMapping(value = "/coler", method = RequestMethod.POST)
	public String vv(Long name, Model model, HttpServletRequest res) throws SQLException {

		String mm = "";
		ColeridcardBean bean = new ColeridcardBean();
		bean = carDao.coler(name);
		if (bean.getCoName() != null) {
			bean.setVo(name);
			res.getSession().setAttribute("resultBean", bean);
			model.addAttribute("se", "4");
			mm = "member/wel2";
		}
		if (bean.getCoName() == null) {
			model.addAttribute("se", "3");
			bean.setVo(name);
			bean.setCoName("#FFFFFF");
			mm = "member/wel2";
		}
		return mm;
	}

	@RequestMapping("/updatecar")
	public String updatecar() {

		return "member/updatecar";
	}

	@RequestMapping("/gotoregister")
	public String registercar(HttpServletRequest request, String yy, String Mycar, String MyYear, String Mybrand,
			int pp, String name) {

		SimBean bran = new SimBean();
		bran.setHos(yy);
		bran.setMycar(Mycar);
		bran.setMybrand(Mybrand);
		bran.setMyYear(MyYear);
		bran.setPring1(pp);
		bran.setName(name);
		bran.setFname(fname);
		bran.setLname(lname);
		request.getSession().setAttribute("simbean", bran);
		return "registercar";
	}

	@RequestMapping(value = "/register", method = RequestMethod.POST)
	public String rester(@ModelAttribute("SpringWeb") UserAllBean bean, String fristName, String lastName,
			String username, String password, Model model) {
		String oo = "";
		try {
			bean = userAllDao.login(username, fristName);
			if (bean.getUsUsername() != null) {
				model.addAttribute("SE", "M");
				oo = "resiter";
			} else {
				try {

					bean.setUsFname(fristName);
					bean.setUsLname(lastName);
					bean.setUsUsername(username);
					bean.setUsPassword(password);
					bean.setUsImg("assets/img/imgpro/noname.png");
					bean.setUsAddress("NO ADDRESS");
					bean.setUsRole("5");
					bean.setUsCreatedate(new Date());
					try {
						menberDao.rester(bean);
						model.addAttribute("SE", "S");
						oo = "resiter";

					} catch (Exception e) {
						// TODO: handle exception
						e.printStackTrace();
						model.addAttribute("SE", "F");
						oo = "resiter";
					}
				} catch (Exception e) {
					// TODO: handle exception
					e.printStackTrace();
					model.addAttribute("SE", "F");
					oo = "resiter";
				}
			}

		} catch (Exception e) {
			e.printStackTrace();
			model.addAttribute("SE", "F");
			oo = "resiter";
		}

		return oo;
	}

	@RequestMapping(value = "gotolistcar")
	public String gotolistcar(Model model, HttpServletRequest requst)throws SQLException {
		List<RegisterallBean> list = new ArrayList<>();
		list = usertableDao.findallist(uu);

		requst.getSession().setAttribute("listUser", list);
		model.addAttribute("box", "");
		model.addAttribute("msg", "7");

		return "welcome";
	}
	
	@RequestMapping(value = "gotolistcar2")
	public String gotolistcar2(Model model, HttpServletRequest requst)throws SQLException {
		List<RegisterallBean> list = new ArrayList<>();
		list = usertableDao.findallist2(uu);

		requst.getSession().setAttribute("listUser", list);
		model.addAttribute("box", "");
		model.addAttribute("msg", "10");

		return "welcome";
	}
	@RequestMapping(value ="gotocked",method = RequestMethod.POST)
	public String gotocked (Model model ,HttpServletRequest res , String regid) {
		RegisterallBean bean = new RegisterallBean();
		try {
			bean = registerDao.sel(regid);
			if (bean.getRegId() != 0) {

			}

		} catch (Exception e) {
			// TODO: handle exception
			e.printStackTrace();
		}
		model.addAttribute("box", "");
		model.addAttribute("msg", "8");
		res.getSession().setAttribute("resultBean", bean);
		return "welcome";
	}
	@RequestMapping(value ="gotocked2",method = RequestMethod.POST)
	public String gotocked2 (Model model ,HttpServletRequest res , String regid) {
		RegisterallBean bean = new RegisterallBean();
		try {
			bean = registerDao.sel(regid);
			if (bean.getRegId() != 0) {

			}

		} catch (Exception e) {
			// TODO: handle exception
			e.printStackTrace();
		}
		model.addAttribute("box", "");
		model.addAttribute("msg", "9");
		res.getSession().setAttribute("resultBean", bean);
		return "welcome";
	}
	
	@RequestMapping(value ="gotodeled",method = RequestMethod.POST)
	public String gotodeled (Model model ,HttpServletRequest res , 	String regid ,String name) throws SQLException {
		
		name = uu;
			 registerDao.deldete(regid);
			
			
				List<RegnameBean> list = new ArrayList<>();

			//	list = menberDao.listuser2(name);

			
				model.addAttribute("head", "3");
				model.addAttribute("dd", "");
				
				res.getSession().setAttribute("listUser", list);
				model.addAttribute("se", "2");

				return "welcomeMember";
		
	}
	@RequestMapping( value = "/updateuserlist80" , method = RequestMethod.POST)
	public String updateuserlist80(Model model,String refid,String name,HttpServletRequest requst ,String updatepried) {	
	
		List<RegisterallBean> list = new ArrayList<>();
		 name = uu;
	try {
		
		

		
		registerDao.updateddsd(refid,updatepried);
		list = menberDao.listuserv65(name);
				requst.getSession().setAttribute("listUser", list);	
			
		} catch (Exception e) {
			// TODO: handle exception
			e.printStackTrace();
		}
	model.addAttribute("se", "56");
	model.addAttribute("head", "2");
	model.addAttribute("dd", "");
		return "welcomeMember";
	}
	
	@RequestMapping( value = "/updateuserlist" , method = RequestMethod.POST)
	public String updateuserlist(Model model,String refid,String name,HttpServletRequest requst ) {	
	
		List<RegisterallBean> list = new ArrayList<>();
		 name = uu;
	try {
		
		

		
		registerDao.update(refid);
		list = menberDao.listuser(name);
				requst.getSession().setAttribute("listUser", list);	
			
		} catch (Exception e) {
			// TODO: handle exception
			e.printStackTrace();
		}
	model.addAttribute("se", "1");
	model.addAttribute("head", "3");
	model.addAttribute("dd", "");
		return "welcomeMember";
	}
	
	@RequestMapping( value = "/updateuserlist2" , method = RequestMethod.POST)
	public String updateuserlist2(Model model,String refid,String name,HttpServletRequest requst ) {	
	
		List<RegisterallBean> list = new ArrayList<>();
		 name = uu;
	try {
		
		

		
		registerDao.update22(refid);
		list = menberDao.listuserss(name);
				requst.getSession().setAttribute("listUser", list);	
			
		} catch (Exception e) {
			// TODO: handle exception
			e.printStackTrace();
		}
	model.addAttribute("se", "2");
	model.addAttribute("head", "3");
	model.addAttribute("dd", "");
		return "welcomeMember";
	}
	
	@RequestMapping( value = "/updateuserlist31" , method = RequestMethod.POST)
	public String updateuserlist31(Model model,String refid,String name,HttpServletRequest requst ) {	
	
		List<RegisterallBean> list = new ArrayList<>();
		 name = uu;
	try {
		
		

		
		registerDao.update232(refid);
		list = menberDao.listuserdddd(name);
				requst.getSession().setAttribute("listUser", list);	
			
		} catch (Exception e) {
			// TODO: handle exception
			e.printStackTrace();
		}
	model.addAttribute("se", "31");
	model.addAttribute("head", "4");
	model.addAttribute("dd", "");
		return "welcomeMember";
	}
	@RequestMapping( value = "/updateuserlist3" , method = RequestMethod.POST)
	public String updateuserlist3(Model model,String refid,String name,HttpServletRequest requst ) {	
	
		List<RegisterallBean> list = new ArrayList<>();
		 name = uu;
	try {
		
		

		
		registerDao.update22w(refid);
		list = menberDao.listuserv(name);
				requst.getSession().setAttribute("listUser", list);	
			
		} catch (Exception e) {
			// TODO: handle exception
			e.printStackTrace();
		}
	model.addAttribute("se", "7");
	model.addAttribute("head", "4");
	model.addAttribute("dd", "");
		return "welcomeMember";
	}
	
	@RequestMapping("/gototabel2")
	public String gototabel2(Model model, String name, HttpServletRequest requst) throws SQLException{
		name = uu;
		List<RegisterallBean> list = new ArrayList<>();

		list = menberDao.listuserv(name);

		requst.getSession().setAttribute("listUser", list);
		model.addAttribute("se", "7");
		
		model.addAttribute("head", "4");
		model.addAttribute("dd", "");
		return "welcomeMember";
	}
	@RequestMapping("/gototabel56")
	public String gototabel56(Model model, String name, HttpServletRequest requst) throws SQLException{
		name = uu;
		List<RegisterallBean> list = new ArrayList<>();

		list = menberDao.listuserv65(name);

		requst.getSession().setAttribute("listUser", list);
		model.addAttribute("se", "56");
		
		model.addAttribute("head", "2");
		model.addAttribute("dd", "");
		return "welcomeMember";
	}
	@RequestMapping(value = "/gotoUpdate56", method = RequestMethod.POST)
	public String gotoUpdate56(Model model, String regid, HttpServletRequest res) {
		RegisterallBean bean = new RegisterallBean();
		try {
			registerDao.update2(regid);
			bean=registerDao.sel(regid);
			if (bean.getRegId() != 0) {
				
				
			}

		} catch (Exception e) {
			// TODO: handle exception
			e.printStackTrace();
		}
		
		model.addAttribute("se", "");
		model.addAttribute("head", "2");
		model.addAttribute("dd", "update56");
		res.getSession().setAttribute("resultBean", bean);
		return "welcomeMember";

	}
	
	
	@RequestMapping("/regitermember")
	public String resiter(Model model) {
		model.addAttribute("SE", "");

		return "resiter2";
	}
	
	@RequestMapping(value = "/register23", method = RequestMethod.POST)
	public String register23(@ModelAttribute("SpringWeb") UserAllBean bean, String fristName, String lastName,
			String username, String password, Model model,String stRoleId) {
		String oo = "";
		try {
			bean = userAllDao.login(username, fristName);
			if (bean.getUsUsername() != null) {
				model.addAttribute("SE", "M");
				oo = "resiter";
			} else {
				try {

					bean.setUsFname(fristName);
					bean.setUsLname(lastName);
					bean.setUsUsername(username);
					bean.setUsPassword(password);
					bean.setUsImg(imgall);
					bean.setUsAddress("NO ADDRESS");
					bean.setUsRole(stRoleId);
					bean.setUsRights(uu);
					bean.setUsCreatedate(new Date());
					try {
						menberDao.sssssdd(bean);
						model.addAttribute("SE", "S");
						oo = "resiter";

					} catch (Exception e) {
						// TODO: handle exception
						e.printStackTrace();
						model.addAttribute("SE", "F");
						oo = "resiter";
					}
				} catch (Exception e) {
					// TODO: handle exception
					e.printStackTrace();
					model.addAttribute("SE", "F");
					oo = "resiter";
				}
			}

		} catch (Exception e) {
			e.printStackTrace();
			model.addAttribute("SE", "F");
			oo = "resiter";
		}

		return oo;
	}

	
	// end class
}

/*@RequestMapping(value = "/gotoUpdate", method = RequestMethod.POST)
public String gotoUpdate(Model model, String regid, HttpServletRequest res) {
	RegisterallBean bean = new RegisterallBean();
	try {
		bean = registerDao.sel(regid);
		if (bean.getRegId() != 0) {

		}

updateuserlist

	} catch (Exception e) {
		// TODO: handle exception
		e.printStackTrace();
	}
	res.getSession().setAttribute("resultBean", bean);
	return "member/update";

}*/
