<%@ page language="java" contentType="text/html; charset=utf-8"
	pageEncoding="utf-8"%>
<div>

	<form name="wel" action="coler23" method="post"
		onsubmit="return fncSubmit();">
		<div align="center">
			<label class="form-group">เลขบัตรประชาชน ที่ต้องการเพิ่ม <span>:</span></label>
			<input value="" type="number" name="name" id="name" maxlength="13">
		</div>
		<div align="center">
			<label class="form-group"> สีที่ต้องใส่ในเลข <span>:</span></label>
			<div class="form-group">
				<label for="brand">ยี่ห้อ<span style="color: red;">*</span>:
				</label> <select name="coler" id="brand" class="form-control">
					<option value="">กรุณาเลือก</option>
					<option value="#33FF33">ส่งตรงตามเวลา </option>
					<option value="#FF9933">ส่งช้า1-2เดือน</option>
					<option value="#FF3333">ส่งช้า3เดือนขึ้นไป</option>
					
				</select>
			</div>
		</div>
		<div class="panel-footer" align="center">
			<input type="submit" class="btn btn-success" value="เพิ่ม"
				name="coler" id="vos"> 
		</div>
	</form>

</div>

<script type="text/javascript">
	
	function fncSubmit(){
		if(document.wel.name.value == "")
		{
			alert('Please input Idcard');
			document.wel.name.focus();
			return false;
		}	
		if (document.wel.coler.value == "") {
			alert('Please input Brand');
			document.wel.coler.focus();
			return false;
			
		}
	    document.getElementById("demo").innerHTML = txt;
	}
	
	
	</script>