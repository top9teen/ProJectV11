package com.bru.controller;

import java.nio.file.Files;
import java.nio.file.Path;
import java.nio.file.Paths;
import java.sql.SQLException;
import java.util.*;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;

import org.springframework.web.multipart.MultipartFile;
import org.springframework.web.servlet.mvc.support.RedirectAttributes;

import com.bru.dao.CkDao;
import com.bru.dao.RegisterDao;
import com.bru.model.AmphurBean;
import com.bru.model.DistrictBean;
import com.bru.model.ProvinceBean;
import com.bru.model.RegisterallBean;


@Controller
public class RegisterController {
	@Autowired
	RegisterDao registerDao;
	@Autowired
	CkDao ckDao;
	//rename
	@RequestMapping(value = "/finish")
	public String register(@ModelAttribute("SpringWeb") RegisterallBean bean, String bankName, String firstName,
			String lastName, int age, String provinceId, String telephoneNo, String idcard, String email, String carMake,
			String carModel, String totalIncome, String salary, String lessLimit, String lassday ,@RequestParam("file1") MultipartFile file1
			,@RequestParam("file2") MultipartFile file2,@RequestParam("file3") MultipartFile file3,@RequestParam("file4") MultipartFile file4,
						RedirectAttributes redirectAttributes,Model model,String amphurId,String districtId,String mobanId 
						,AmphurBean amp ,ProvinceBean pro ,DistrictBean dis , String lat,String log  )throws SQLException {
		
		String oo ="";
		int i1=Integer.parseInt(provinceId);
		int i2=Integer.parseInt(amphurId);
		int i3=Integer.parseInt(districtId);
		amp=ckDao.amphur(i2);
		pro=ckDao.province(i1);
		dis=ckDao.dis(i3);
	
		try {
			
			bean.setRegBankname(bankName);
			bean.setRegFirstname(firstName);
			bean.setRegLastname(lastName);
			bean.setRegAge(age);                         
			bean.setRegProvince(pro.getProvinceName());
			bean.setRegTelephone(telephoneNo);
			bean.setRegIdCard(idcard);
			bean.setRegEmail(email);
			bean.setRegCarmodel(carModel);
			bean.setRegCarmake(carMake);
			bean.setRegTotalincome(totalIncome);
			bean.setRegSalary(salary);
			bean.setRegLesslimit(lessLimit);
			bean.setRegLessday(lassday);
			bean.setRegImgback("assets/img/imgreg/"+file2.getOriginalFilename());
			bean.setRegImgfront("assets/img/imgreg/"+file1.getOriginalFilename());
			bean.setRegImgLeft("assets/img/imgreg/"+file3.getOriginalFilename());
			bean.setRegImgright("assets/img/imgreg/"+file4.getOriginalFilename());
			bean.setRegDate(new Date());
			bean.setRegAmphur(amp.getAmphurName());
			bean.setRegDistrict(dis.getDistrictName());
			bean.setRegRoleuser("1");
			bean.setRegmoban(mobanId);
			bean.setRegStatusmember("1");
			bean.setRegLat(lat);
			bean.setRegLog(log);
			
			
		} catch (Exception e) {
			// TODO: handle exception
		}
		
	
	

	try {
		byte[] bytes1 = file1.getBytes();
		Path path1 = Paths.get("C://Users//Hz_RoyJangHo//eclipse-workspace//ProjectBru-Ver3//src//main//resources//static//assets//img//imgreg//" + file1.getOriginalFilename());
		Files.write(path1, bytes1);
		
		byte[] bytes2 = file2.getBytes();
		Path path2 = Paths.get("C://Users//Hz_RoyJangHo//eclipse-workspace//ProjectBru-Ver3//src//main//resources//static//assets//img//imgreg//" + file2.getOriginalFilename());
		Files.write(path2, bytes2);
		
		byte[] bytes3 = file3.getBytes();
		Path path3 = Paths.get("C://Users//Hz_RoyJangHo//eclipse-workspace//ProjectBru-Ver3//src//main//resources//static//assets//img//imgreg//" + file3.getOriginalFilename());
		Files.write(path3, bytes3);
		
		byte[] bytes4 = file4.getBytes();
		Path path4 = Paths.get("C://Users//Hz_RoyJangHo//eclipse-workspace//ProjectBru-Ver3//src//main//resources//static//assets//img//imgreg//" + file4.getOriginalFilename());
		Files.write(path4, bytes4);
		
	/*	redirectAttributes.addFlashAttribute("message",
				"You successfully uploaded '" + file.getOriginalFilename() + "'");*/

		registerDao.register(bean);
		
	} catch (Exception e) {
		e.printStackTrace();
	}
	model.addAttribute("msg", "0");
	model.addAttribute("box", "");
	oo="welcome";
	

		
	
		

		return oo;
	}
/*@RequestMapping(value = "/upload")
	public String singleFileUpload(@RequestParam("file") MultipartFile file, RedirectAttributes redirectAttributes) {

		if (file.isEmpty()) {
			redirectAttributes.addFlashAttribute("message", "Please select a file to upload");
			return "redirect:uploadStatus";
		}

		try {

			// Get the file and save it somewhere
			byte[] bytes = file.getBytes();
			Path path = Paths.get("C://xxx//" + file.getOriginalFilename());
			Files.write(path, bytes);

			redirectAttributes.addFlashAttribute("message",
					"You successfully uploaded '" + file.getOriginalFilename() + "'");

		} catch (IOException e) {
			e.printStackTrace();
		}

		return "redirect:/uploadStatus";
	}*/

	

// end class
}
