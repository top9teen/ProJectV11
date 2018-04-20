<%@ page language="java" contentType="text/html; charset=utf-8"
	pageEncoding="utf-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=utf-8">
<title>Insert title here</title>
<meta name="viewport" content="width=device-width, initial-scale=1">
<link rel="stylesheet"
	href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/css/bootstrap.min.css">
<link rel="stylesheet"
	href="https://maxcdn.bootstrapcdn.com/font-awesome/4.7.0/css/font-awesome.min.css">
<link rel="stylesheet" href="assets/css/welcss.css">
<link rel="stylesheet" href="assets/css/sercss.css">

<style type="text/css">
label {
	font-size: 16 px;
	color: #FFFFFF;
}
</style>
</head>
<body>
	<br>
	<br>
	<br>
	<br>
	<center>
		<h1 class="text-shadow text-color">&hearts; WELLCOME TO MY
			PROJECT BRU &hearts;</h1>
		<form action="" class="form-horizontal">
			<div class="form-group"class="col-lg-5 control-label">
				<label for="registration_year">ปีที่จดทะเบียน
					(ค.ศ.)<span class="red-star">* </span>:
				</label> <select name="form.carYear" id="registration_year"
					class="custom-select" style="width: 450px; height: 300 px;">
					<option value="">กรุณาเลือก</option>
					<option value="2017">2017</option>
					<option value="2016">2016</option>
					<option value="2015">2015</option>
					<option value="2014">2014</option>
					<option value="2013">2013</option>
					<option value="2012">2012</option>
					<option value="2011">2011</option>
					<option value="2010">2010</option>
				</select>
			</div>
			<div class="form-group"class="col-lg-6 control-label">
				<label for="brand" >ยี่ห้อ<span
					class="red-star">*</span>:
				</label> <select name="form.carMake" id="brand" class="custom-select"
					style="width: 450px; height: 300 px;">
					<option value="">กรุณาเลือก</option>
					<optgroup label="รถยนต์">
						<!-- <option value="1:AUDI">AUDI</option>
						<option value="1:BENZ">BENZ</option>
						<option value="1:BMW">BMW</option>
						<option value="1:CHEVROLET">CHEVROLET</option>
						<option value="1:FORD">FORD</option>
						<option value="1:HONDA">HONDA</option>
						<option value="1:ISUZU">ISUZU</option>
						<option value="1:JAGUAR">JAGUAR</option>
						<option value="1:KIA">KIA</option>
						<option value="1:LAND ROVER">LAND ROVER</option>
						<option value="1:LEXUS">LEXUS</option>
						<option value="1:MAZDA">MAZDA</option>
						<option value="1:MITSUBISHI">MITSUBISHI</option>
						<option value="1:NISSAN">NISSAN</option>
						<option value="1:SUBARU">SUBARU</option>
						<option value="1:SUZUKI">SUZUKI</option>
						<option value="1:TOYOTA">TOYOTA</option>
						<option value="1:VOLKSWAGEN">VOLKSWAGEN</option>
						<option value="1:VOLVO">VOLVO</option> -->
					</optgroup>


				</select>
			</div>
		</form>
	</center>

	<div class="leftMenu">
		<div class="hamburger close">
			<span></span><span></span><span></span>
		</div>
		<br> <br> <br> <br> <br> <br>
		<ul class="leftMenuList">
			<li><a href="/"><i class="fa fa-home" aria-hidden="true"></i><span>HOME</span></a>
			</li>
			<li><a href="#"><i class="fa fa-car" aria-hidden="true"></i><span>สินเชื่อทะเบียนรถยนต์</span></a>
			</li>
			<li><a href="#" class="dropdown"><i class="fa fa-book"
					aria-hidden="true"></i><span>รายละเอียดสินเชื่อ</span></a>
				<ul class="dropdownlist">
					<li><a class="glyphicon glyphicon-usd" href="#"><span>ธนาคารกรุงศรี
						</span></a></li>
					<li><a class="glyphicon glyphicon-usd" href="#"><span>ธนาคารไทยพาณิชย์</span></a></li>
					<li><a class="glyphicon glyphicon-usd" href="#"><span>ธนาคารธนชาต</span></a></li>
					<li><a class="glyphicon glyphicon-usd" href="#"><span>ธนาคารกสิกรไทย</span></a></li>

				</ul></li>
			<li><a href="#"><i class="fa fa-id-card" aria-hidden="true"></i><span>เข้าสู่ระบบ</span></a>
			</li>
			<li><a href="#"><i class="fa fa-group" aria-hidden="true"></i><span>ติดต่อเรา</span></a>
			</li>
		</ul>
	</div>

	<script
		src="https://ajax.googleapis.com/ajax/libs/jquery/3.2.1/jquery.min.js"></script>
	<script
		src="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/js/bootstrap.min.js"></script>
	<script src="assets/js/weljs.js" type="text/javascript">
		
	</script>
</body>

</html>