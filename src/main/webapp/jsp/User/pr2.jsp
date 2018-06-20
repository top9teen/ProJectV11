

<%@ page language="java" contentType="text/html; charset=utf-8"
	pageEncoding="utf-8"%>
<%@page import="java.util.List"%>
<%@page import="com.bru.model.*"%>

<%
	SimBean bean3 = null;
	SimpleTestBean test = null;
%>
<%
test =(SimpleTestBean) request.getSession().getAttribute("test");
bean3 = (SimBean) request.getSession().getAttribute("simbean");
%>

<div class="form-group" >
				<form action="gotoregister" method="post">
		<h2 align="center"><%=bean3.getName() %></h2>
		<input type="hidden" value="<%=bean3.getName()%>" name="name">
		<input type="hidden" value="<%=bean3.getPring1()%>" name="pp">
		<input type="hidden" value="<%=bean3.getMycar()%>" name="Mycar">
					<input type="hidden" value="<%=bean3.getMybrand()%>"
						name="Mybrand"> <input type="hidden"
						value="<%=bean3.getMyYear()%>" name="MyYear">
						<h2>เงินที่คุณต้องการคือ : <%=bean3.getPring1() %> บาท</h2>
		<div class="col-md-12">
			<div class="col-md-12">
			
			</div>
		</div>
		<table class="table table-bordered">
			<thead>
				<tr style="background-color: fuchsia;">
					<th class="col-md-4 iefix">ระยะเวลาผ่อนชำระ</th>
					<th class="col-md-4 iefix">อัตราดอกเบี้ย</th>
					<th class="col-md-4 iefix">ค่างวด (ต่อเดือน)</th>
				</tr>
			</thead>
			<tbody>
				<tr style="background-color: inactivecaptiontext;">
					<td><input type="radio" name="yy" value="12" checked="checked">12 งวด</td>
					<td>0.55</td>
					<td><%=test.getPrig1() %></td>
				</tr>
				<tr>
					<td><input type="radio" name="yy" value="24">24 งวด</td>
					<td>0.55</td>
					<td><%=test.getPrig2() %></td>
				</tr>
				<tr style="background-color: inactivecaptiontext;">
					<td><input type="radio" name="yy" value="36">36งวด</td>
					<td>0.55</td>
					<td><%=test.getPrig3() %></td>
				</tr>
				<%if(bean3.getPring1() >= 300000){ %>
				<tr>
					<td><input type="radio" name="yy" value="48">48 งวด</td>
					<td>0.60</td>
					<td><%=test.getPrig4() %></td>
				</tr>
				<tr style="background-color: inactivecaptiontext;">
					<td><input type="radio" name="yy" value="60">60 งวด</td>
					<td>0.66</td>
					<td><%=test.getPrig5() %></td>
				</tr>
				<%} %>
			</tbody>
		</table>
		<div class="panel-footer" align="center"
			style="background: transparent;">
			<input type="submit" value="ยืนยัน" class="btn btn-success">
		</div>
	</form>

<input type="button" class="btn btn-primary" align="middle" value="กลับหน้าแรก" onclick="gotohome()">&nbsp;&nbsp;
		<div class="w3-row-padding w3-padding-16" id="about">
			<div class="w3-col m6">
				<img src="assets/img/car4.jpg" alt="Me" style="width: 100%">
			</div>
			<div class="w3-col m6">
				<img src="assets/img/car5.png" alt="Me" style="width: 100%">
			</div>
		</div>
</div>
<script type="text/javascript">
function gotohome() {
    var txt;
    if (confirm("คุณต้องการจะกลับหน้าแรก หรือไม่")) {
    	 window.location="/welcome"; 
    	
    } else {
    		
    }
    document.getElementById("demo").innerHTML = txt;
}
</script>
