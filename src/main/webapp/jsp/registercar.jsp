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
		<h1 a><%=bean.getName()%></h1>
		<div class="form-group" align="center">
			<form id="loanForm" name="loanForm" action="finish" method="post"
				class="form-horizontal loan-registration" role="form"
				autocomplete="off" enctype="multipart/form-data">
				<h1 a><%=bean.getName()%></h1>
				<input type="hidden" name="bankName" value="<%=bean.getName()%>">
				
				</div>
				<div class="row">
					<div class="col-md-6">
						<label for="firstname" class="col-sm-5 control-label">ชื่อ<span
							class="red-star">*</span>:
						</label>
						<div class="col-sm-7">
							<input type="text" name="firstName" maxlength="100" value=""
								id="firstname" class="form-calculate">
						</div>
					</div>
					<div class="col-md-6">
						<label for="lastname" class="col-sm-5 control-label">นามสกุล<span
							class="red-star">*</span>:
						</label>
						<div class="col-sm-7">
							<input type="text" name="lastName" maxlength="150" value=""
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
							<input type="number" name="age" maxlength="3" value=""
								id="age" class="form-calculate">
						</div>
					</div>
					<div class="col-md-6">
						<label for="province" class="col-sm-5 control-label">จังหวัดที่อยู่ปัจจุบัน<span
							class="red-star">*</span>:
						</label>
						<div class="col-sm-7">
							<select name="provinceId" id="province" class="selectlist">
								<option value="">กรุณาเลือก</option>
								<option value="กระบี่">กระบี่</option>
								<option value="กรุงเทพมหานคร">กรุงเทพมหานคร</option>
								<option value="กาญจนบุรี">กาญจนบุรี</option>
								<option value="กาฬสินธุ์">กาฬสินธุ์</option>
								<option value="กำแพงเพชร">กำแพงเพชร</option>
								<option value="ขอนแก่น">ขอนแก่น</option>
								<option value="จันทบุรี">จันทบุรี</option>
								<option value="ฉะเชิงเทรา">ฉะเชิงเทรา</option>
								<option value="ชลบุรี">ชลบุรี</option>
								<option value="ชัยนาท">ชัยนาท</option>
								<option value="ชัยภูมิ">ชัยภูมิ</option>
								<option value="ชุมพร">ชุมพร</option>
								<option value="เชียงราย">เชียงราย</option>
								<option value="เชียงใหม่">เชียงใหม่</option>
								<option value="ตรัง">ตรัง</option>
								<option value="ตราด">ตราด</option>
								<option value="ตาก">ตาก</option>
								<option value="นครนายก">นครนายก</option>
								<option value="นครปฐม">นครปฐม</option>
								<option value="นครพนม">นครพนม</option>
								<option value="นครราชสีมา">นครราชสีมา</option>
								<option value="นครศรีธรรมราช">นครศรีธรรมราช</option>
								<option value="นครสวรรค์">นครสวรรค์</option>
								<option value="นนทบุรี">นนทบุรี</option>
								<option value="นราธิวาส">นราธิวาส</option>
								<option value="น่าน">น่าน</option>
								<option value="บึงกาฬ">บึงกาฬ</option>
								<option value="บุรีรัมย์">บุรีรัมย์</option>
								<option value="เบตง">เบตง</option>
								<option value="ปทุมธานี">ปทุมธานี</option>
								<option value="ประจวบคีรีขันธ์">ประจวบคีรีขันธ์</option>
								<option value="ปราจีนบุรี">ปราจีนบุรี</option>
								<option value="ปัตตานี">ปัตตานี</option>
								<option value="พระนครศรีอยุธยา">พระนครศรีอยุธยา</option>
								<option value="พะเยา">พะเยา</option>
								<option value="พังงา">พังงา</option>
								<option value="พัทลุง">พัทลุง</option>
								<option value="พิจิตร">พิจิตร</option>
								<option value="พิษณุโลก">พิษณุโลก</option>
								<option value="เพชรบุรี">เพชรบุรี</option>
								<option value="เพชรบูรณ์">เพชรบูรณ์</option>
								<option value="แพร่">แพร่</option>
								<option value="ภูเก็ต">ภูเก็ต</option>
								<option value="มหาสารคาม">มหาสารคาม</option>
								<option value="มุกดาหาร">มุกดาหาร</option>
								<option value="แม่ฮ่องสอน">แม่ฮ่องสอน</option>
								<option value="ยโสธร">ยโสธร</option>
								<option value="ยะลา">ยะลา</option>
								<option value="ร้อยเอ็ด">ร้อยเอ็ด</option>
								<option value="ระนอง">ระนอง</option>
								<option value="ระยอง">ระยอง</option>
								<option value="ราชบุรี">ราชบุรี</option>
								<option value="ลพบุรี">ลพบุรี</option>
								<option value="ลำปาง">ลำปาง</option>
								<option value="ลำพูน">ลำพูน</option>
								<option value="เลย">เลย</option>
								<option value="ศรีสะเกษ">ศรีสะเกษ</option>
								<option value="สกลนคร">สกลนคร</option>
								<option value="สงขลา">สงขลา</option>
								<option value="สตูล">สตูล</option>
								<option value="สมุทรปราการ">สมุทรปราการ</option>
								<option value="สมุทรสงคราม">สมุทรสงคราม</option>
								<option value="สมุทรสาคร">สมุทรสาคร</option>
								<option value="สระแก้ว">สระแก้ว</option>
								<option value="สระบุรี">สระบุรี</option>
								<option value="สิงห์บุรี">สิงห์บุรี</option>
								<option value="สุโขทัย">สุโขทัย</option>
								<option value="สุพรรณบุรี">สุพรรณบุรี</option>
								<option value="สุราษฎร์ธานี">สุราษฎร์ธานี</option>
								<option value="สุรินทร์">สุรินทร์</option>
								<option value="หนองคาย">หนองคาย</option>
								<option value="หนองบัวลำภู">หนองบัวลำภู</option>
								<option value="อ่างทอง">อ่างทอง</option>
								<option value="อำนาจเจริญ">อำนาจเจริญ</option>
								<option value="อุดรธานี">อุดรธานี</option>
								<option value="อุตรดิตถ์">อุตรดิตถ์</option>
								<option value="อุทัยธานี">อุทัยธานี</option>
								<option value="อุบลราชธานี">อุบลราชธานี</option>


							</select>
						</div>
					</div>
				</div>
				<div class="row ">
					<div class="col-md-6">
						<label for="tel" class="col-sm-5 control-label">เบอร์โทรศัพท์ที่ติดต่อได้<span
							class="red-star">*</span>:
						</label>
						<div class="col-sm-7">
							<input type="number" name="telephoneNo" maxlength="50"
								value="" id="tel" class="form-calculate">
						</div>
					</div>
					<div class="col-md-6">
						<label for="tel" class="col-sm-5 control-label">เลขบัตรประชาชน<span
							class="red-star">*</span>:
						</label>
						<div class="col-sm-7">
							<input type="number" name="idcard" maxlength="13"
								value="">
						</div>
					</div>
					<div class="col-md-6">
						<label for="email" class="col-sm-5 control-label">อีเมล์<span
							class="red-star">*</span>:
						</label>
						<div class="col-sm-7">
							<input type="text" name="email" maxlength="90" value=""
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
							<input type="text"  maxlength="50"
								value="<%=bean.getMycar()%>" id="brand" class="form-calculate"
								disabled="disabled">
								<input type="hidden" name="carMake" 
								value="<%=bean.getMycar()%>" >
								
						</div>
					</div>
					<div class="col-md-6">
						<label for="model" class="col-sm-5 control-label">รุ่น<span
							class="red-star">*</span>:
						</label>
						<div class="col-sm-7">
							<input type="text" name="" maxlength="250"
								value="<%=bean.getMybrand()%>" id="model" disabled="disabled"
								class="form-calculate">
								<input type="hidden" name="carModel" 
								value="<%=bean.getMybrand()%>" >
						</div>
					</div>
				</div>
				<div class="row ">
					<div class="col-md-6">
						<label for="year_registration" class="col-sm-5 control-label">ปีที่จดทะเบียน
							(ค.ศ.)<span class="red-star">*</span>:
						</label>
						<div class="col-sm-7">

							<input type="text" name="" maxlength="13"
								value="<%=bean.getMyYear()%>" id="income" class="form-calculate"
								disabled="disabled">
								<input type="hidden" name="totalIncome"
								value="<%=bean.getMyYear()%>" id="income" class="form-calculate">
								
						</div>
					</div>
					<div class="col-md-6">
						<label for="income" class="col-sm-5 control-label">รายได้สุทธิต่อเดือน<span
							class="red-star">*</span>:
						</label>
						<div class="col-sm-7">
							<input type="text" name="salary" maxlength="13"
								value="" id="income" class="form-calculate">
						</div>
					</div>
				</div>
				<div class="row ">
					<div class="col-md-6">
						<label for="loan_amount" class="col-sm-5 control-label">วงเงินขั้นต่ำที่ต้องการ<span
							class="red-star">*</span>:
						</label>
						<div class="col-sm-7">
							<input type="text" name="lessLimit" maxlength="13"
								value="<%=bean.getPring1()%>" id="loan_amount"
								class="form-calculate"
								onblur="isCurrency(this); FormatNumber(this, 2);"
								disabled="disabled">
								<input type="hidden" name="lessLimit" 
								value="<%=bean.getPring1()%>" 
								class="form-calculate">
								
								
						</div>
					</div>
					<div class="col-md-6">
						<label for="period" class="col-sm-5 control-label">ระยะเวลาในการชำระคืน<span
							class="red-star">*</span>:
						</label>
						<div class="col-sm-7">

							<input type="text"  maxlength="13"
								value="<%=bean.getHos()%>" id="loan_amount"
								class="form-calculate" disabled> 
								<input type="hidden" name="lassday" 
								value="<%=bean.getHos()%>" 
								class="form-calculate">
						</div>
					</div>
				 	<div class="col-md-6">
						<label for="period" class="col-sm-5 control-label">
							รูปรถของท่าน<span class="red-star">*</span>:
						</label> <label for="period" class="col-sm-5 control-label">
							รูปรถด้านหน้า<span class="red-star">*</span>:
						</label> <input type="file" name="file1" class="form-calculate"> <label
							for="period" class="col-sm-5 control-label">
							รูปรถด้าหลัง<span class="red-star">*</span>:
						</label> <input type="file" name="file2" class="form-calculate"> <label
							for="period" class="col-sm-5 control-label">
							รูปรถด้านซ้าย<span class="red-star">*</span>:
						</label> <input type="file" name="file3" class="form-calculate"> <label
							for="period" class="col-sm-5 control-label">
							รูปรถด้านขวา<span class="red-star">*</span>:
						</label> <input type="file" name="file4" class="form-calculate">

					</div> 
				</div>
				<br>
				<div id="divSubmit" class="row ">
					<div class="col-md-6">
						<label class="col-sm-5 control-label">&nbsp;</label>
						<div class="col-sm-7">
							<button type="submit" class="btn btn-success">ส่งข้อมูล</button>
							<a type="button" class="btn btn-danger" onclick="black()"> Back</a>
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


	<script type="text/javascript" src="assets/js/checknewuser.js"></script>
	<script type="text/javascript" src="assets/js/loan_registration.js"></script>
	<script type="text/javascript">
	function black() {
	    var txt;
	    if (confirm("คุณต้องการจะยกเลิกหรือไม่")) {
	    	 window.location="/"; 
	    	
	    } 
	    document.getElementById("demo").innerHTML = txt;
	}
	
	</script>
</body>

</html>