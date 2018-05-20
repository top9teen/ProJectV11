package com.bru.controller;

import java.util.ArrayList;
import java.util.List;

import javax.servlet.http.HttpServletRequest;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;

import com.bru.dao.CarallDao;
import com.bru.dao.CustomerDao;
import com.bru.dao.UserAllDao;
import com.bru.model.BrandBean;
import com.bru.model.SimBean;

@Controller
public class FunctionController {
	@Autowired
	UserAllDao userAllDao;
	@Autowired
	CustomerDao customerDao;
	@Autowired
	CarallDao carallDao;

	// adasd
	@RequestMapping("/gotopreriod")
	public String gotopreriod(int pp,Model model ,HttpServletRequest request,String bb,String Mycar ,String MyYear ,String Mybrand) {
		SimBean simbean = new SimBean();
		simbean.setPring1(pp);
		simbean.setName(bb);
		simbean.setMycar(Mycar);
		simbean.setMybrand(Mybrand);
		simbean.setMyYear(MyYear);
		request.getSession().setAttribute("simbean", simbean);
		return "period";
	}

	@RequestMapping("/gotoregister")
	public String registercar( HttpServletRequest request , String yy ,String Mycar ,String MyYear ,String Mybrand,int pp) {

			SimBean bran = new SimBean();
			bran.setHos(yy);
			bran.setMycar(Mycar);
			bran.setMybrand(Mybrand);
			bran.setMyYear(MyYear);
			bran.setPring1(pp);
			request.getSession().setAttribute("simbean", bran);
		return "registercar";
	}

	@RequestMapping("/gotoresiter")
	public String resiter(Model model) {
		model.addAttribute("msg", "");

		return "resiter";
	}

	@RequestMapping("/finish")
	public String finish(Model model) {
		model.addAttribute("msg", "0");
		return "welcome";
	}
	@RequestMapping("/test1")
	public String tee(HttpServletRequest request) {
		List<BrandBean> list = new ArrayList<>();
		list =carallDao.alls();
		request.getSession().setAttribute("list", list);
		return "test1"; 
	}
	
	
	//End class
}
