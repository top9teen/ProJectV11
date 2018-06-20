<%@ page language="java" contentType="text/html; charset=utf-8"
	pageEncoding="utf-8"%>
<meta http-equiv="Content-Type" content="text/html; charset=utf-8">
<%@page import="com.bru.model.*"%>
<%@page import="java.util.List"%>
<% List<RegisterallBean> list = null; 
	Integer a =0 ;
	%>
<%list = (List<RegisterallBean>) request.getSession().getAttribute("listUser"); %>
<div class="row">
	
	<div class="col-md-10">
<form name="welcome" action="." method="post">
	<input type="hidden" name="regid" id="regid">
	<div class=" form-group row">
		<div class="col-xs-8"></div>
		<div align="right" class="col-xs-4">

			<input id="myInput" type="text" placeholder="Search...."
				class="form-control">
		</div>
	</div>

	<br>
	<table class="table table-bordered">
		<thead>
			<tr>
				<th class="text-center">ลำดับ</th>
				<th class="text-center">ชื่อ</th>
				<th class="text-center">นามสกุล</th>
				<th class="text-center">เบอร์โทร</th>
				<th class="text-center">รถรุ่น</th>
				<th class="text-center">จังหวัด</th>
				<th class="text-center">เงินต้องการ</th>
				<th class="text-center">รายละเอียด</th>
				<th class="text-center">รายการ</th>
			</tr>
		</thead>
		<tbody id="myTable">
			<%
						for (int i = 0; i < list.size(); i++) {
							if(list.get(i).getRegReadtext().equals("1")){
					%>
			<tr class="text-center">

				<td><%=a=a + 1%></td>
				<td><%=list.get(i).getRegFirstname()%></td>
				<td><%=list.get(i).getRegLastname()%></td>
				<td><%=list.get(i).getRegTelephone()%></td>
				<td><%=list.get(i).getRegCarmake()%></td>
				<td><%=list.get(i).getRegProvince()%></td>
				<td><%=list.get(i).getRegLesslimit()%></td>
				<td><span style="color: blue;">ยังไม่ได้อ่าน</span></td>
				<td><a onclick="gotoUpdate('<%=list.get(i).getRegId()%>')"><span
						class="glyphicon glyphicon-search"> </span></a> <a
					onclick="gotodeled('<%=list.get(i).getRegId()%>')"><span
						class="glyphicon glyphicon-minus-sign"> </span></a></td>


			</tr>
			<%
						}}
					%>
					<%
						for (int i = 0; i < list.size(); i++) {
							if(list.get(i).getRegReadtext().equals("2")){
					%>
			<tr class="text-center">

				<td><%=a=a + 1%></td>
				<td><%=list.get(i).getRegFirstname()%></td>
				<td><%=list.get(i).getRegLastname()%></td>
				<td><%=list.get(i).getRegTelephone()%></td>
				<td><%=list.get(i).getRegCarmake()%></td>
				<td><%=list.get(i).getRegProvince()%></td>
				<td><%=list.get(i).getRegLesslimit()%></td>
				<td><span style="color: red;">อ่านแล้ว</span></td>
				<td><a onclick="gotoUpdate('<%=list.get(i).getRegId()%>')"><span
						class="glyphicon glyphicon-search"> </span></a> <a
					onclick="gotodeled('<%=list.get(i).getRegId()%>')"><span
						class="glyphicon glyphicon-minus-sign"> </span></a></td>


			</tr>
			<%
						}}
					%>
		</tbody>
	</table>

</form>
	</div>
	<div class="col-md-2"></div>
</div>
<script type="text/javascript">
			function gotoUpdate(filter) {
				document.getElementById("regid").value = filter;
				document.welcome.action="gotoUpdate31";
				document.welcome.submit();
			}
			function gotodeled(filter) {
				document.getElementById("regid").value = filter;
				document.welcome.action="gotodeled";
				document.welcome.submit();
			}
			$(document).ready(function(){
				  $("#myInput").on("keyup", function() {
				    var value = $(this).val().toLowerCase();
				    $("#myTable tr").filter(function() {
				      $(this).toggle($(this).text().toLowerCase().indexOf(value) > -1)
				    });
				  });
				});
		</script>