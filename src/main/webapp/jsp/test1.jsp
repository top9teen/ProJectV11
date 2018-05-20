<%@page import="com.fasterxml.jackson.annotation.JsonInclude.Include"%>
<%@page import="com.bru.model.YearBean"%>
<%@ page language="java" contentType="text/html; charset=utf-8"
	pageEncoding="utf-8"%>
<%@page import="java.util.List"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=utf-8">
<link rel="stylesheet" href="https://www.w3schools.com/w3css/4/w3.css">
<link rel="stylesheet"
	href="https://fonts.googleapis.com/css?family=Raleway">
<link rel="stylesheet"
	href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/4.7.0/css/font-awesome.min.css">
<!-- Latest compiled and minified CSS -->
<link rel="stylesheet"
	href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/css/bootstrap.min.css">
<style>
body, h1, h2, h3, h4, h5, h6 {
	font-family: "Raleway", sans-serif;
}

</style>

<title>Welcome to Project</title>
</head>

<body class="w3-light-grey w3-content" style="max-width: 1600px">

	<!-- Sidebar/menu -->
	<nav class="w3-sidebar w3-collapse w3-white w3-animate-left"
		style="z-index:3;width:300px;" id="mySidebar">
	<div class="w3-container">
		<a href="#" onclick="w3_close()"
			class="w3-hide-large w3-right w3-jumbo w3-padding w3-hover-grey"
			title="close menu"> <i class="fa fa-remove"></i>
		</a> <img src="assets/img/noname.png" style="width: 45%;" class="w3-round"><br>
		<br>
		<h4>
			<b> Car Loan Analysis System</b>
		</h4>
		<p class="w3-text-grey">Simple web and system</p>
	</div>
	<div class="w3-bar-block">
		<a href="#portfolio" onclick="w3_close()"
			class="w3-bar-item w3-button w3-padding w3-text-teal"><i
			class="	fa fa-automobile fa-fw w3-margin-right"></i>วิเคราะห์ระบบสินเชื่อรถยต์</a>
		<a href="select" onclick="w3_close()"
			class="w3-bar-item w3-button w3-padding w3-text-teal"><i
			class="fa fa-address-book-o fa-fw w3-margin-right w3-text-teal">
		</i>ข้อมูลสินเชื่อรถยนต์</a> <a href="gotologin" onclick="w3_close()"
			class="w3-bar-item w3-button w3-padding w3-text-teal"><i
			class="	fa fa-automobile fa-fw w3-margin-right"></i>เข้าสู่ระบบ</a>
	</div>
	</nav>

	<!-- Overlay effect when opening sidebar on small screens -->
	<div class="w3-overlay w3-hide-large w3-animate-opacity"
		onclick="w3_close()" style="cursor: pointer" title="close side menu"
		id="myOverlay"></div>

	<!-- !PAGE CONTENT! -->
	<div class="w3-main" style="margin-left: 300px">

		<!-- Header -->
		<header id="portfolio"> <a href="#"><img
			src="assets/img/noname.png" style="width: 65px;"
			class="w3-circle w3-right w3-margin w3-hide-large w3-hover-opacity"></a>
		<span class="w3-button w3-hide-large w3-xxlarge w3-hover-text-grey"
			onclick="w3_open()"><i class="fa fa-bars"></i></span>
		<div class="w3-container">
			<h1>
				<b>Welcome My Car Loan Analysis System</b>
			</h1>

		</div>
		</header>
		<!-- First Photo Grid-->
	
			<form name="dropmsgform" id="form1" action="car2" method="post" OnSubmit="return fncSubmit(); true" style="height: 70%;width: 40%; margin: 150px;">
			<div class="panel panel-primary" style="margin-top: 15%">
				<div class="panel-heading">กรุณาเลือกรถยนต์รุ่นของท่าน</div>
				<div class="panel-body">
					<div class="form-group">
							<label for="registration_year">ปีที่จดทะเบียน
							(ค.ศ.)<span  style="color: red;">* </span>:
							</label> 
               		<select name="dropmsgoption" onChange="expandone()" class="form-control">
						<option selected>กรุณาเลือก</option>
						<option value="2017">2017</option>
						<option value="2017">2016</option>
						<option value="2017">2015</option> >
					</select>
					</div>
                    
					<div class="form-group">
						<label for="brand" >ยี่ห้อ<span
					style="color: red;">*</span>:
					</label> 
                    
                    <select id="dropmsg0" class="form-control"  >
						<option value="">กรุณาเลือก</option>
					</select>
					</div>
                    
					<div class="form-group">
                        
                  	<select id="dropmsg1" class="form-control">
						<option value="">กรุณาเลือก</option>
						<optgroup label="รถยนต์">
						<option value="AUDI">AUDI</option>
						<option value="BENZ">BENZ</option>
						<option value="BMW">BMW</option>
						<option value="CHEVROLET">CHEVROLET</option>
						<option value="FORD">FORD</option>
						<option value="HONDA">HONDA</option>
						<option value="ISUZU">ISUZU</option>
						<option value="MAZDA">MAZDA</option>
						<option value="MITSUBISHI">MITSUBISHI</option>
						<option value="NISSAN">NISSAN</option>
						<option value="SUBARU">SUBARU</option>
						<option value="SUZUKI">SUZUKI</option>
						<option value="TOYOTA">TOYOTA</option>
					</select>
                    
                    <select id="dropmsg2" class="form-control">
						<option value="">กรุณาเลือก</option>
						<optgroup label="รถยนต์">
						<option value="AUDI">AUDI</option>
						<option value="BENZ">BENZ</option>
						<option value="BMW">BMW</option>
						<option value="CHEVROLET">CHEVROLET</option>
						<option value="FORD">FORD</option>
						<option value="HONDA">HONDA</option>
						<option value="ISUZU">ISUZU</option>
						<option value="MAZDA">MAZDA</option>
						<option value="MITSUBISHI">MITSUBISHI</option>
						<option value="NISSAN">NISSAN</option>
						<option value="SUBARU">SUBARU</option>
						<option value="SUZUKI">SUZUKI</option>
						<option value="TOYOTA">TOYOTA</option>
					</select>
                    
                    <select id="dropmsg3" class="form-control">
						<option value="">กรุณาเลือก</option>
						<optgroup label="รถยนต์">
						<option value="AUDI">AUDI</option>
						<option value="BENZ">BENZ</option>
						<option value="BMW">BMW</option>
						<option value="CHEVROLET">CHEVROLET</option>
						<option value="FORD">FORD</option>
						<option value="HONDA">HONDA</option>
						<option value="ISUZU">ISUZU</option>
						<option value="MAZDA">MAZDA</option>
						<option value="MITSUBISHI">MITSUBISHI</option>
						<option value="NISSAN">NISSAN</option>
						<option value="SUBARU">SUBARU</option>
						<option value="SUZUKI">SUZUKI</option>
						<option value="TOYOTA">TOYOTA</option>
					</select>
					</div>
				<%-- 	<%@include file="car/car2017.jsp"%> --%>
			
					<!-- <div class="form-group">
					<select name="roleId" class="form-control">
					<option value="1"> Admin </option>
					<option value="2"> User </option>
					</select>
					</div> -->
				</div>
					<div class="panel-footer" align="center" style="background: transparent;">
					<input type="submit" class="btn btn-success" value="ตรวจสอบเงินที่จะได้รับ">&nbsp;
				</div>
				
			</div>
		</form>
		<div class="w3-row-padding w3-padding-16" id="about">
			<div class="w3-col m6">
				<img src="assets/img/car4.jpg" alt="Me" style="width: 100%">
			</div>
			<div class="w3-col m6">
				<img src="assets/img/car5.png" alt="Me" style="width: 100%">
			</div>
		</div>


		<div class="w3-black w3-center w3-padding-24">
			@ COPYRIGHT 2016 <a
				href="https://www.w3schools.com/w3css/default.asp" title="W3.CSS"
				target="_blank" class="w3-hover-opacity"></a>
		</div>

		<!-- End page content -->
	</div>

<script type="text/javascript" src="assets/js/nos.js"></script>
<script type="text/javascript">
function w3_open() {
	document.getElementById("mySidebar").style.display = "block";
	document.getElementById("myOverlay").style.display = "block";
}

function w3_close() {
	document.getElementById("mySidebar").style.display = "none";
	document.getElementById("myOverlay").style.display = "none";
}
function sel1() {
	
}
function fncSubmit(){
	if(document.dropmsgform.carYear.value == "")
	{
		alert('Please input carYear');
		document.dropmsgform.carYear.focus();
		return false;
	}	
	if(document.dropmsgform.carMake.value == "")
	{
		alert('Please input carMake');
		document.dropmsgform.carMake.focus();
		return false;
	}	
	if(document.dropmsgform.carMake2.value == "")
	{
		alert('Please input carMake2');
		document.dropmsgform.carMake2.focus();
		return false;
	}	
}

</script>
</body>
</html>
