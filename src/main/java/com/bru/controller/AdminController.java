package com.bru.controller;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;

import com.bru.dao.CustomerDao;
import com.bru.dao.UserAllDao;

@Controller
public class AdminController {
	@Autowired
	UserAllDao userAllDao;
	CustomerDao customerDao;

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
	// end class
}
