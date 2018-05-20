<%@page import="com.bru.model.SimBean"%>
<%@page import="com.fasterxml.jackson.annotation.JsonInclude.Include"%>
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

.blank {
	width: 100%;
	margin: 150px;
}
</style>

<%
	SimBean bean = null;
%>
<%

bean = (SimBean) request.getSession().getAttribute("simbean");
%>
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
		<a href="car" onclick="w3_close()"
			class="w3-bar-item w3-button w3-padding w3-text-teal"><i
			class="	fa fa-automobile fa-fw w3-margin-right"></i>วิเคราะห์ระบบสินเชื่อรถยต์</a>
		<a href="select" onclick="w3_close()"
			class="w3-bar-item w3-button w3-padding w3-text-teal"><i
			class="fa fa-address-book-o fa-fw w3-margin-right w3-text-teal">
		</i>ข้อมูลสินเชื่อรถยนต์</a> <a href="gotoresiter" onclick="w3_close()"
			class="w3-bar-item w3-button w3-padding w3-text-teal"><i
			class="	fa fa-automobile fa-fw w3-margin-right"></i>สมัครสมาชิก</a> <a
			href="gotologin" onclick="w3_close()"
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
	
	
				<form action="gotoregister" method="post">
		<h2><%=bean.getName() %></h2>
		<input type="hidden" value="<%=bean.getPring1()%>" name="pp">
		<input type="hidden" value="<%=bean.getMycar()%>" name="Mycar">
					<input type="hidden" value="<%=bean.getMybrand()%>"
						name="Mybrand"> <input type="hidden"
						value="<%=bean.getMyYear()%>" name="MyYear">
		<table class="table table-bordered">
			<thead>
				<tr>
					<th class="col-md-4 iefix">ระยะเวลาผ่อนชำระ</th>
					<th class="col-md-4 iefix">อัตราดอกเบี้ย</th>
					<th class="col-md-4 iefix">ค่างวด (ต่อเดือน)</th>
				</tr>
			</thead>
			<tbody>
				<tr>
					<td><input type="radio" name="yy" value="12">12 งวด</td>
					<td>0.55</td>
					<td>4444</td>
				</tr>
				<tr>
					<td><input type="radio" name="yy" value="24">24 งวด</td>
					<td>0.55</td>
					<td>4444</td>
				</tr>
				<tr>
					<td><input type="radio" name="yy" value="36">36งวด</td>
					<td>0.55</td>
					<td>4444</td>
				</tr>
				<%if(bean.getPring1() >= 300000){ %>
				<tr>
					<td><input type="radio" name="yy" value="48">48 งวด</td>
					<td>0.60</td>
					<td>4444</td>
				</tr>
				<tr>
					<td><input type="radio" name="yy" value="60">60 งวด</td>
					<td>0.66</td>
					<td>4444</td>
				</tr>
				<%} %>
			</tbody>
		</table>
		<div class="panel-footer" align="center"
			style="background: transparent;">
			<input type="submit" value="ยืนยัน" class="btn btn-success">
		</div>
	</form>

<input type="button" class="btn btn-primary" align="middle" value="กลับหน้าแรก" onclick="gotohome()">&nbsp;&nbsp;
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
<script type="text/javascript">
function gotohome() {
    var txt;
    if (confirm("คุณต้องการจะกลับหน้าแรก หรือไม่")) {
    	 window.location="/"; 
    	
    } else {
    		
    }
    document.getElementById("demo").innerHTML = txt;
}
</script>
	<script type="text/javascript" src="assets/js/checknewuser.js"></script>
</body>

</html>