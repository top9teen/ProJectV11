<%@page import="com.bru.model.SimBean"%>
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
	SimBean bean =null;
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
		<div class="form-group" align="center">
			<form id="loanForm" name="loanForm" action="finish" method="post"
				class="form-horizontal loan-registration" role="form"
				autocomplete="off">



				<div class="row">
					<div class="col-md-12">
						<label class="col-sm-12"><span class="red-star"> </span> </label>
					</div>
				</div>
				<div class="row fadeInBlock" style="opacity: 1;">
					<input type="hidden" name="form.carPriceListId" value="3131203"
						id="loanForm_form_carPriceListId">
					<div class="col-md-6">
						<label for="prefix" class="col-sm-5 control-label">คำนำหน้าชื่อ<span
							class="red-star">*</span>:
						</label>
						<div class="col-sm-7">
							<select name="form.prefixId" id="prefix" class="selectlist">
								<option value="">กรุณาเลือก</option>
								<option value="1">นาย</option>
								<option value="2">นาง</option>
								<option value="3">นางสาว</option>


							</select> <input type="hidden" name="form.prefixName" value=""
								id="prefixName">
						</div>
					</div>
				</div>
				<div class="row">
					<div class="col-md-6">
						<label for="firstname" class="col-sm-5 control-label">ชื่อ<span
							class="red-star">*</span>:
						</label>
						<div class="col-sm-7">
							<input type="text" name="form.firstName" maxlength="100" value=""
								id="firstname" class="form-calculate">
						</div>
					</div>
					<div class="col-md-6">
						<label for="lastname" class="col-sm-5 control-label">นามสกุล<span
							class="red-star">*</span>:
						</label>
						<div class="col-sm-7">
							<input type="text" name="form.lastName" maxlength="150" value=""
								id="lastname" class="form-calculate">
						</div>
					</div>
				</div>
				<div class="row ">
					<div class="col-md-6">
						<label for="age" class="col-sm-5 control-label">อายุ<span
							class="red-star">*</span>:
						</label>
						<div class="col-sm-7">
							<input type="text" name="form.age" maxlength="3" value="0"
								id="age" class="form-calculate" onblur="isNumeric(this);">
						</div>
					</div>
					<div class="col-md-6">
						<label for="province" class="col-sm-5 control-label">จังหวัดที่อยู่ปัจจุบัน<span
							class="red-star">*</span>:
						</label>
						<div class="col-sm-7">
							<select name="form.provinceId" id="province" class="selectlist">
								<option value="">กรุณาเลือก</option>
								<option value="72">กระบี่</option>
								<option value="43">กรุงเทพมหานคร</option>
								<option value="48">กาญจนบุรี</option>
								<option value="23">กาฬสินธุ์</option>
								<option value="3">กำแพงเพชร</option>
								<option value="24">ขอนแก่น</option>
								<option value="46">จันทบุรี</option>
								<option value="44">ฉะเชิงเทรา</option>
								<option value="47">ชลบุรี</option>
								<option value="45">ชัยนาท</option>
								<option value="22">ชัยภูมิ</option>
								<option value="71">ชุมพร</option>
								<option value="2">เชียงราย</option>
								<option value="1">เชียงใหม่</option>
								<option value="83">ตรัง</option>
								<option value="65">ตราด</option>
								<option value="14">ตาก</option>
								<option value="51">นครนายก</option>
								<option value="50">นครปฐม</option>
								<option value="27">นครพนม</option>
								<option value="28">นครราชสีมา</option>
								<option value="73">นครศรีธรรมราช</option>
								<option value="7">นครสวรรค์</option>
								<option value="52">นนทบุรี</option>
								<option value="74">นราธิวาส</option>
								<option value="8">น่าน</option>
								<option value="89">บึงกาฬ</option>
								<option value="21">บุรีรัมย์</option>
								<option value="88">เบตง</option>
								<option value="53">ปทุมธานี</option>
								<option value="56">ประจวบคีรีขันธ์</option>
								<option value="55">ปราจีนบุรี</option>
								<option value="75">ปัตตานี</option>
								<option value="42">พระนครศรีอยุธยา</option>
								<option value="17">พะเยา</option>
								<option value="76">พังงา</option>
								<option value="77">พัทลุง</option>
								<option value="10">พิจิตร</option>
								<option value="11">พิษณุโลก</option>
								<option value="54">เพชรบุรี</option>
								<option value="9">เพชรบูรณ์</option>
								<option value="12">แพร่</option>
								<option value="78">ภูเก็ต</option>
								<option value="26">มหาสารคาม</option>
								<option value="37">มุกดาหาร</option>
								<option value="6">แม่ฮ่องสอน</option>
								<option value="36">ยโสธร</option>
								<option value="84">ยะลา</option>
								<option value="30">ร้อยเอ็ด</option>
								<option value="79">ระนอง</option>
								<option value="58">ระยอง</option>
								<option value="57">ราชบุรี</option>
								<option value="49">ลพบุรี</option>
								<option value="4">ลำปาง</option>
								<option value="5">ลำพูน</option>
								<option value="25">เลย</option>
								<option value="32">ศรีสะเกษ</option>
								<option value="31">สกลนคร</option>
								<option value="81">สงขลา</option>
								<option value="80">สตูล</option>
								<option value="59">สมุทรปราการ</option>
								<option value="61">สมุทรสงคราม</option>
								<option value="60">สมุทรสาคร</option>
								<option value="87">สระแก้ว</option>
								<option value="63">สระบุรี</option>
								<option value="62">สิงห์บุรี</option>
								<option value="13">สุโขทัย</option>
								<option value="64">สุพรรณบุรี</option>
								<option value="82">สุราษฎร์ธานี</option>
								<option value="33">สุรินทร์</option>
								<option value="29">หนองคาย</option>
								<option value="86">หนองบัวลำภู</option>
								<option value="41">อ่างทอง</option>
								<option value="85">อำนาจเจริญ</option>
								<option value="35">อุดรธานี</option>
								<option value="16">อุตรดิตถ์</option>
								<option value="15">อุทัยธานี</option>
								<option value="34">อุบลราชธานี</option>


							</select> <input type="hidden" name="form.provinceName" value=""
								id="provinceName">
						</div>
					</div>
				</div>
				<div class="row ">
					<div class="col-md-6">
						<label for="tel" class="col-sm-5 control-label">เบอร์โทรศัพท์ที่ติดต่อได้<span
							class="red-star">*</span>:
						</label>
						<div class="col-sm-7">
							<input type="text" name="form.telephoneNo" maxlength="50"
								value="" id="tel" class="form-calculate">
						</div>
					</div>
					<div class="col-md-6">
						<label for="email" class="col-sm-5 control-label">อีเมล์<span
							class="red-star">*</span>:
						</label>
						<div class="col-sm-7">
							<input type="text" name="form.email" maxlength="90" value=""
								id="email" class="form-calculate">
						</div>
					</div>
				</div>
				<div class="row ">
					<div class="col-md-6">
						<label for="brand" class="col-sm-5 control-label">ยี่ห้อ<span
							class="red-star">*</span>:
						</label>
						<div class="col-sm-7">
							<input type="text" name="form.carMake" maxlength="50"
								value="<%=bean.getMycar() %>" id="brand" class="form-calculate" disabled="disabled">
						</div>
					</div>
					<div class="col-md-6">
						<label for="model" class="col-sm-5 control-label">รุ่น<span
							class="red-star">*</span>:
						</label>
						<div class="col-sm-7">
							<input type="text" name="form.carModel" maxlength="250"
								value="<%=bean.getMybrand() %>" id="model" disabled="disabled"
								class="form-calculate">
						</div>
					</div>
				</div>
				<div class="row ">
					<div class="col-md-6">
						<label for="year_registration" class="col-sm-5 control-label">ปีที่จดทะเบียน
							(ค.ศ.)<span class="red-star">*</span>:
						</label>
						<div class="col-sm-7">
						
<input type="text" name="form.totalIncome" maxlength="13"
								value="<%=bean.getMyYear() %>" id="income" class="form-calculate" disabled="disabled"
								>
						</div>
					</div>
					<div class="col-md-6">
						<label for="income" class="col-sm-5 control-label">รายได้สุทธิต่อเดือน<span
							class="red-star">*</span>:
						</label>
						<div class="col-sm-7">
							<input type="text" name="form.totalIncome" maxlength="13"
								value="" id="income" class="form-calculate"
								onblur="isCurrency(this); FormatNumber(this, 2);">
						</div>
					</div>
				</div>
				<div class="row ">
					<div class="col-md-6">
						<label for="loan_amount" class="col-sm-5 control-label">วงเงินขั้นต่ำที่ต้องการ<span
							class="red-star">*</span>:
						</label>
						<div class="col-sm-7">
							<input type="text" name="form.lessLimit" maxlength="13"
								value="<%=bean.getPring1()%>" id="loan_amount" class="form-calculate"
								onblur="isCurrency(this); FormatNumber(this, 2);" disabled="disabled">
						</div>
					</div>
					<div class="col-md-6">
						<label for="period" class="col-sm-5 control-label">ระยะเวลาในการชำระคืน<span
							class="red-star">*</span>:
						</label>
						<div class="col-sm-7">
							
<input type="text" name="form.lessLimit" maxlength="13"
								value="<%=bean.getHos()%>" id="loan_amount" class="form-calculate"
								onblur="isCurrency(this); FormatNumber(this, 2);" disabled="disabled">

						</div>
					</div>

					<div class="col-md-6">
						<label for="period" class="col-sm-5 control-label">
							รูปรถของท่าน<span class="red-star">*</span>:
						</label> <label for="period" class="col-sm-5 control-label">
							รูปรถด้านหน้า<span class="red-star">*</span>:
						</label> <input type="file" name="" class="form-calculate"> <label
							for="period" class="col-sm-5 control-label">
							รูปรถด้าหลัง<span class="red-star">*</span>:
						</label> <input type="file" name="" class="form-calculate"> <label
							for="period" class="col-sm-5 control-label">
							รูปรถด้านซ้าย<span class="red-star">*</span>:
						</label> <input type="file" name="" class="form-calculate"> <label
							for="period" class="col-sm-5 control-label">
							รูปรถด้านขวา<span class="red-star">*</span>:
						</label> <input type="file" name="" class="form-calculate">

					</div>
				</div>
				<div class="row ">
					<div class="col-md-6">
						<label for="answer" class="col-sm-5 control-label">รหัสยืนยัน<span
							class="red-star">*</span>:
						</label>
						<div class="col-sm-6" id="div_captcha">
							<img src="assets/img/captcha">
						</div>
						<div class="col-sl-1">
							<a href="javascript:doRefreshCaptcha()"><img border="0"
								width="30" height="30" id="Btn_refresh"
								src="assets/img/Btn_refresh.jpeg"></a>
						</div>
					</div>
				</div>
				<div class="row ">
					<div class="col-md-6">
						<label class="col-sm-5 control-label">&nbsp;</label>
						<div class="col-sm-7">
							<input type="text" name="form.captchaText" value=""
								id="captchaText" class="form-calculate input-captcha">
						</div>
					</div>
				</div>
				<div>
					<div class="col-md-2">&nbsp;</div>
					<div class="col-md-10">
						<label class="col-sm-12"><input type="checkbox"
							name="form.tiscoPublicFlag" value="Y" checked="checked"
							id="tiscoPublicFlag"><input type="hidden"
							id="__checkbox_tiscoPublicFlag"
							name="__checkbox_form.tiscoPublicFlag" value="Y">
							ข้าพเจ้ายินยอมในการให้ข้อมูลผ่านการสมัครช่องทางออนไลน์</label>
					</div>
				</div>
				<div id="divSubmit" class="row ">
					<div class="col-md-6">
						<label class="col-sm-5 control-label">&nbsp;</label>
						<div class="col-sm-7">
							<button type="submit" class="btn btn-success">ส่งข้อมูล</button>
							<a type="button" class="btn btn-danger"
								href="javascript: document.backForm.submit()"> Back</a>
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
			@ COPYRIGHT 2016 <a
				href="https://www.w3schools.com/w3css/default.asp" title="W3.CSS"
				target="_blank" class="w3-hover-opacity"></a>
		</div>

		<!-- End page content -->
	</div>

	<script type="text/javascript" src="assets/js/checknewuser.js"></script>
	<script type="text/javascript" src="assets/js/loan_registration.js"></script>
</body>

</html>