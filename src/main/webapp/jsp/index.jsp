<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>

<%
	String result = "";
%>
<%
	result = (String) request.getAttribute("messessError");
%>
<html>
<head>

<link rel="stylesheet"
	href="https://maxcdn.bootstrapcdn.com/bootstrap/4.0.0/css/bootstrap.min.css">
<script
	src="https://ajax.googleapis.com/ajax/libs/jquery/3.3.1/jquery.min.js"></script>
<script
	src="https://cdnjs.cloudflare.com/ajax/libs/popper.js/1.12.9/umd/popper.min.js"></script>
<script
	src="https://maxcdn.bootstrapcdn.com/bootstrap/4.0.0/js/bootstrap.min.js"></script>
<style type="text/css">
body {
	background-color: #9999FF;
}
</style>
</head>

<body>
	<div class="container">
	<div class="form-group row">
		<div class="form-group col-md-2"></div>
		<div class="form-group col-md-8">
			<form name="login" action="login" method="post"
				OnSubmit="return fncSubmit();">
				<div class="panel panel-primary" style="margin-top: 15%">
					<div class="panel-heading" align="center"></div>
					<h2 align="center">WELCOME MAP CAR</h2>
					<br>
					<div class="panel-body">
						<%
							if (result.equals("G")) {
						%>
						<div class="alert alert-danger">
							<a href="#" class="close" data-dismiss="alert" aria-label="close">&times;</a>
							<strong>แบน </strong> โดนแบน
						</div>

						<%
							} else if (result.equals("L")) {
						%>
						<a href="#" class="close" data-dismiss="alert" aria-label="close">&times;</a>
						<div class="alert alert-success">
							<strong>Success </strong> Logout Success
						</div>
						<%
							} else if (result.equals("F")) {
						%>
						<div class="alert alert-danger">
							<a href="#" class="close" data-dismiss="alert" aria-label="close">&times;</a>
							<strong>ผิดพลาด ! </strong> กรุณากรอก ให้ถูกต้อง !!
						</div>
						<%
							}
						%>
						<div class="form-group">
							<label for="exampleInputEmail1"></label> <input type="text"
								class="form-control" placeholder="Usermane" name="username">
						</div>
						<div class="form-group">
							<label for="exampleInputPassword1"></label> <input
								type="password" class="form-control" placeholder="Password"
								name="password">
						</div>
						<br>
						<div class="panel-footer" align="right">
							<input style="width: 4cm;" type="submit" class="btn btn-outline-success"
								value="Login">&nbsp; <input style="width: 4cm;" type="button"
								class="btn btn-outline-primary" value="Register"
								onclick="register()">&nbsp;&nbsp;
						</div>
					</div>
				</div>
			</form>
		</div>
		<div class="form-group col-md-2"></div>
</div>
	</div>
	<script type="text/javascript">
		function fncSubmit() {
			if (document.login.username.value == "") {
				alert('Please input Username');
				document.login.username.focus();
				return false;
			}
			if (document.login.password.value == "") {
				alert('Please input password');
				document.login.password.focus();
				return false;
			}
		}
		function register() {
			var txt;
			if (confirm("คุณต้องการจะสมัคร หรือไม่")) {
				window.location = "/gotoresiter";

			} else {
				window.location = "/";
			}
			document.getElementById("demo").innerHTML = txt;
		}
		function black() {
			var txt;
			if (confirm("คุณต้องการจะย้อนกลับหรือไม่")) {
				window.location = "/";

			} else {
				window.location = "login";
			}
			document.getElementById("demo").innerHTML = txt;
		}
	</script>
	

	<script type="text/javascript" src="webjars/jquery/2.1.1/jquery.min.js"></script>
	<script type="text/javascript"
		src="webjars/bootstrap/3.2.0/js/bootstrap.min.js"></script>
</body>
</html>