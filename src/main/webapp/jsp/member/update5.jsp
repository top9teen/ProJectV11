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
	<form id="loanForm" name="loanForm" action="updateuserlist80"
		method="post" class="form-horizontal loan-registration" role="form"
		autocomplete="off" enctype="multipart/form-data">
		<h1><%=be.getRegFirstname()%></h1>
		<input type="hidden" value="<%=be.getRegId()%>" name="refid">

		<div class=" form-group row">
			<div class=" form-group col-md-6">
				<label for="firstname" class="col-sm-5 control-label">ชื่อ<span
					class="red-star">*</span>:
				</label>
				<div class="form-group col-sm-7">

					<input type="hidden" value="<%=be.getRegId()%>" name="idname">
					<input type="text" maxlength="100"
						value="<%=be.getRegFirstname()%>" id="firstname"
						class="form-control" disabled="disabled">
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

		<div class=" form-group row">
			<div class=" form-group col-md-4">
				<label for="firstname" class="col-sm-5 control-label">วันที่ที่อนุมัติ<span
					class="red-star">*</span>:
				</label>
				<div class="form-group col-sm-7">

					<input type="text" maxlength="100" value="<%=be.getRegDate()%>"
						id="firstname" class="form-control" disabled="disabled">
				</div>
			</div>
			<div class=" form-group col-md-4">
				<label for="firstname" class="col-sm-5 control-label">งวดที่ทำไว้
					:<span class="red-star">*</span>:
				</label>
				<div class="form-group col-sm-7">

					<input type="hidden" value="<%=be.getRegLessday()%>" name="idname">
					<input type="text" maxlength="100" value="<%=be.getRegLessday()%>"
						id="firstname" class="form-control" disabled="disabled">
				</div>
			</div>
			<div class=" form-group col-md-4">
				<label for="lastname" class="col-sm-5 control-label">อัพเดทงวด<span
					class="red-star">*</span>:
				</label>
				<div class="form-group col-sm-7">
					<input type="text" maxlength="150" value=""
						id="lastname" class="form-control" name="updatepried">
				</div>
			</div>
		</div>

		<br>
		<div id="divSubmit" class="row " align="center">
			<div class="col-md-6">
				<label class="col-sm-5 control-label">&nbsp;</label>
				<div class="col-sm-7">
					<button type="submit" class="btn btn-success">อัพเดท</button>
					<a type="button" class="btn btn-danger" onclick="black()"> Back</a>
				</div>
			</div>

		</div>

	</form>
	<script type="text/javascript">
function black() {
	var txt;
	if (confirm("คุณต้องการจะย้อนกลับหรือไม่")) {
		window.location = "/gototabel56";

	}
	document.getElementById("demo").innerHTML = txt;
}



</script>

</div>