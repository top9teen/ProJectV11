package com.bru.controller;


import java.util.ArrayList;
import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.web.bind.annotation.RequestBody;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RestController;

import com.bru.dao.CarDao;
import com.bru.dao.CustomerDao;
import com.bru.dao.UserAllDao;
import com.bru.model.BrandBean;
import com.bru.model.CarBean;

import com.bru.model.CriteriaBean;
import com.bru.model.YearBean;


@RestController
public class CarController {
	@Autowired
	UserAllDao userAllDao;
	@Autowired
	CustomerDao customerDao;
	@Autowired
	CarDao carDao;
	
	@RequestMapping(value="/year")
	public List<YearBean> xxx() {
		List<YearBean> list = new ArrayList<YearBean>();
	
		list =carDao.findAll();
		return list;
	}
	
	@RequestMapping(value="/brand", method = RequestMethod.POST)
	public List<CarBean> brand(@RequestBody CriteriaBean criteriaBean) {
		
		List<CarBean> list = new ArrayList<>();
		
//		query master data
	/*	for(int i=0; i<10; i++) {
			bean = new BrandBean();
			bean.setCarId(i);
			bean.setCarName("Top"+i);
			
			list.add(bean);
		}
		
		*/
		list  = carDao.findAll(criteriaBean.getYear());
		return list;
	}
	
	@RequestMapping(value="/carmodel", method = RequestMethod.POST)
	public List<BrandBean> carmodel(@RequestBody CriteriaBean criteriaBean) {
		
		List<BrandBean> list = new ArrayList<>();
		
//		query master data
	/*	for(int i=0; i<10; i++) {
			bean = new BrandBean();
			bean.setCarId(i);
			bean.setCarName("Top"+i);
			
			list.add(bean);
		}
		
		*/
		list  = carDao.findAll(criteriaBean.getYear(), criteriaBean.getBrand());
		return list;
	}

// end class
	
}
