package com.bru.model;

import java.util.Date;

public class UserAllBean {

	private int usId;
	private String usFname;
	private String usLname;
	private String usAddress;
	private String usRole;
	private Date usCreatedate;
	private String usUsername;
	private String usPassword;
	private String usImg;
	
	
	
	public String getUsImg() {
		return usImg;
	}
	public void setUsImg(String usImg) {
		this.usImg = usImg;
	}
	public String getUsUsername() {
		return usUsername;
	}
	public void setUsUsername(String usUsername) {
		this.usUsername = usUsername;
	}
	public String getUsPassword() {
		return usPassword;
	}
	public void setUsPassword(String usPassword) {
		this.usPassword = usPassword;
	}
	public int getUsId() {
		return usId;
	}
	public void setUsId(int usId) {
		this.usId = usId;
	}
	public String getUsFname() {
		return usFname;
	}
	public void setUsFname(String usFname) {
		this.usFname = usFname;
	}
	public String getUsLname() {
		return usLname;
	}
	public void setUsLname(String usLname) {
		this.usLname = usLname;
	}
	public String getUsAddress() {
		return usAddress;
	}
	public void setUsAddress(String usAddress) {
		this.usAddress = usAddress;
	}


	public String getUsRole() {
		return usRole;
	}
	public void setUsRole(String usRole) {
		this.usRole = usRole;
	}
	public Date getUsCreatedate() {
		return usCreatedate;
	}
	public void setUsCreatedate(Date usCreatedate) {
		this.usCreatedate = usCreatedate;
	}
	
	
}
