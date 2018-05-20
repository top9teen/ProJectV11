<%@ page language="java" contentType="text/html; charset=UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<%@ page import="java.util.List"%>
<html xmlns:th="http://www.thymeleaf.org">
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
<%
	String result = "";
%>
<%
	result = (String) request.getAttribute("msg");
%>
</head>
<body style="margin-top: 5%">
	<form name="welcome" action="register" method="post" onSubmit="return fncSubmit();">
		<div class="container">
			<div class="alert alert-success" align="right">
				<strong>Welcome new user </strong>
	
			</div>
			<%
				if (result.equals("S")) {
			%>
			<div class="alert alert-success">
				<strong>Success!</strong> Insert Success..
			</div>
			<%
				} else if (result.equals("F")) {
			%>
			<div class="alert alert-danger">
				<strong>Danger!</strong> Insert Fail !..
			</div>
			<%
				}
			%>
			<div class="form-group">
				<label for="exampleInputEmail1">Username</label> <input type="text"
					class="form-control" name="username">
			</div>
			<div class="form-group">
				<label for="exampleInputEmail1">Password</label> <input type="password"
					class="form-control" name="password">
			</div>
			<div class="form-group">
				<label for="exampleInputEmail1">Re-Password</label> <input type="password"
					class="form-control" name="repassword">
			</div>
			<button type="submit" class="btn btn-success">สมัคร</button>
			<a type="button" class="btn btn-danger"
				href="javascript: document.backForm.submit()"> Back</a>

		</div>
	</form>
	<form name="backForm" action="/" method="post"
		th:hidden="true"></form>
	<form name="logoutForm" action="logout" method="post" th:hidden="true"></form>
	<script type="text/javascript"
		src="webjars/bootstrap/3.2.0/js/bootstrap.min.js"></script>
		<script type="text/javascript" src="assets/js/checknewuser.js"></script>
</body>
</html>