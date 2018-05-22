package com.bru.controller;



import java.math.BigDecimal;
import java.math.RoundingMode;

import javax.servlet.http.HttpServletRequest;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;


import com.bru.dao.CarallDao;
import com.bru.dao.CustomerDao;
import com.bru.dao.RegisterDao;
import com.bru.dao.UserAllDao;

import com.bru.model.SimBean;
import com.bru.model.SimpleTestBean;


@Controller
public class FunctionController {
	@Autowired
	UserAllDao userAllDao;
	@Autowired
	CustomerDao customerDao;
	@Autowired
	CarallDao carallDao;
	@Autowired
	RegisterDao registerDao;

	// adasd
	@RequestMapping("/gotopreriod")
	public String gotopreriod(int pp,Model model ,HttpServletRequest request,String bb,String Mycar ,String MyYear ,String Mybrand) {
		SimBean simbean = new SimBean();
		SimpleTestBean testbean = new SimpleTestBean();
		simbean.setPring1(pp);
		simbean.setName(bb);
		simbean.setMycar(Mycar);
		simbean.setMybrand(Mybrand);
		simbean.setMyYear(MyYear);
		Double a,b,c,d,e ;
		
		a=  ((((0.55*12)*pp)/100)+pp)/12;
		b= ((((0.55*24)*pp)/100)+pp)/24;
		c=  ((((0.55*36)*pp)/100)+pp)/36;
		d= ((((0.60*48)*pp)/100)+pp)/48;
		e=  ((((0.66*60)*pp)/100)+pp)/60;
		  BigDecimal a1 = new BigDecimal(a);
		  BigDecimal b1 = new BigDecimal(b);
		  BigDecimal c1 = new BigDecimal(c);
		  BigDecimal d1 = new BigDecimal(d);
		  BigDecimal e1 = new BigDecimal(e);
		testbean.setPrig1(a1.setScale(0, RoundingMode.HALF_UP));
		testbean.setPrig2(b1.setScale(0, RoundingMode.HALF_UP));
		testbean.setPrig3(c1.setScale(0, RoundingMode.HALF_UP));
		testbean.setPrig4(d1.setScale(0, RoundingMode.HALF_UP));
		testbean.setPrig5(e1.setScale(0, RoundingMode.HALF_UP));
		request.getSession().setAttribute("simbean", simbean);
		request.getSession().setAttribute("test", testbean);
		return "period";
	}

	@RequestMapping("/gotoregister")
	public String registercar( HttpServletRequest request , String yy ,String Mycar ,String MyYear ,String Mybrand,int pp ,String name) {

			SimBean bran = new SimBean();
			
			bran.setHos(yy);
			bran.setMycar(Mycar);
			bran.setMybrand(Mybrand);
			bran.setMyYear(MyYear);
			bran.setPring1(pp);
			bran.setName(name);
			request.getSession().setAttribute("simbean", bran);
		return "registercar";
	}

	@RequestMapping("/gotoresiter")
	public String resiter(Model model) {
		model.addAttribute("msg", "");

		return "resiter";
	}

	
	//End class
}
