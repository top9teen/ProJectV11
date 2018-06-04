<%@page import="com.bru.model.RegnameBean"%>
<%@ page language="java" contentType="text/html; charset=utf-8"
	pageEncoding="utf-8"%>
 <%@page import="com.bru.model.UserAllBean"%>
<%@page import="java.util.List"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<script
	src="https://ajax.googleapis.com/ajax/libs/jquery/3.3.1/jquery.min.js"></script>
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
	UserAllBean bean = null;
RegnameBean be = null;
%>
<%
	String result = "";
%>
<%
	result = (String) request.getAttribute("se");
%>
<%
	bean = (UserAllBean) request.getSession().getAttribute("Login");
	be  = (RegnameBean) request.getSession().getAttribute("resultBean");
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
		</a> <img src="<%=bean.getUsImg()%>" style="width: 45%;" class="w3-round"><br>
		<br>
		<h4>
			<b> Wellcome <%=bean.getUsFname()%></b>
		</h4>
		<p class="w3-text-grey">Simple web and system</p>
	</div>
	<div class="w3-bar-block">
		<a href="gototabel" onclick="w3_close()"
			class="w3-bar-item w3-button w3-padding w3-text-teal"><i
			class="	fa fa-automobile fa-fw w3-margin-right"></i>รอการตอบกลับ</a>  <a
			href="gotofist" onclick="w3_close()"
			class="w3-bar-item w3-button w3-padding w3-text-teal"><i
			class="fa fa-address-book-o fa-fw w3-margin-right w3-text-teal">
		</i>ดูรายชื่อที่ทำสินเชื่อ</a> <a href="selidcard" onclick="w3_close()"
			class="w3-bar-item w3-button w3-padding w3-text-teal"><i
			class="fa fa-address-book-o fa-fw w3-margin-right w3-text-teal">
		</i>ระบบเช็คเครดิต</a><!-- <a href="updatecar" onclick="w3_close()"
			class="w3-bar-item w3-button w3-padding w3-text-teal"><i
			class="fa fa-address-book-o fa-fw w3-margin-right w3-text-teal">
		</i>อัพเดทราคารถยนต์</a> --> <a href="logout" onclick="w3_close()"
			class="w3-bar-item w3-button w3-padding w3-text-teal"> <i
			class="	fa fa-automobile fa-fw w3-margin-right"></i>ออกจากระบบ
		</a>
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
			src="<%=bean.getUsImg()%>" style="width: 65px;"
			class="w3-circle w3-right w3-margin w3-hide-large w3-hover-opacity"></a>
		<span class="w3-button w3-hide-large w3-xxlarge w3-hover-text-grey"
			onclick="w3_open()"><i class="fa fa-bars"></i></span>
		<div class="w3-container">
			<h1>
				<b>Welcome My Car Loan Analysis System</b>
			</h1>

		</div>
		</header>

		<div class="form-group" align="center">
			<form id="loanForm" name="loanForm" action="rename" method="post"
				class="form-horizontal loan-registration" role="form"
				autocomplete="off" enctype="multipart/form-data">
				<h1 a><%=be.getRegFirstname()%></h1>

				<div class="form-group row">
					<div class="form-group col-md-6">
						<label for="firstname" class="col-sm-5 control-label">ชื่อ<span
							class="red-star">*</span>:
						</label>
						<div class="form-group col-sm-7">
						<input type="hidden" value="<%=be.getRegBankname()%>" name="bankName">
							<input type="text" maxlength="100"
								value="<%=be.getRegFirstname()%>" id="firstname"
								class="form-control" disabled="disabled"> <input
								type="hidden" value="<%=be.getRegFirstname()%>" name="firstName">
						</div>
					</div>
					<div class="form-group col-md-6">
						<label for="lastname" class="col-sm-5 control-label">นามสกุล<span
							class="red-star">*</span>:
						</label>
						<div class="form-group col-sm-7">
							<input type="text" maxlength="150"
								value="<%=be.getRegLastname()%>" id="lastname"
								class="form-control" disabled="disabled"> <input
								type="hidden" value="<%=be.getRegLastname()%>" name="lastName">
						</div>
					</div>
				</div>
				<div class="form-group col-md-6">
					<label for="age" class="col-sm-5 control-label">อายุ<span
						class="red-star">*</span>:
					</label>
					<div class="form-group col-sm-7">
						<input type="number" maxlength="3" value="<%=be.getRegAge()%>"
							id="age" class="form-control" disabled="disabled"> <input
							type="hidden" value="<%=be.getRegAge()%>" name="age">
					</div>
				</div>
				<div class="form-group col-md-6">
					<label for="province" class="col-sm-5 control-label">จังหวัดที่อยู่ปัจจุบัน<span
						class="red-star">*</span>:
					</label>
					<div class="form-group col-sm-7">
						<input type="text" value="<%=be.getRegProvince()%>" id="age"
							class="form-control" disabled="disabled"> <input
							type="hidden" value="<%=be.getRegProvince()%>" name="province">
					</div>
				</div>

				<div class="form-group row ">
					<div class="form-group col-md-6">
						<label for="tel" class="col-sm-5 control-label">เบอร์โทรศัพท์ที่ติดต่อได้<span
							class="red-star">*</span>:
						</label>
						<div class="col-sm-7">
							<input type="number" name="" maxlength="50"
								value="<%=be.getRegTelephone()%>" id="tel"
								class="form-control" disabled="disabled"> <input
								value="<%=be.getRegTelephone()%>" type="hidden"
								name="telephoneNo">
						</div>
					</div>
					<div class="form-group col-md-6">
						<label for="tel" class="col-sm-5 control-label">เลขบัตรประชาชน<span
							class="red-star">*</span>:
						</label>
						<div class="form-group col-sm-7">
							<input type="number" name="" maxlength="13"
								value="<%=be.getRegIdCard()%>" disabled="disabled" class="form-control"> <input
								value="<%=be.getRegIdCard()%>" type="hidden" name="idcard">
						</div>
					</div>
					<div class="form-group col-md-6">
						<label for="email" class="col-sm-5 control-label">อีเมล์<span
							class="red-star">*</span>:
						</label>
						<div class="form-group col-sm-7">
							<input type="text" name="" maxlength="90"
								value="<%=be.getRegEmail()%>" id="email" class="form-control"
								disabled="disabled"> <input
								value="<%=be.getRegEmail()%>" type="hidden" name="email">
						</div>
					</div>
				</div>
				<div class="form-group row ">
					<div class="form-group col-md-6">
						<label for="brand" class="col-sm-5 control-label">ยี่ห้อ<span
							class="red-star">*</span>:
						</label>
						<div class="form-group col-sm-7">
							<input type="text" maxlength="50" value="<%=be.getRegCarmake()%>"
								id="brand" class="form-control" disabled="disabled"> <input
								type="hidden" name="carMake" value="<%=be.getRegCarmake()%>">

						</div>
					</div>
					<div class="form-group col-md-6">
						<label for="model" class="col-sm-5 control-label">รุ่น<span
							class="red-star">*</span>:
						</label>
						<div class="form-group col-sm-7">
							<input type="text" name="" maxlength="250"
								value="<%=be.getRegCarmodel()%>" id="model" disabled="disabled"
								class="form-control"> <input type="hidden"
								name="carModel" value="<%=be.getRegCarmodel()%>">
						</div>
					</div>
				</div>
				<div class="form-group row ">
					<div class="form-groupcol-md-6">
						<label for="year_registration" class="col-sm-5 control-label">ปีที่จดทะเบียน
							(ค.ศ.)<span class="red-star">*</span>:
						</label>
						<div class="form-group col-sm-7">

							<input type="text" name="" maxlength="13"
								value="<%=be.getRegTotalincome()%>" id="income"
								class="form-control" disabled="disabled"> <input
								type="hidden" name="totalIncome"
								value="<%=be.getRegTotalincome()%>" id="income"
								class="form-calculate">

						</div>
					</div>
					<div class="form-group col-md-6">
						<label for="income" class="col-sm-5 control-label">รายได้สุทธิต่อเดือน<span
							class="red-star">*</span>:
						</label>
						<div class="form-group col-sm-7">
							<input type="text" name="" disabled="disabled"
								value="<%=be.getRegSalary()%>" id="income"
								class="form-control"> <input type="hidden"
								value="<%=be.getRegSalary()%>" name="salary">
						</div>
					</div>
				</div>
				<div class="form-group row ">
					<div class="form-group col-md-6">
						<label for="loan_amount" class="col-sm-5 control-label">วงเงินขั้นต่ำที่ต้องการ<span
							class="red-star">*</span>:
						</label>
						<div class="form-group col-sm-7">
							<input type="text" name="" maxlength="13"
								value="<%=be.getRegLesslimit()%>" id="loan_amount"
								class="form-control" disabled="disabled"> <input
								type="hidden" name="lessLimit" value="<%=be.getRegLesslimit()%>"
								class="form-control">

						</div>
					</div>
				
				<div class="form-group col-md-6">
					<label for="period" class="col-sm-5 control-label">ระยะเวลาในการชำระคืน<span
						class="red-star">*</span>:
					</label>
					<div class="form-group col-sm-7">

						<input type="text" maxlength="13" value="<%=be.getRegLessday()%>"
							id="loan_amount" class="form-control" disabled> <input
							type="hidden" name="lassday" value="<%=be.getRegLessday()%>"
							class="form-control">
					</div>
					</div>
				</div>
				<div class="form-group row">
			<div class="form-group col-md-3" >
			</div>
						<div class="form-group col-md-6" >
					<label for="period" class="col-sm-5 control-label">
						รูปรถด้านหน้า<span class="red-star">*</span>:
					</label> <input type="hidden" value="<%=be.getRegImgfront()%>" name="file1">
					<img alt="" src="<%=be.getRegImgfront()%>"style="width: 900px;height: 720px;">
				
				
					<label for="period" class="col-sm-5 control-label">
						รูปรถด้านหลัง<span class="red-star">*</span>:
					</label> <input type="hidden" value="<%=be.getRegImgback()%>" name="file2">
					<img alt="" src="<%=be.getRegImgback()%>"style="width: 900px;height: 720px;">
				
					<label for="period" class="col-sm-5 control-label">
						รูปรถด้านซ้าย<span class="red-star">*</span>:
					</label> <input type="hidden" value="<%=be.getRegImgLeft()%>" name="file3">
					<img alt="" src="<%=be.getRegImgLeft()%>"style="width: 900px;height: 720px;">
				
					<label for="period" class="col-sm-5 control-label">
						รูปรถด้านขวา<span class="red-star">*</span>:
					</label> <input type="hidden" value="<%=be.getRegImgright()%>" name="file4">
					<img alt="" src="<%=be.getRegImgright()%>"style="width: 900px;height: 720px;">
				</div>
					<div class="form-group col-md-3" >
						</div>
				</div> 
			

				<br>
				<div id="divSubmit" class="row " align="center">
					<div class="col-md-6">
						<label class="col-sm-5 control-label">&nbsp;</label>
						<a ></a>
							<a type="button" class="btn btn-danger" onclick="black()">
								Back</a>
						</div>
					</div>
</form>
				</div>

			

		</div>
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
		function fncSubmit() {
			if (document.gotohome.email.value == "") {
				alert('Please input Email');
				document.gotohome.username.focus();
				return false;
			}
			if (document.gotohome.password.value == "") {
				alert('Please input password');
				document.gotohome.password.focus();
				return false;
			}
		}
		function black() {
			var txt;
			if (confirm("คุณต้องการจะย้อนกลับหรือไม่")) {
				window.location = "/gototabel";

			}
			document.getElementById("demo").innerHTML = txt;
		}
	</script>

</body>
</html>