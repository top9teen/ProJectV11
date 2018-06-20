<%@page import="com.bru.model.SimBean"%>
<%@ page language="java" contentType="text/html; charset=utf-8"
	pageEncoding="utf-8"%>
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

span {
	color: red;
}
</style>

<%
	SimBean bean = null;
%>
<%
	bean = (SimBean) request.getSession().getAttribute("simbean");
%>
<title>Welcome to <%=bean.getFname() %></title>
</head>
<body class="w3-light-grey w3-content" style="max-width: 1600px">

	<!-- Sidebar/menu -->
	<nav class="w3-sidebar w3-collapse w3-white w3-animate-left"
		style="z-index:3;width:300px;" id="mySidebar">
	<div class="w3-container">
		<a href="#" onclick="w3_close()"
			class="w3-hide-large w3-right w3-jumbo w3-padding w3-hover-grey"
			title="close menu"> <i class="fa fa-remove"></i>
		</a> <img src="assets/img/imgpro/noname.png" style="width: 45%;"
			class="w3-round"><br> <br>
		<h4>
			<b> Welcome My <%=bean.getFname()%></b>
		</h4>
		<p class="w3-text-grey"><%=bean.getFname()%></p>
	</div>
	<%@include file="User/hader.jsp"%> </nav>

	<!-- Overlay effect when opening sidebar on small screens -->
	<div class="w3-overlay w3-hide-large w3-animate-opacity"
		onclick="w3_close()" style="cursor: pointer" title="close side menu"
		id="myOverlay"></div>

	<!-- !PAGE CONTENT! -->
	<div class="w3-main" style="margin-left: 300px">

		<!-- Header -->
		<header id="portfolio"> <a href="#"><img
			src="assets/img/imgpro/noname.png" style="width: 65px;"
			class="w3-circle w3-right w3-margin w3-hide-large w3-hover-opacity"></a>
		<span class="w3-button w3-hide-large w3-xxlarge w3-hover-text-grey"
			onclick="w3_open()"><i class="fa fa-bars"></i></span>
		<div class="w3-container">
			<h1 align="center">
				<b>Welcome My Car Loan Analysis System</b>
			</h1>

		</div>
		</header>
	</div>
	<!-- First Photo Grid-->
	<div class="form-group col-md-3"></div>



	<div class="form-group col-md-9" align="center">
		<form id="loanForm" name="loanForm" action="finish" method="post"
			class="form-horizontal loan-registration" role="form"
			autocomplete="off" enctype="multipart/form-data"
			OnSubmit="return fncSubmit();">
			<h1 align="center"><%=bean.getName()%></h1>
			<br> <input type="hidden" name="bankName"
				value="<%=bean.getName()%>"> <input name="lat" id="lat"
				value="22" type="hidden" style="width: 785px;"> <input
				name="log" id="log" value="11" type="hidden" style="width: 785px;">
			<div class="form-group row">
				<div class="form-group col-md-6">
					<label for="firstname" class="col-sm-5 control-label">ชื่อ<span
						class="red-star">*</span>:
					</label>
					<div class="form-group col-sm-7">
						<input type="hidden" name="firstName" maxlength="100"
							value="<%=bean.getFname() %>" id="firstname" class="form-control">
						<input type="text" name="" maxlength="100"
							value="<%=bean.getFname() %>" id="firstname" class="form-control"
							disabled="disabled">
					</div>
				</div>
				<div class="form-group col-md-6">
					<label for="lastname" class="col-sm-5 control-label">นามสกุล<span
						class="red-star">*</span>:
					</label>
					<div class="form-group col-sm-7">
						<input type="hidden" name="lastName" maxlength="150"
							value="<%=bean.getLname() %>" id="lastname" class="form-control">
						<input type="text" name="" maxlength="150"
							value="<%=bean.getLname() %>" id="lastname" class="form-control"
							disabled="disabled">
					</div>
				</div>
			</div>

			<div class="form-group row ">
				<div class="form-group col-md-6">
					<label for="age" class="col-sm-5 control-label">อายุ<span
						class="red-star">*</span>:
					</label>
					<div class="form-group col-sm-7">
						<input type="number" name="age" min="20" max="100" value=""
							id="age" class="form-control">
					</div>
				</div>
				<div class="form-group col-md-6">
					<label for="province" class="col-sm-5 control-label">จังหวัดที่อยู่ปัจจุบัน<span
						class="red-star">*</span>:
					</label>
					<div class="form-group col-sm-7">
						<select name="provinceId" id="province" class="form-control">
						</select>
					</div>
					<label for="province" class="col-sm-5 control-label">อำเภอที่อยู่ปัจจุบัน<span
						class="red-star">*</span>:
					</label>
					<div class="form-group col-sm-7">
						<select name="amphurId" id="amphur" class="form-control">
						</select>
					</div>
					<label for="province" class="col-sm-5 control-label">ตำบลที่อยู่ปัจจุบัน<span
						class="red-star">*</span>:
					</label>
					<div class="form-group col-sm-7">
						<select name="districtId" id="district" class="form-control">
						</select>
					</div>
					<label for="province" class="col-sm-5 control-label">บ้านเลขที่และหมู่บ้านที่อยู่ปัจจุบัน<span
						class="red-star">*</span>:
					</label>
					<div class="form-group col-sm-7">
						<input name="mobanId" id="" class="form-control">

					</div>
				</div>

			</div>


			<div class="form-group row ">
				<div class="form-group col-md-6">
					<label for="tel" class="col-sm-5 control-label">เบอร์โทรศัพท์ที่ติดต่อได้<span
						class="red-star">*</span>:
					</label>
					<div class="form-group col-sm-7">
						<input type="text" name="telephoneNo" maxlength="10" value=""
							id="tel" class="form-control">
					</div>
				</div>
				<div class="form-group col-md-6">
					<label for="tel" class="col-sm-5 control-label">เลขบัตรประชาชน<span
						class="red-star">*</span>:
					</label>
					<div class="form-group col-sm-7">
						<input type="text" name="idcard" class="form-control" value=""
							maxlength="13">
					</div>
				</div>
				<div class="form-group col-md-6">
					<label for="email" class="col-sm-5 control-label">อีเมล์<span
						class="red-star">*</span>:
					</label>
					<div class="form-group col-sm-7">
						<input type="text" name="email" maxlength="90" value="" id="email"
							class="form-control">
					</div>
				</div>
			</div>


			<div class="form-group row ">
				<div class="form-group col-md-6">
					<label for="brand" class="col-sm-5 control-label">ยี่ห้อ<span
						class="red-star">*</span>:
					</label>
					<div class="form-group col-sm-7">
						<input type="text" maxlength="50" value="<%=bean.getMycar()%>"
							id="brand" class="form-control" disabled="disabled"> <input
							type="hidden" name="carMake" value="<%=bean.getMycar()%>">

					</div>
				</div>
				<div class="form-group col-md-6">
					<label for="model" class="col-sm-5 control-label">รุ่น<span
						class="red-star">*</span>:
					</label>
					<div class="form-group col-sm-7">
						<input type="text" name="" maxlength="250"
							value="<%=bean.getMybrand()%>" id="model" disabled="disabled"
							class="form-control"> <input type="hidden"
							name="carModel" value="<%=bean.getMybrand()%>">
					</div>
				</div>
			</div>


			<div class="form-group row ">
				<div class="form-group col-md-6">
					<label for="year_registration" class="col-sm-5 control-label">ปีที่จดทะเบียน
						(ค.ศ.)<span class="red-star">*</span>:
					</label>
					<div class="form-group col-sm-7">

						<input type="text" name="" maxlength="13"
							value="<%=bean.getMyYear()%>" id="income" class="form-control"
							disabled="disabled"> <input type="hidden"
							name="totalIncome" value="<%=bean.getMyYear()%>" id="income"
							class="">

					</div>
				</div>
				<div class="form-group col-md-6">
					<label for="income" class="col-sm-5 control-label">รายได้สุทธิต่อเดือน<span
						class="red-star">*</span>:
					</label>
					<div class="form-group col-sm-7">
						<input type="text" name="salary" maxlength="13" value=""
							id="income" class="form-control">
					</div>
				</div>
			</div>

			<div class="form-group row ">
				<div class="form-group col-md-6">
					<label for="loan_amount" class="col-sm-5 control-label">วงเงินขั้นต่ำที่ต้องการ<span
						class="red-star">*</span>:
					</label>
					<div class="form-group col-sm-7">
						<input type="text" name="lessLimit" maxlength="13"
							value="<%=bean.getPring1()%>" id="loan_amount"
							class="form-control"
							onblur="isCurrency(this); FormatNumber(this, 2);"
							disabled="disabled"> <input type="hidden"
							name="lessLimit" value="<%=bean.getPring1()%>"
							class="form-control">


					</div>
				</div>
				<div class="form-group col-md-6">
					<label for="period" class="col-sm-5 control-label">ระยะเวลาในการชำระคืน<span
						class="red-star">*</span>:
					</label>
					<div class="form-group col-sm-7">

						<input type="text" maxlength="13" value="<%=bean.getHos()%>"
							id="loan_amount" class="form-control" disabled> <input
							type="hidden" name="lassday" value="<%=bean.getHos()%>"
							class="form-control">
					</div>
				</div>
			</div>


			<div class="form-group row">
				<div class="form-group col-md-3"></div>
				<div class="form-group col-md-6">
					<label for="period" class="form-group"> รูปรถของท่าน<span
						class="red-star">*</span>:
					</label> <br> <label for="period" class="form-group">
						รูปรถด้านหน้า<span class="red-star">*</span>:
					</label> <input type="file" name="file1" class="form-control"> <label
						for="period" class="form-group"> รูปรถด้าหลัง<span
						class="red-star">*</span>:
					</label> <input type="file" name="file2" class="form-control"> <label
						for="period" class="form-group"> รูปรถด้านซ้าย<span
						class="red-star">*</span>:
					</label> <input type="file" name="file3" class="form-control"> <label
						for="period" class="form-group"> รูปรถด้านขวา<span
						class="red-star">*</span>:
					</label> <input type="file" name="file4" class="form-control">

				</div>
				<div class="form-group col-md-3"></div>
			</div>
			<div id="divSubmit" class="row ">
				<div class="form-group col-md-6">
					<label class="col-sm-5 control-label">&nbsp;</label>
					<div class="col-sm-7">
						<button type="submit" class="btn btn-success">ส่งข้อมูล</button>
						<a type="button" class="btn btn-danger" onclick="black()">
							Back</a>
					</div>
				</div>
			</div>


		</form>

	</div>
	<form name="backForm" action="/" method="post" th:hidden="true"></form>
	<div class="w3-row-padding w3-padding-16" id="about">
		<div class="w3-col m6">
			<img src="assets/img/car4.jpg" alt="Me" style="width: 100%">
		</div>
		<div class="w3-col m6">
			<img src="assets/img/car5.png" alt="Me" style="width: 100%">
		</div>
	</div>


	<div class="w3-black w3-center w3-padding-24">
		@ COPYRIGHT 2016 <a href="https://www.w3schools.com/w3css/default.asp"
			title="W3.CSS" target="_blank" class="w3-hover-opacity"></a>
	</div>

	<!-- End page content -->


	<script type="text/javascript" src="assets/js/checknewuser.js"></script>
	<script type="text/javascript" src="assets/js/province.js"></script>
	<script type="text/javascript" src="assets/js/reg.js"></script>
</body>

<script>
    $(document).ready(function() {

    	 

    	  if (!navigator.geolocation){
    	   
    	    return;
    	  }

    	  function success(position) {
    	    var t1  = position.coords.latitude;
    	    var t2 = position.coords.longitude;
    	    
    	   // $('#test1').val(t1);
    	   
    	    $('#lat').val(t1);
    	    $('#log').val(t2);
    	  }

    	  function error() {
    	  
    	    
    	   // $('#test1').val(t1);
    	    
    	    $('#bb').val('10');
    	    $('#aa').val('10');
    	  }



    	  navigator.geolocation.getCurrentPosition(success, error);
    	 
    	});
    </script>
</html>