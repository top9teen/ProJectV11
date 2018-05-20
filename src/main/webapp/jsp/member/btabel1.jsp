
<%@page import="com.bru.model.SimBean"%>
<%@ page language="java" contentType="text/html; charset=utf-8"
	pageEncoding="utf-8"%>
<meta http-equiv="Content-Type" content="text/html; charset=utf-8">
<%
	String result1 = "";
	String result2 = "";
	String result3 = "";
	String result4 = "";
	SimBean simbean=null;
%>
<%
	result1 = (String) request.getAttribute("ka");
	result2 = (String) request.getAttribute("kr");
	result3 = (String) request.getAttribute("sc");
	result4 = (String) request.getAttribute("th");
	simbean=(SimBean) request.getSession().getAttribute("sim");
%>
<h1>เงินที่ต้องการกู้ : <%=simbean.getPring1() %> บาท </h1>

<div>

	<%if(result1.equals("0")){  %>
	<%} else if (result1.equals("1") || result1.equals("2")){ %>
	<form action="gotoregister" method="post">
		<h2>ธนาคาร กสิกร</h2>
		<table class="table table-bordered">
			<thead>
				<tr>
					<th class="col-md-4 iefix">ระยะเวลาผ่อนชำระ</th>
					<th class="col-md-4 iefix">อัตราดอกเบี้ย</th>
					<th class="col-md-4 iefix">ค่างวด (ต่อเดือน)</th>
				</tr>
			</thead>
			<tbody>
				<tr>
					<td><input type="radio" name="" value="12">12 งวด</td>
					<td>0.55</td>
					<td>4444</td>
				</tr>
				<tr>
					<td><input type="radio" name="" value="24">24 งวด</td>
					<td>0.55</td>
					<td>4444</td>
				</tr>
				<tr>
					<td><input type="radio" name="" value="36">36งวด</td>
					<td>0.55</td>
					<td>4444</td>
				</tr>
				<%} %>
				<%if(result1.equals("2")){ %>
				<tr>
					<td><input type="radio" name="" value="48">48 งวด</td>
					<td>0.60</td>
					<td>4444</td>
				</tr>
				<tr>
					<td><input type="radio" name="" value="60">60 งวด</td>
					<td>0.66</td>
					<td>4444</td>
				</tr>
				<%} %>
			</tbody>
		</table>
		<div class="panel-footer" align="center"
			style="background: transparent;">
			<input type="submit" value="ยืนยัน" class="btn btn-success">
		</div>
	</form>
</div>
<div>

	<%if(result2.equals("0")){  %>
	<%} else if (result2.equals("1") || result2.equals("2")){ %>
	<form action="gotoregister" method="post">
		<h2>ธนาคาร กสิกร</h2>
		<table class="table table-bordered">
			<thead>
				<tr>
					<th class="col-md-4 iefix">ระยะเวลาผ่อนชำระ</th>
					<th class="col-md-4 iefix">อัตราดอกเบี้ย</th>
					<th class="col-md-4 iefix">ค่างวด (ต่อเดือน)</th>
				</tr>
			</thead>
			<tbody>
				<tr>
					<td><input type="radio" name="" value="12">12 งวด</td>
					<td>0.55</td>
					<td>4444</td>
				</tr>
				<tr>
					<td><input type="radio" name="" value="24">24 งวด</td>
					<td>0.55</td>
					<td>4444</td>
				</tr>
				<tr>
					<td><input type="radio" name="" value="36">36งวด</td>
					<td>0.55</td>
					<td>4444</td>
				</tr>
				<%} %>
				<%if(result2.equals("2")){ %>
				<tr>
					<td><input type="radio" name="" value="48">48 งวด</td>
					<td>0.60</td>
					<td>4444</td>
				</tr>
				<tr>
					<td><input type="radio" name="" value="60">60 งวด</td>
					<td>0.66</td>
					<td>4444</td>
				</tr>
				<%} %>
			</tbody>
		</table>
		<div class="panel-footer" align="center"
			style="background: transparent;">
			<input type="submit" value="ยืนยัน" class="btn btn-success">
		</div>
	</form>
</div>
<div>

	<%if(result3.equals("0")){  %>
	<%} else if (result3.equals("1") || result3.equals("2")){ %>
	<form action="gotoregister" method="post">
		<h2>ธนาคาร กสิกร</h2>
		<table class="table table-bordered">
			<thead>
				<tr>
					<th class="col-md-4 iefix">ระยะเวลาผ่อนชำระ</th>
					<th class="col-md-4 iefix">อัตราดอกเบี้ย</th>
					<th class="col-md-4 iefix">ค่างวด (ต่อเดือน)</th>
				</tr>
			</thead>
			<tbody>
				<tr>
					<td><input type="radio" name="" value="12">12 งวด</td>
					<td>0.55</td>
					<td>4444</td>
				</tr>
				<tr>
					<td><input type="radio" name="" value="24">24 งวด</td>
					<td>0.55</td>
					<td>4444</td>
				</tr>
				<tr>
					<td><input type="radio" name="" value="36">36งวด</td>
					<td>0.55</td>
					<td>4444</td>
				</tr>
				<%} %>
				<%if(result3.equals("2")){ %>
				<tr>
					<td><input type="radio" name="" value="48">48 งวด</td>
					<td>0.60</td>
					<td>4444</td>
				</tr>
				<tr>
					<td><input type="radio" name="" value="60">60 งวด</td>
					<td>0.66</td>
					<td>4444</td>
				</tr>
				<%} %>
			</tbody>
		</table>
		<div class="panel-footer" align="center"
			style="background: transparent;">
			<input type="submit" value="ยืนยัน" class="btn btn-success">
		</div>
	</form>
</div>
<div>

	<%if(result4.equals("0")){  %>
	<%} else if (result4.equals("1") || result4.equals("2")){ %>
	<form action="gotoregister" method="post">
		<h2>ธนาคาร กสิกร</h2>
		<table class="table table-bordered">
			<thead>
				<tr>
					<th class="col-md-4 iefix">ระยะเวลาผ่อนชำระ</th>
					<th class="col-md-4 iefix">อัตราดอกเบี้ย</th>
					<th class="col-md-4 iefix">ค่างวด (ต่อเดือน)</th>
				</tr>
			</thead>
			<tbody>
				<tr>
					<td><input type="radio" name="" value="12">12 งวด</td>
					<td>0.55</td>
					<td>4444</td>
				</tr>
				<tr>
					<td><input type="radio" name="" value="24">24 งวด</td>
					<td>0.55</td>
					<td>4444</td>
				</tr>
				<tr>
					<td><input type="radio" name="" value="36">36งวด</td>
					<td>0.55</td>
					<td>4444</td>
				</tr>
				<%} %>
				<%if(result4.equals("2")){ %>
				<tr>
					<td><input type="radio" name="" value="48">48 งวด</td>
					<td>0.60</td>
					<td>4444</td>
				</tr>
				<tr>
					<td><input type="radio" name="" value="60">60 งวด</td>
					<td>0.66</td>
					<td>4444</td>
				</tr>
				<%} %>
			</tbody>
		</table>
		<div class="panel-footer" align="center"
			style="background: transparent;">
			<input type="submit" value="ยืนยัน" class="btn btn-success">
		</div>
	</form>
</div>