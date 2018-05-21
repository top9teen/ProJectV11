package com.bru.controller;

import java.util.*;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.RequestMapping;

import org.springframework.web.bind.annotation.RestController;



import com.bru.dao.RegisterDao;
import com.bru.model.RegisterallBean;

@RestController
public class RegisterController {
	@Autowired
	RegisterDao registerDao;

	@RequestMapping(value = "/finish")
	public String register(@ModelAttribute("SpringWeb") RegisterallBean bean, String bankName, String firstName,
			String lastName, int age, String provinceId, int telephoneNo, int idcard, String email, String carMake,
			String carModel, String totalIncome, String salary, String lessLimit, String lassday) {
		String imm = "assets/img/imgreg/no_image.jpg";

		bean.setRegBankname(bankName);
		bean.setRegFirstname(firstName);
		bean.setRegLastname(lastName);
		bean.setRegAge(age);
		bean.setRegProvince(provinceId);
		bean.setRegTelephone(telephoneNo);
		bean.setRegIdCard(idcard);
		bean.setRegEmail(email);
		bean.setRegCarmodel(carModel);
		bean.setRegCarmake(carMake);
		bean.setRegTotalincome(totalIncome);
		bean.setRegSalary(salary);
		bean.setRegLesslimit(lessLimit);
		bean.setRegLessday(lassday);
		bean.setRegImgback(imm);
		bean.setRegImgfront(imm);
		bean.setRegImgLeft(imm);
		bean.setRegImgright(imm);
		bean.setRegDate(new Date());

		try {

			registerDao.register(bean);
		} catch (Exception e) {
			e.printStackTrace();
		}

		return "BB";
	}



}
