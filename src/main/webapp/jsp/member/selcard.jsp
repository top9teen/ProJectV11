<%@page import="com.bru.model.ColeridcardBean"%>
<%@ page language="java" contentType="text/html; charset=utf-8"
	pageEncoding="utf-8"%>
<meta http-equiv="Content-Type" content="text/html; charset=utf-8">
	<%@page import="com.bru.model.RegisterallBean"%>
	<%@page import="java.util.List"%>


	<form name="wel" action="coler" method="post" onsubmit="return fncSubmit();">
	<div align="center" >
	<label  class="form-group">เลขบัตรประชาชน ที่ต้องการค้นหา  <span>:</span></label>
	<input  value="" type="number" name="name" id="name">
	</div>
	 <div class="panel-footer" align="center">
	<input type="submit" class="btn btn-success" value="ค้นหา" name="coler" id="vos" >

	</div>
	</form>
	<div>
	<input disabled="disabled" checked="checked" style="background-color: #FFFFFF;width: 80px;height: 80px;"><p> ไม่เคยทำสินเชื่อ </p>
	<input  disabled="disabled" checked="checked" style="background-color: #33FF33;width: 80px;height: 80px;"><p> ส่งตรงตามเวลา </p>
	<input disabled="disabled" checked="checked" style="background-color: #FF9933;width: 80px;height: 80px;"><p> ส่งช้า1-2เดือน </p>
	<input disabled="disabled" checked="checked" style="background-color: #FF3333;width: 80px;height: 80px;"><p> ส่งช้า3เดือนขึ้นไป </p>
	</div>
	
<script type="text/javascript">
	
	function fncSubmit(){
		if(document.wel.name.value == "")
		{
			alert('Please input Idcard');
			document.wel.name.focus();
			return false;
		}	
	    document.getElementById("demo").innerHTML = txt;
	}
	
	
	</script>