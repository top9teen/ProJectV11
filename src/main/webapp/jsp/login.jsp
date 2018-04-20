<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
 <!-- Latest compiled and minified CSS -->
<link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/css/bootstrap.min.css">

<!-- Optional theme -->
<link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/css/bootstrap-theme.min.css">

<!-- Latest compiled and minified JavaScript -->
<script src="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/js/bootstrap.min.js" ></script>

<title>Insert title here</title>
</head>
<body>
<%
	String result = "";
%>
<%
	result = (String) request.getAttribute("messessError");
%>
<div class="container" >
		<form name="gotohome" action="login" method="post" OnSubmit="return fncSubmit();">
			<div class="panel panel-primary" style="margin-top: 15%">
				<div class="panel-heading">Login</div>
				<div class="panel-body">
					<%
						if (result.equals("F")) {
					%>
					<div class="alert alert-danger">
						<strong>Faill ! </strong> You Login Faill !!
					</div>
					<%
						}else if(result.equals("L")){
					%>
							<div class="alert alert-success">
						<strong>Success </strong> Logout Success
					</div>
					<%} %>
					<div class="form-group">
						<label for="exampleInputEmail1">ID Card</label> <input type="text"
							class="form-control" placeholder="Email" name="email">
					</div>
					<div class="form-group">
						<label for="exampleInputPassword1">Password</label> <input
							type="password" class="form-control" placeholder="Password"
							name="password">
					</div>
					<!-- <div class="form-group">
					<select name="roleId" class="form-control">
					<option value="1"> Admin </option>
					<option value="2"> User </option>
					</select>
					</div> -->
				</div>
					<div class="panel-footer" align="right" style="background: transparent;">
					<input type="submit" class="btn btn-success" value="Login">&nbsp;
				</div>
			</div>

		</form>
	</div>
</body>
<script type="text/javascript">
	
	function fncSubmit(){
		if(document.gotohome.email.value == "")
		{
			alert('Please input Email');
			document.gotohome.username.focus();
			return false;
		}	
		if(document.gotohome.password.value == "")
		{
			alert('Please input password');
			document.gotohome.password.focus();
			return false;
		}	
	}
	
	</script>
</html>