<%@ page language="java" contentType="text/html; charset=utf-8"
	pageEncoding="utf-8"%>
<%@page import="com.bru.model.*"%>
<%@page import="java.util.List"%>
<%
	List<RegisterallBean> list = null;
%>
<%
	list = (List<RegisterallBean>) request.getSession().getAttribute("listUser");
%>
<div class="form-group">

<div class="row">
	<div class="col-md-10">
	<form name="welcome" action="." method="post">
		
		<br>
		<input type="hidden" name="regid" id="regid">
		<div class=" form-group row">
		<div class="col-xs-8"></div>
		<div align="right" class="col-xs-4">
		
<input id="myInput" type="text" placeholder="Search...." class="form-control" >
</div>
		</div>
		
<br>

		<table class="table table-bordered">

			<thead>
				<tr>
					<th class="text-center">ลำดับ</th>
					<th class="text-center">ชื่อ</th>
					<th class="text-center">เบอร์โทร</th>
					<th class="text-center">รถรุ่น</th>
					<th class="text-center">จังหวัด</th>
					<th class="text-center">เงินต้องการ</th>
					<th class="text-center">งวดทั้งหมด</th>
					<th class="text-center">งวดที่เหลือ</th>
					<th class="text-center">รายละเอียด</th>
				</tr>
			</thead>
			<tbody id="myTable">
				<%
					for (int i = 0; i < list.size(); i++) {
				%>
				<tr class="text-center">

					<td><%=i + 1%></td>
					<td><%=list.get(i).getRegFirstname()%></td>
					<td><%=list.get(i).getRegTelephone()%></td>
					<td><%=list.get(i).getRegCarmake()%></td>
					<td><%=list.get(i).getRegProvince()%></td>
					<td><%=list.get(i).getRegLesslimit()%></td>
					<td><%=list.get(i).getRegLessday() %></td>
					<td><%=list.get(i).getRegLessdayformy() %></td>
					<td><a onclick="gotoUpdate('<%=list.get(i).getRegId()%>')"><span
							class="glyphicon glyphicon-search"> </span></a></td>


				</tr>
				<%
					}
				%>
			</tbody>
		</table>

	</form>
</div>
	<div class="col-md-2"></div>
	</div>

</div>
<script type="text/javascript">
	function gotoUpdate(filter) {
		document.getElementById("regid").value = filter;
		document.welcome.action = "gotocked2";
		document.welcome.submit();
	}

	$(document).ready(
			function() {
				$("#myInput").on(
						"keyup",
						function() {
							var value = $(this).val().toLowerCase();
							$("#myTable tr").filter(
									function() {
										$(this).toggle(
												$(this).text().toLowerCase()
														.indexOf(value) > -1)
									});
						});
			});
</script>