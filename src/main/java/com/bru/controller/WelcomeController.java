package com.bru.controller;

import javax.servlet.http.HttpServletRequest;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;

import com.bru.dao.CustomerDao;
import com.bru.dao.UserAllDao;

import com.bru.model.KasikornPriceBean;
import com.bru.model.KrungsriPriceBean;
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

	@RequestMapping("/Hello")
	public String hel(Model model) {
		model.addAttribute("msg", "0");
		return "Wel";
	}

	@RequestMapping("/")
	public String welcome(Model model) {
		model.addAttribute("msg", "0");
		return "welcome";
	}

	@RequestMapping("/select")
	public String select(Model model) {
		model.addAttribute("msg", "");
		model.addAttribute("box", "select");
		return "welcome";
	}

	@RequestMapping("/car")
	public String credit(Model model) {
		String onpage = "";
		model.addAttribute("sel1", "0");
		model.addAttribute("sel2", "0");
		onpage = "car";
		return onpage;
	}

	@RequestMapping("/car2")
	public String credit2(Model model, String groupType, String carMake, String carMake2, HttpServletRequest reqest) {
		String lin = "";
		String a = groupType;
		String b = carMake2;
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

		//// model.addAttribute("sel1","1");
		/// model.addAttribute("sel2","1");
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

	@RequestMapping("/gototabel")
	public String gototabel(Model model) {
		model.addAttribute("se", "1");
		return "welcomeMember";
	}

	@RequestMapping("/login")
	public String login(String username, String password, Model model, HttpServletRequest request) {
		String outhen = "";
		UserAllBean bean = new UserAllBean();
		try {
			bean = userAllDao.login(username, password);
			if (bean.getUsUsername() != null) {

				if (bean.getUsRole().equals("1")) {
					outhen = "welcomeAdmin";
				} else if (bean.getUsRole().equals("2")) {
					model.addAttribute("se", "3");
					outhen = "welcomeMember";
				} else {
					model.addAttribute("messessError", "F");
					outhen = "login";
				}
			}

		} catch (Exception e) {
			e.printStackTrace();
		}
		request.getSession().setAttribute("Login", bean);
		return outhen;
	}

	@RequestMapping("/logoutadmin")
	public String Loout(HttpServletRequest request, Model model) {
		model.addAttribute("msg", "0");
		return "welcome";

	}

	@RequestMapping("/logout")
	public String logout(HttpServletRequest request, Model model) {
		model.addAttribute("msg", "0");
		return "welcome";

	}

	// end class
}
