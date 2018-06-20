<%@ page language="java" contentType="text/html; charset=utf-8"
	pageEncoding="utf-8"%>
<%@page import="com.bru.model.*"%>
<%@page import="java.util.List"%>
<%
	
	RegisterallBean be = null;
%>


<%
	
	be = (RegisterallBean) request.getSession().getAttribute("resultBean");
%>
<div class="form-group" align="center">
	<form id="loanForm" name="loanForm" action="updateuserlist2" method="post"
		class="form-horizontal loan-registration" role="form"
		autocomplete="off" enctype="multipart/form-data">
		<h1 ><%=be.getRegFirstname()%></h1>
		<input type="hidden" value="<%=be.getRegId()%>" name ="refid">

		<div class=" form-group row">
			<div class=" form-group col-md-6">
				<label for="firstname" class="col-sm-5 control-label">ชื่อ<span
					class="red-star">*</span>:
				</label>
				<div class="form-group col-sm-7">
					
						 <input type="hidden"
						value="<%=be.getRegId()%>" name="idname"> <input
						type="text" maxlength="100" value="<%=be.getRegFirstname()%>"
						id="firstname" class="form-control" disabled="disabled"> 
				</div>
			</div>
			<div class=" form-group col-md-6">
				<label for="lastname" class="col-sm-5 control-label">นามสกุล<span
					class="red-star">*</span>:
				</label>
				<div class="form-group col-sm-7">
					<input type="text" maxlength="150" value="<%=be.getRegLastname()%>"
						id="lastname" class="form-control" disabled="disabled"> 
				</div>
			</div>
		</div>
		<div class=" form-group col-md-6">
			<label for="age" class="col-sm-5 control-label">อายุ<span
				class="red-star">*</span>:
			</label>
			<div class="form-group col-sm-7">
				<input type="number" maxlength="3" value="<%=be.getRegAge()%>"
					id="age" class="form-control" disabled="disabled">
			</div>
		</div>
		<div class="form-group col-md-6">
			<label for="province" class="col-sm-5 control-label">จังหวัดที่อยู่ปัจจุบัน<span
				class="red-star">*</span>:
			</label>
			<div class="form-group col-sm-7">
				<input type="text" value="<%=be.getRegProvince()%>" id="age"
					class="form-control" disabled="disabled">
			</div>
			<label for="province" class="col-sm-5 control-label">อำเภอ<span
				class="red-star">*</span>:
			</label>
			<div class="form-group col-sm-7">
				<input type="text" value="<%=be.getRegAmphur()%>" id="age"
					class="form-control" disabled="disabled"> 
			</div>
			<label for="province" class="col-sm-5 control-label">ตำบล<span
				class="red-star">*</span>:
			</label>
			<div class="form-group col-sm-7">
				<input type="text" value="<%=be.getRegDistrict()%>" id="age"
					class="form-control" disabled="disabled">
			</div>
			<label for="province" class="col-sm-5 control-label">บ้านเลขที่<span
				class="red-star">*</span>:
			</label>
			<div class="form-group col-sm-7">
				<input type="text" value="<%=be.getRegmoban()%>" id="age"
					class="form-control" disabled="disabled"> 
			</div>

		</div>

		<div class="form-group row ">
			<div class="form-group col-md-6">
				<label for="tel" class="col-sm-5 control-label">เบอร์โทรศัพท์ที่ติดต่อได้<span
					class="red-star">*</span>:
				</label>
				<div class="form-group col-sm-7">
					<input type="number" name="" maxlength="50"
						value="<%=be.getRegTelephone()%>" id="tel" class="form-control"
						disabled="disabled">
				</div>
			</div>
			<div class="form-group col-md-6">
				<label for="tel" class="col-sm-5 control-label">เลขบัตรประชาชน<span
					class="red-star">*</span>:
				</label>
				<div class="form-group col-sm-7">
					<input type="number" name="" maxlength="13"
						value="<%=be.getRegIdCard()%>" disabled="disabled"
						class="form-control"> 
				</div>
			</div>
			<div class="form-group col-md-6">
				<label for="email" class="col-sm-5 control-label">อีเมล์<span
					class="red-star">*</span>:
				</label>
				<div class="form-group col-sm-7">
					<input type="text" name="" maxlength="90"
						value="<%=be.getRegEmail()%>" id="email" class="form-control"
						disabled="disabled">
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
						id="brand" class="form-control" disabled="disabled"> 

				</div>
			</div>
			<div class="form-group col-md-6">
				<label for="model" class="col-sm-5 control-label">รุ่น<span
					class="red-star">*</span>:
				</label>
				<div class="form-group col-sm-7">
					<input type="text" name="" maxlength="250"
						value="<%=be.getRegCarmodel()%>" id="model" disabled="disabled"
						class="form-control"> 
				</div>
			</div>
		</div>
		<div class="form-group row ">
			<div class="form-group col-md-6">
				<label for="year_registration" class="col-sm-5 control-label">ปีที่จดทะเบียน
					(ค.ศ.)<span class="red-star">*</span>:
				</label>
				<div class="col-sm-7">

					<input type="text" name="" maxlength="13"
						value="<%=be.getRegTotalincome()%>" id="income"
						class="form-control" disabled="disabled"> 

				</div>
			</div>
			<div class="form-group col-md-6">
				<label for="income" class="col-sm-5 control-label">รายได้สุทธิต่อเดือน<span
					class="red-star">*</span>:
				</label>
				<div class="form-group col-sm-7">
					<input type="text" name="" disabled="disabled"
						value="<%=be.getRegSalary()%>" id="income" class="form-control">
					
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
						class="form-control" disabled="disabled"> 

				</div>
			</div>

			<div class="form-group col-md-6">
				<label for="period" class="col-sm-5 control-label">ระยะเวลาในการชำระคืน<span
					class="red-star">*</span>:
				</label>
				<div class="col-sm-7">

					<input type="text" maxlength="13" value="<%=be.getRegLessday()%>"
						id="loan_amount" class="form-control" disabled> 
				</div>
			</div>
		</div>
		
		<div class="form-group row ">
			<div class="form-group col-md-6">
				<label for="loan_amount" class="col-sm-5 control-label">รูปรถของท่าน<span
					class="red-star">*</span>:
				</label>
				<div class="form-group col-sm-7">
				<input type="button" name="btn" id="btn" value="Show/Hide" class="btn btn-info" onclick="toggle()" >
				</div>
			</div>
			<div class="form-group col-md-6">
				<label for="loan_amount" class="col-sm-5 control-label">Map ของผู้สมัคร<span
					class="red-star">*</span>:
				</label>
				<div class="form-group col-sm-7">
				<input type="button" name="btn" id="btn" value="Show/Hide" class="btn btn-info" onclick="toggle2()" >
				</div>
			</div>
		</div>
		<div class="form-group row" id="display2" style="display: none;">
		<div class="form-group col-md-3"></div>
		<div class="form-group col-md-6">
		
		</div>
		<div class="form-group col-md-3"></div>
		</div >
		
		<div class="form-group row" id="display" style="display: none;">
			<div class="form-group col-md-3"></div>
			<div class="form-group col-md-6">
				<label for="period" class="col-sm-5 control-label">
					รูปรถด้านหน้า<span class="red-star">*</span>:
				</label>
				<img alt="" src="<%=be.getRegImgfront()%>"
					style="width: 900px; height: 720px;"> <label for="period"
					class="col-sm-5 control-label"> รูปรถด้านหลัง<span
					class="red-star">*</span>:
				</label> 
				<img alt="" src="<%=be.getRegImgback()%>"
					style="width: 900px; height: 720px;"> <label for="period"
					class="col-sm-5 control-label"> รูปรถด้านซ้าย<span
					class="red-star">*</span>:
				</label>
				<img alt="" src="<%=be.getRegImgLeft()%>"
					style="width: 900px; height: 720px;"> <label for="period"
					class="col-sm-5 control-label"> รูปรถด้านขวา<span
					class="red-star">*</span>:
				</label> 
				<img alt="" src="<%=be.getRegImgright()%>"
					style="width: 900px; height: 720px;">
			</div>
			<div class="form-group col-md-3"></div>
		</div>

	
		<br>
		<div id="divSubmit" class="row " align="center">
			<div class="col-md-6">
				<label class="col-sm-5 control-label">&nbsp;</label>
				<div class="col-sm-7">
				<button type="submit" class="btn btn-success">ส่งข้อมูล</button>
					<a type="button" class="btn btn-danger" onclick="black()"> Back</a>
				</div>
			</div>

		</div>

	</form>
<script type="text/javascript">
function black() {
	var txt;
	if (confirm("คุณต้องการจะย้อนกลับหรือไม่")) {
		window.location = "/gototabel";

	}
	document.getElementById("demo").innerHTML = txt;
}


function toggle() {
	var ds = document.getElementById("display");
	if(ds.style.display == 'none')
		ds.style.display = 'block';
	else 
		ds.style.display = 'none';
}
function toggle2() {
	var ds = document.getElementById("display2");
	if(ds.style.display == 'none')
		ds.style.display = 'block';
	else 
		ds.style.display = 'none';
}
</script>

</div>