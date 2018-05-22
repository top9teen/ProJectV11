<%@ page language="java" contentType="text/html; charset=utf-8"
	pageEncoding="utf-8"%>
<meta http-equiv="Content-Type" content="text/html; charset=utf-8">
	<%@page import="com.bru.model.RegnameBean"%>
	<%@page import="java.util.List"%>
	<% List<RegnameBean> list = null; %>
	<%list = (List<RegnameBean>) request.getSession().getAttribute("listUser"); %>
	<form name="welcome" action="." method="post">
<input type="hidden" name="regid" id="regid">
		<table class="table table-bordered">
			<tr>
				<th class="text-center">ลำดับ</th>
				<th class="text-center">ชื่อ</th>
				<th class="text-center">นามสกุล</th>
				<th class="text-center">เบอร์โทร</th>
				<th class="text-center">รถรุ่น</th>
				<th class="text-center">จังหวัด</th>
				<th class="text-center">เงินต้องการ</th>
				<th class="text-center">รายละเอียด</th>
			</tr>
			<%
				
					for (int i = 0; i < list.size(); i++) {
				%>
			<tr class="text-center">
			
				<td><%=i + 1 %></td>
				<td><%=list.get(i).getRegFirstname()%></td>
				<td><%=list.get(i).getRegLastname() %></td>
				<td><%=list.get(i).getRegTelephone() %></td>
				<td><%=list.get(i).getRegCarmake() %></td>
				<td><%=list.get(i).getRegProvince() %></td>
				<td><%=list.get(i).getRegLesslimit() %></td>
				<td><a onclick="gotoUpdate('<%=list.get(i).getRegId()%>')"><span
						class="glyphicon glyphicon-search"> </span></a>
					</td>
					
					
			</tr>
		<%} %>
		</table>

	</form>
<script type="text/javascript">
			function gotoUpdate(filter) {
				document.getElementById("regid").value = filter;
				document.welcome.action="gotoUpdate2";
				document.welcome.submit();
			}
		</script>