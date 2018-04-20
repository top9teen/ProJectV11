package com.bru.controller;

import javax.servlet.http.HttpServletRequest;

import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;

import com.bru.model.BrandBean;
import com.bru.model.CarBean;
import com.bru.model.YearBean;


@Controller
public class WelcomeController {
  
	
	
	
	@RequestMapping("/")
	public String welcome(Model model) {
		model.addAttribute("msg", "0");
		return "welcome";
	}
	@RequestMapping("/select")
	public String select(Model model) {
		model.addAttribute("msg", "select");
		return "welcome";
	}
	@RequestMapping("credit")
	public String credit(YearBean yearbean,CarBean carbean ,BrandBean branbean) {
		
		return "credit";
	}
	@RequestMapping("login")
	public String login( Model model) {
		model.addAttribute("messessError","");
		return "login";
	}
	@RequestMapping("gotohome")
	public String gotohome( Model model,String email ,String password,HttpServletRequest request) {
		
		
		
		return "";
	}
	
// end class
}
