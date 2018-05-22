package com.bru.controller;

import java.util.ArrayList;
import java.util.List;

import javax.servlet.http.HttpServletRequest;

import org.apache.tomcat.util.buf.UEncoder;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;

import com.bru.dao.CustomerDao;
import com.bru.dao.MenberDao;
import com.bru.dao.RegisterDao;
import com.bru.dao.UserAllDao;
import com.bru.model.RegisterallBean;
import com.bru.model.RegnameBean;
import com.bru.model.UserAllBean;

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
	public String gototabel(Model model, HttpServletRequest requst) {

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
	public String gotofist(Model model,HttpServletRequest requst) {
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
	public String yyy(HttpServletRequest res,Model model){
		List<UserAllBean> list = new ArrayList<>();
		list = customerDao.userall();
		res.getSession().setAttribute("listUser", list);
		model.addAttribute("se", "");
		return "admin/adminsel5";
	}
	// end class
}
