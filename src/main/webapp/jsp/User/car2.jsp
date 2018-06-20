<%@ page language="java" contentType="text/html; charset=utf-8"
	pageEncoding="utf-8"%>
<div class="form-group row ">
	<div class="form-group col-md-1"></div>
	<div class="form-group col-md-10">
		<form name="gotohome" action="car2" method="post"
			OnSubmit="return fncSubmit2();"
			style="height: 70%; width: 40%; margin: 150px;">
			<div class="panel panel-primary" style="margin-top: 15%">
				<div class="panel-heading">กรุณาเลือกรถยนต์รุ่นของท่าน</div>
				<div class="panel-body">
					<div class="form-group">
						<label for="registration_year">ปีที่จดทะเบียน (ค.ศ.)<span
							style="color: red;">* </span>:
						</label> <select class="form-control" name="groupType" id="groupType"
							list="groupTypeDropdown" listKey="value" listValue="name">
							<option value="">กรุณาเลือก</option>

						</select>
					</div>
					<div class="form-group">
						<label for="brand">ยี่ห้อ<span style="color: red;">*</span>:
						</label> <select name="carMake" id="brand" class="form-control">
							<option value="">กรุณาเลือก</option>

							<optgroup label="รถยนต์">
							</optgroup>
						</select>
					</div>
					<div class="form-group">
						<label for="brand">รุ่น<span style="color: red;">*</span>:
						</label> <select name="carMake2" id="carmodel" class="form-control">
							<option value="">กรุณาเลือก</option>
							<optgroup label="รุ่น">

							</optgroup>
						</select>
					</div>


				</div>
				<div class="panel-footer" align="center"
					style="background: transparent;">
					<input type="submit" class="btn btn-success" value="ตรวจสอบ">&nbsp;
				</div>

			</div>
		</form>

	</div>
	<div class="form-group col-md-1"></div>
</div>
