<%@page import="com.bru.model.BrandBean"%>
<%@page import="java.util.List"%>
<%@ page language="java" contentType="text/html; charset=utf-8"
	pageEncoding="utf-8"%>
	<%List<BrandBean> list =null; %>
	<% list = (List<BrandBean>) request.getSession().getAttribute("list"); %>
	<div class="form-group">
	
						<label for="brand" >รุ่น<span
					style="color: red;">*</span>:
				</label> <select name="carmake2" id="brand" class="form-control">
					<option value="">กรุณาเลือก</option>
					<optgroup label="รถยนต์">
					<%
				
					for (int i = 0; i < list.size(); i++) {
				%>
				<%if(list.get(i).getYeYear().equals("2017") && list.get(i).getCarName().equals("AUDI")) {%>
				<option value="<%=list.get(i).getBrName()%>"><%=list.get(i).getBrName()%></option>
				
				<% }} %>
						<!--  <option value="NEW TT 2.0 S.lingquattro">NEW TT 2.0 S.lingquattro</option> -->
					</optgroup>
				</select>
					</div>
					
					<div class="form-group">
	
						<label for="brand" >รุ่น<span
					style="color: red;">*</span>:
				</label> <select name="carmake2" id="brand" class="form-control">
					<option value="">กรุณาเลือก</option>
					<optgroup label="รถยนต์">
					<%
				
					for (int i = 0; i < list.size(); i++) {
				%>
				<%if(list.get(i).getYeYear().equals("2017") && list.get(i).getCarName().equals("BENZ")) {%>
				<option value="<%=list.get(i).getBrName()%>"><%=list.get(i).getBrName()%></option>
				
				<% }} %>
						<!--  <option value="NEW TT 2.0 S.lingquattro">NEW TT 2.0 S.lingquattro</option> -->
					</optgroup>
				</select>
					</div>
					
					<div class="form-group">
	
						<label for="brand" >รุ่น<span
					style="color: red;">*</span>:
				</label> <select name="carmake2" id="brand" class="form-control">
					<option value="">กรุณาเลือก</option>
					<optgroup label="รถยนต์">
					<%
				
					for (int i = 0; i < list.size(); i++) {
				%>
				<%if(list.get(i).getYeYear().equals("2017") && list.get(i).getCarName().equals("BMW")) {%>
				<option value="<%=list.get(i).getBrName()%>"><%=list.get(i).getBrName()%></option>
				
				<% }} %>
						<!--  <option value="NEW TT 2.0 S.lingquattro">NEW TT 2.0 S.lingquattro</option> -->
					</optgroup>
				</select>
					</div>
					
					<div class="form-group">
	
						<label for="brand" >รุ่น<span
					style="color: red;">*</span>:
				</label> <select name="carmake2" id="brand" class="form-control">
					<option value="">กรุณาเลือก</option>
					<optgroup label="รถยนต์">
					<%
				
					for (int i = 0; i < list.size(); i++) {
				%>
				<%if(list.get(i).getYeYear().equals("2017") && list.get(i).getCarName().equals("CHEVROLET")) {%>
				<option value="<%=list.get(i).getBrName()%>"><%=list.get(i).getBrName()%></option>
				
				<% }} %>
						<!--  <option value="NEW TT 2.0 S.lingquattro">NEW TT 2.0 S.lingquattro</option> -->
					</optgroup>
				</select>
					</div>
					
					<div class="form-group">
	
						<label for="brand" >รุ่น<span
					style="color: red;">*</span>:
				</label> <select name="carmake2" id="brand" class="form-control">
					<option value="">กรุณาเลือก</option>
					<optgroup label="รถยนต์">
					<%
				
					for (int i = 0; i < list.size(); i++) {
				%>
				<%if(list.get(i).getYeYear().equals("2017") && list.get(i).getCarName().equals("FORD")) {%>
				<option value="<%=list.get(i).getBrName()%>"><%=list.get(i).getBrName()%></option>
				
				<% }} %>
						<!--  <option value="NEW TT 2.0 S.lingquattro">NEW TT 2.0 S.lingquattro</option> -->
					</optgroup>
				</select>
					</div>
					
					<div class="form-group">
	
						<label for="brand" >รุ่น<span
					style="color: red;">*</span>:
				</label> <select name="carmake2" id="brand" class="form-control">
					<option value="">กรุณาเลือก</option>
					<optgroup label="รถยนต์">
					<%
				
					for (int i = 0; i < list.size(); i++) {
				%>
				<%if(list.get(i).getYeYear().equals("2017") && list.get(i).getCarName().equals("HONDA")) {%>
				<option value="<%=list.get(i).getBrName()%>"><%=list.get(i).getBrName()%></option>
				
				<% }} %>
						<!--  <option value="NEW TT 2.0 S.lingquattro">NEW TT 2.0 S.lingquattro</option> -->
					</optgroup>
				</select>
					</div>
					
						<div class="form-group">
	
						<label for="brand" >ยี่ห้อ<span
					style="color: red;">*</span>:
				</label> <select name="carmake2" id="brand" class="form-control">
					<option value="">กรุณาเลือก</option>
					<optgroup label="รถยนต์">
					<%
				
					for (int i = 0; i < list.size(); i++) {
				%>
				<%if(list.get(i).getYeYear().equals("2017") && list.get(i).getCarName().equals("ISUZU")) {%>
				<option value="<%=list.get(i).getBrName()%>"><%=list.get(i).getBrName()%></option>
				
				<% }} %>
						<!--  <option value="NEW TT 2.0 S.lingquattro">NEW TT 2.0 S.lingquattro</option> -->
					</optgroup>
				</select>
					</div>
					
					
						<div class="form-group">
	
						<label for="brand" >ยี่ห้อ<span
					style="color: red;">*</span>:
				</label> <select name="carmake2" id="brand" class="form-control">
					<option value="">กรุณาเลือก</option>
					<optgroup label="รถยนต์">
					<%
				
					for (int i = 0; i < list.size(); i++) {
				%>
				<%if(list.get(i).getYeYear().equals("2017") && list.get(i).getCarName().equals("MAZDA")) {%>
				<option value="<%=list.get(i).getBrName()%>"><%=list.get(i).getBrName()%></option>
				
				<% }} %>
						<!--  <option value="NEW TT 2.0 S.lingquattro">NEW TT 2.0 S.lingquattro</option> -->
					</optgroup>
				</select>
					</div>
					
					
						<div class="form-group">
	
						<label for="brand" >รุ่น<span
					style="color: red;">*</span>:
				</label> <select name="carmake2" id="brand" class="form-control">
					<option value="">กรุณาเลือก</option>
					<optgroup label="รถยนต์">
					<%
				
					for (int i = 0; i < list.size(); i++) {
				%>
				<%if(list.get(i).getYeYear().equals("2017") && list.get(i).getCarName().equals("MITSUBISHI")) {%>
				<option value="<%=list.get(i).getBrName()%>"><%=list.get(i).getBrName()%></option>
				
				<% }} %>
						<!--  <option value="NEW TT 2.0 S.lingquattro">NEW TT 2.0 S.lingquattro</option> -->
					</optgroup>
				</select>
					</div>
					
						<div class="form-group">
	
						<label for="brand" >รุ่น<span
					style="color: red;">*</span>:
				</label> <select name="carmake2" id="brand" class="form-control">
					<option value="">กรุณาเลือก</option>
					<optgroup label="รถยนต์">
					<%
				
					for (int i = 0; i < list.size(); i++) {
				%>
				<%if(list.get(i).getYeYear().equals("2017") && list.get(i).getCarName().equals("NISSAN")) {%>
				<option value="<%=list.get(i).getBrName()%>"><%=list.get(i).getBrName()%></option>
				
				<% }} %>
					</optgroup>
				</select>
					</div>
					<div class="form-group">
	
						<label for="brand" >รุ่น<span
					style="color: red;">*</span>:
				</label> <select name="carmake2" id="brand" class="form-control">
					<option value="">กรุณาเลือก</option>
					<optgroup label="รถยนต์">
					<%
				
					for (int i = 0; i < list.size(); i++) {
				%>
				<%if(list.get(i).getYeYear().equals("2017") && list.get(i).getCarName().equals("SUZUKI")) {%>
				<option value="<%=list.get(i).getBrName()%>"><%=list.get(i).getBrName()%></option>
				
				<% }} %>
						<!--  <option value="NEW TT 2.0 S.lingquattro">NEW TT 2.0 S.lingquattro</option> -->
					</optgroup>
				</select>
					</div>
					
							<div class="form-group">
	
						<label for="brand" >ยี่ห้อ<span
					style="color: red;">*</span>:
				</label> <select name="carmake2" id="brand" class="form-control">
					<option value="">กรุณาเลือก</option>
					<optgroup label="รถยนต์">
					<%
				
					for (int i = 0; i < list.size(); i++) {
				%>
				<%if(list.get(i).getYeYear().equals("2017") && list.get(i).getCarName().equals("TOYOTA")) {%>
				<option value="<%=list.get(i).getBrName()%>"><%=list.get(i).getBrName()%></option>
				
				<% }} %>
						<!--  <option value="NEW TT 2.0 S.lingquattro">NEW TT 2.0 S.lingquattro</option> -->
					</optgroup>
				</select>
					</div>