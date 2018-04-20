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
<style>
body, h1, h2, h3, h4, h5, h6 {
	font-family: "Raleway", sans-serif
}

.blank {
	width: 100%;
	margin: 150px;
	
}
</style>
<%
	String result = "";
%>
<%
	result = (String) request.getAttribute("msg");
%>

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
		</i>ข้อมูลสินเชื่อรถยนต์</a> <a href="#portfolio" onclick="w3_close()"
			class="w3-bar-item w3-button w3-padding w3-text-teal"><i
			class="	fa fa-automobile fa-fw w3-margin-right"></i>เข้าสู่ระบบ</a> <a
			href="#contact" onclick="w3_close()"
			class="w3-bar-item w3-button w3-padding"><i
			class="fa fa-envelope fa-fw w3-margin-right w3-text-teal"></i>เกี่ยวกับเรา</a>
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
		<% if (result.equals("0")) { %>
		<div class="w3-row-padding">
			<div class="w3-third w3-container w3-margin-bottom">
				<img src="assets/img/car1.png" alt="Norway" style="width: 100%"
					class="w3-hover-opacity">
				<div class="w3-container w3-white"></div>
			</div>
			<div class="w3-third w3-container w3-margin-bottom">
				<img src="assets/img/car2.jpg" alt="Norway" style="width: 100%"
					class="w3-hover-opacity">
				<div class="w3-container w3-white"></div>
			</div>
			<div class="w3-third w3-container">
				<img src="assets/img/car3.jpg" alt="Norway" style="width: 100%"
					class="w3-hover-opacity">
				<div class="w3-container w3-white"></div>
			</div>
		</div>
		<%} else if(result.equals("select")){ %>
		<div class="blank">
		<%@include file="KBANK.jsp" %>
		</div>
			<%} else if(result.equals("2")){ %>
		<div class="blank">
		<%@include file="BAY.jsp" %>
		</div>
			<%} else if(result.equals("3")){ %>
		<div class="blank">
		<%@include file="SCB.jsp" %>
		</div>
			<%} else if(result.equals("4")){ %>
		<div class="blank">
		<%@include file="NBANK.jsp" %>
		</div>
			<%} %>
		
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

	<script>
		// Script to open and close sidebar
		function w3_open() {
			document.getElementById("mySidebar").style.display = "block";
			document.getElementById("myOverlay").style.display = "block";
		}

		function w3_close() {
			document.getElementById("mySidebar").style.display = "none";
			document.getElementById("myOverlay").style.display = "none";
		}
	</script>

</body>
</html>