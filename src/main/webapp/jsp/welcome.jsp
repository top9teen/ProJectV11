<%@ page language="java" contentType="text/html; charset=utf-8"
	pageEncoding="utf-8"%>
<%@page import="java.util.List"%>
<%@page import="com.bru.model.*"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=utf-8">
<script
	src="assets/jquery/jquery.min.js"></script>
<link rel="stylesheet" href="assets/css/w3css.css">
<link rel="stylesheet"
	href="https://fonts.googleapis.com/css?family=Raleway">
<link rel="stylesheet"
	href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/4.7.0/css/font-awesome.min.css">
<!-- Latest compiled and minified CSS -->
<link rel="stylesheet"
	href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/css/bootstrap.min.css">

	<script src="https://cdn.datatables.net/1.10.12/js/jquery.dataTables.min.js"></script>
	
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
	UserAllBean bean = null;
%>
<%
	String result = "";
	String result2 = "";
%>
<%
	bean = (UserAllBean) request.getSession().getAttribute("Login");
%>
<%
	result = (String) request.getAttribute("msg");
	result2 = (String) request.getAttribute("box");
%>

<title>Welcome My <%=bean.getUsFname()%></title>
</head>
<body class="w3-light-grey w3-content" style="max-width: 1600px">

	<!-- Sidebar/menu -->
	<nav class="w3-sidebar w3-collapse w3-white w3-animate-left"
		style="z-index:3;width:300px;" id="mySidebar">
	<div class="w3-container">
		<a href="#" onclick="w3_close()"
			class="w3-hide-large w3-right w3-jumbo w3-padding w3-hover-grey"
			title="close menu"> <i class="fa fa-remove"></i>
		</a> <img src="<%=bean.getUsImg()%>" style="width: 45%;" class="w3-round"><br>
		<br>
		<h4>
			<b> Welcome My <%=bean.getUsFname()%></b>
		</h4>
	
		<p class="w3-text-grey"><%=bean.getUsFname()%></p>
	</div>
		<%@include file="User/hader.jsp"%>
	</nav>

	<!-- Overlay effect when opening sidebar on small screens -->
	<div class="w3-overlay w3-hide-large w3-animate-opacity"
		onclick="w3_close()" style="cursor: pointer" title="close side menu"
		id="myOverlay"></div>

	<!-- !PAGE CONTENT! -->
	<div class="w3-main" style="margin-left: 300px">

		<!-- Header -->
		<header id="portfolio"> <a href="#"><img
			src="<%=bean.getUsImg()%>" style="width: 65px;"
			class="w3-circle w3-right w3-margin w3-hide-large w3-hover-opacity"></a>
		<span class="w3-button w3-hide-large w3-xxlarge w3-hover-text-grey"
			onclick="w3_open()"><i class="fa fa-bars"></i></span>
		<div class="w3-container">
			
			<h1 align="center">
				<b>Welcome My Car Loan Analysis System</b>
			</h1>

		</div>
		</header>
		
		
		<%
		 if(result2.equals("car")) {
		%>
		<%@include file="User/car2.jsp" %>
		<%} %>
		<%
			if (result.equals("0")) {
		%>
		
		<%@include file="Bank/dag.jsp"%>
		<%
			} else if (result2.equals("select")) {
		%>
		<div align="center">
			<a class="btn btn-primary" href="goto1" role="button">Kasikornbank</a>
			<a class="btn btn-primary" href="goto2" role="button">Bank of
				Ayudhya</a> <a class="btn btn-primary" href="goto3" role="button">Siam
				Commercial Bank</a> <a class="btn btn-primary" href="goto4"
				role="button">Thanachart Bank Public Company Limited</a>
		</div>
		<%
			} else if (result2.equals("lg")) {
		%>
		<%
			}
			if (result.equals("1")) {
		%>
		<div class="blank">
			<%@include file="Bank/KBANK.jsp"%>
		</div>
		<%
			}
			if (result.equals("2")) {
		%>
		<div class="blank">
			<%@include file="Bank/BAY.jsp"%>
		</div>
		<%
			}
			if (result.equals("3")) {
		%>
		<div class="blank">
			<%@include file="Bank/SCB.jsp"%>
		</div>
		<%
			}
			if (result.equals("4")) {
		%>
		<div class="blank">
			<%@include file="Bank/NBANK.jsp"%>
		</div>
		<%
			}
		%>
		<%if(result.equals("5")){ %>
		<%@include file="User/banksalary.jsp"%>
		
		<%} %>
	<%if(result.equals("6")){ %>
		<%@include file="User/pr2.jsp"%>
		<%} %>
		<%if(result.equals("7")){ %>
		<%@include file="User/tabeltip.jsp"%>
		<%} %>
			<%if(result.equals("10")){ %>
		<%@include file="User/tabeltip2.jsp"%>
		<%} %>
		<%if(result.equals("8")){ %>
		<%@include file="User/seluser.jsp"%>
		<%} %>
		<%if(result.equals("9")){ %>
		<%@include file="User/seluser2.jsp"%>
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

	<script type="text/javascript" src="assets/js/checknewuser.js"></script>
	<script type="text/javascript" src="assets/js/selcarall.js"></script>
	

</body>
</html>