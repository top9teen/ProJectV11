package com.bru.controller;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;

import com.bru.dao.CustomerDao;
import com.bru.dao.UserAllDao;

@Controller
public class BankController {
	@Autowired
	UserAllDao userAllDao;
	@Autowired
	CustomerDao customerDao;

	// SEC Bank
	@RequestMapping("/goto1")
	public String b1(Model model) {
		model.addAttribute("msg", "1");
		model.addAttribute("box", "select");
		return "welcome";
	}

	@RequestMapping("/goto2")
	public String b2(Model model) {
		model.addAttribute("msg", "2");
		model.addAttribute("box", "select");
		return "welcome";
	}

	@RequestMapping("/goto3")
	public String b3(Model model) {
		model.addAttribute("msg", "3");
		model.addAttribute("box", "select");
		return "welcome";
	}

	@RequestMapping("/goto4")
	public String b4(Model model) {
		model.addAttribute("msg", "4");
		model.addAttribute("box", "select");
		return "welcome";
	}
}
