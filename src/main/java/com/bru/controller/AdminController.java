package com.bru.controller;

import java.sql.SQLException;
import java.util.ArrayList;
import java.util.List;

import javax.servlet.http.HttpServletRequest;


import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;

import com.bru.dao.CarallDao;
import com.bru.dao.CustomerDao;
import com.bru.dao.MenberDao;
import com.bru.dao.RegisterDao;
import com.bru.dao.UserAllDao;
import com.bru.model.BrandBean;
import com.bru.model.CarBean;
import com.bru.model.KasikornPriceBean;
import com.bru.model.KrungsriPriceBean;
import com.bru.model.MsgadminBean;
import com.bru.model.RegisterallBean;
import com.bru.model.RegnameBean;
import com.bru.model.ScbeasyPriceBean;
import com.bru.model.SimBean;

import com.bru.model.ThanachartPriceBean;
import com.bru.model.UpdatecarBean;
import com.bru.model.UserAllBean;
import com.bru.model.YearBean;

@Controller
public class AdminController {
	@Autowired
	UserAllDao userAllDao;
	@Autowired
	CustomerDao customerDao;
	@Autowired
	MenberDao menberDao;
	@Autowired
	RegisterDao registerDao;
	@Autowired
	CarallDao carallDao;
	@RequestMapping("/widgets")
	public String widgets() {

		return "admin/widgets";
	}

	@RequestMapping("/charts")
	public String charts() {

		return "admin/charts";
	}

	@RequestMapping("/elements")
	public String elements() {

		return "admin/elements";
	}

	@RequestMapping("/panelsl")
	public String panelsl() {

		return "admin/panelsl";
	}

	@RequestMapping("/welcomeAdmin")
	public String welcomeAdmin() {

		return "welcomeAdmin";
	}

	@RequestMapping("/adminsel1")
	public String gototabel(Model model, HttpServletRequest requst) throws SQLException {

		List<RegisterallBean> list = new ArrayList<>();

		list = menberDao.listuser1();

		requst.getSession().setAttribute("listUser", list);
		model.addAttribute("se", "1");

		return "admin/adminsel1";
	}
	@RequestMapping( value = "/gotoUpdateadmin" , method = RequestMethod.POST)
	public String gotoUpdate22(Model model,String regid,HttpServletRequest res) {	
		RegisterallBean bean = new RegisterallBean();
		try {
			bean = registerDao.sel(regid);
			if(bean.getRegId() != 0) {
				
			}
			
		} catch (Exception e) {
			// TODO: handle exception
			e.printStackTrace();
		}
		res.getSession().setAttribute("resultBean", bean);
		return "admin/adminsel2";
	}
	@RequestMapping("/adminsel2")
	public String gotofist(Model model,HttpServletRequest requst) throws SQLException{
		 List<RegnameBean> list = new ArrayList<>();
		 
		 list = menberDao.listuser3();
		
		 requst.getSession().setAttribute("listUser", list);
		model.addAttribute("se", "2");
		
		return "admin/adminsel3";
	}
	@RequestMapping( value = "/gotoUpdateadmin2" , method = RequestMethod.POST)
	public String gotoUpdate2(Model model,String regid,HttpServletRequest res) {	
		RegnameBean bean = new RegnameBean();
		try {
			bean = registerDao.sel2(regid);
			if(bean.getRegId() != 0) {
				
			}
			
		} catch (Exception e) {
			// TODO: handle exception
			e.printStackTrace();
		}
		res.getSession().setAttribute("resultBean", bean);
		return "admin/adminsel4";
	}

	//user
	@RequestMapping("/adminsel3")
	public String yyy(HttpServletRequest res,Model model)throws SQLException{
		List<UserAllBean> list = new ArrayList<>();
		list = customerDao.userall();
		res.getSession().setAttribute("listUser", list);
		model.addAttribute("se", "");
		return "admin/adminsel5";
	}
	
	@RequestMapping("/adminmsg")
	public String adminmsg(HttpServletRequest res)throws SQLException {
		List<MsgadminBean> list = new ArrayList<>();
		list=menberDao.listmsg();
		res.getSession().setAttribute("listUser", list);
		return "admin/adminsel6";
	}
	
	@RequestMapping("/adminupdate")
	public String adminupdate(HttpServletRequest res , Model model) {
		model.addAttribute("ss", "");
		return "admin/adminsel7";
	}
	@RequestMapping("/gotoupdatecar")
	public String gotoupdatecar(Model model, String groupType, String carMake, String carMake2, HttpServletRequest reqest) {
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
				lin = "admin/adminsel8";
				bb.setMycar(carMake);
				bb.setMybrand(carMake2);
				bb.setMyYear(groupType);
			} else {
				lin = "admin/adminsel7";
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
		model.addAttribute("ss", "");
		return lin;
	}
	
	@RequestMapping("/gotoupdatecarall")
	public String gotoupdatecarall(int ka,int sc,int th,int kr,Model model ,HttpServletRequest request,String bb,String Mycar ,String MyYear ,String Mybrand) {
		UpdatecarBean bean = new UpdatecarBean();
		String kk = "";
		bean.setCar(Mybrand);
		bean.setKa(ka);
		bean.setKr(kr);
		bean.setSc(sc);
		bean.setTh(th);
		try {
			menberDao.ka2(bean);
			menberDao.kr2(bean);
			menberDao.sc2(bean);
			menberDao.th2(bean);
			model.addAttribute("ss", "1");
			kk="admin/adminsel7";
		} catch (Exception e) {
			// TODO: handle exception
			model.addAttribute("ss", "2");
			kk= "admin/adminsel7";
		}
		
		return kk ;
		}
	
	@RequestMapping("/admininsert")
	public String admininsert(Model model) {
		model.addAttribute("ss", "");
		return "admin/adminsel9";
	}
	@RequestMapping("/gotoinsertadmin")
	public String gotoinsertadmin(Model model ,String year ,String band ,String modelcar  ,SimBean si) {
		si.setMyYear(year);
		si.setName(modelcar);
		si.setMycar(band);
		 YearBean ye = new YearBean();
		 CarBean ca = new CarBean();
		 BrandBean br = new BrandBean();
		try {
			ye= carallDao.year1(si);
			ca= carallDao.brand(si);
				br = carallDao.model1(si);
			/*System.out.println(ye.getYeYear());
			System.out.println(ca.getCarName());
			System.out.println(br.getBrName());*/
			if(ye.getYeYear() == null) {
				customerDao.nnn(year);
			}

			if(ca.getCarName() == null) {
				customerDao.nnn2(year,band);
				
			}
			if(br.getBrName() == null) {
				customerDao.nnn3(si);
				customerDao.nnn4(si);
				customerDao.nnn5(si);
				customerDao.nnn6(si);
				customerDao.nnn7(si);
				model.addAttribute("ss", "1");
				
			}
			if(br.getBrName() != null) {
				model.addAttribute("ss", "2");
			
			}
		} catch (Exception e) {
			// TODO: handle exception
		}
	
		return "admin/adminsel9";
		
	}
	// end class
}
