<%@page import="com.bru.model.UserAllBean"%>
<%@page import="com.bru.model.RegnameBean"%>
<%@ page import="java.util.List"%>
<%@ page language="java" contentType="text/html; charset=utf-8"
	pageEncoding="utf-8"%>
<%@page import="com.bru.model.RegisterallBean"%>
<%@page import="java.util.List"%>
<%
	UserAllBean bean = null;
	RegnameBean be = null;
%>
<%
	String result = "";
%>
<%
	result = (String) request.getAttribute("se");
%>
<%
	bean = (UserAllBean) request.getSession().getAttribute("Login");
	be = (RegnameBean) request.getSession().getAttribute("resultBean");
%>


<html xmlns:th="http://www.thymeleaf.org">
<html>
<head>
<meta charset="utf-8">
<meta name="viewport" content="width=device-width, initial-scale=1">
<title>WELLCOME MY ADMIN</title>
<link href="assets/admin/css/bootstrap.min.css" rel="stylesheet">
<link href="assets/admin/css/font-awesome.min.css" rel="stylesheet">
<link href="assets/admin/css/datepicker3.css" rel="stylesheet">
<link href="assets/admin/css/styles.css" rel="stylesheet">

<!--Custom Font-->
<link
	href="https://fonts.googleapis.com/css?family=Montserrat:300,300i,400,400i,500,500i,600,600i,700,700i"
	rel="stylesheet">
<!--[if lt IE 9]>
	<script src="js/html5shiv.js"></script>
	<script src="js/respond.min.js"></script>
	<![endif]-->
</head>
<body>

	<nav class="navbar navbar-custom navbar-fixed-top" role="navigation">
		<div class="container-fluid">
			<div class="navbar-header">
				<button type="button" class="navbar-toggle collapsed"
					data-toggle="collapse" data-target="#sidebar-collapse">
					<span class="sr-only">Toggle navigation</span> <span
						class="icon-bar"></span> <span class="icon-bar"></span> <span
						class="icon-bar"></span>
				</button>
				<a class="navbar-brand" href="#"><span>WELLCOME</span>Admin</a>
				<ul class="nav navbar-top-links navbar-right">
					<li class="dropdown"><a class="dropdown-toggle count-info"
						data-toggle="dropdown" href="#"> <em class="fa fa-envelope"></em><span
							class="label label-danger">15</span>
					</a>
						<ul class="dropdown-menu dropdown-messages">
							<li>
								<div class="dropdown-messages-box">
									<a href="profile.html" class="pull-left"> <img alt="image"
										class="img-circle" src="http://placehold.it/40/30a5ff/fff">
									</a>
									<div class="message-body">
										<small class="pull-right">3 mins ago</small> <a href="#"><strong>John
												Doe</strong> commented on <strong>your photo</strong>.</a> <br />
										<small class="text-muted">1:24 pm - 25/03/2015</small>
									</div>
								</div>
							</li>
							<li class="divider"></li>
							<li>
								<div class="dropdown-messages-box">
									<a href="profile.html" class="pull-left"> <img alt="image"
										class="img-circle" src="http://placehold.it/40/30a5ff/fff">
									</a>
									<div class="message-body">
										<small class="pull-right">1 hour ago</small> <a href="#">New
											message from <strong>Jane Doe</strong>.
										</a> <br />
										<small class="text-muted">12:27 pm - 25/03/2015</small>
									</div>
								</div>
							</li>
							<li class="divider"></li>
							<li>
								<div class="all-button">
									<a href="#"> <em class="fa fa-inbox"></em> <strong>All
											Messages</strong>
									</a>
								</div>
							</li>
						</ul></li>
					<li class="dropdown"><a class="dropdown-toggle count-info"
						data-toggle="dropdown" href="#"> <em class="fa fa-bell"></em><span
							class="label label-info">5</span>
					</a>
						<ul class="dropdown-menu dropdown-alerts">
							<li><a href="#">
									<div>
										<em class="fa fa-envelope"></em> 1 New Message <span
											class="pull-right text-muted small">3 mins ago</span>
									</div>
							</a></li>
							<li class="divider"></li>
							<li><a href="#">
									<div>
										<em class="fa fa-heart"></em> 12 New Likes <span
											class="pull-right text-muted small">4 mins ago</span>
									</div>
							</a></li>
							<li class="divider"></li>
							<li><a href="#">
									<div>
										<em class="fa fa-user"></em> 5 New Followers <span
											class="pull-right text-muted small">4 mins ago</span>
									</div>
							</a></li>
						</ul></li>
				</ul>
			</div>
		</div>
		<!-- /.container-fluid -->
	</nav>
	<div id="sidebar-collapse" class="col-sm-3 col-lg-2 sidebar">
		<div class="profile-sidebar">
			<div class="profile-userpic">
				<img src="http://placehold.it/50/30a5ff/fff" class="img-responsive"
					alt="">
			</div>
			<div class="profile-usertitle">
				<div class="profile-usertitle-name"><%=bean.getUsFname()%></div>
				<div class="profile-usertitle-status">
					<span class="indicator label-success"></span>Online
				</div>
			</div>
			<div class="clear"></div>
		</div>
		<div class="divider"></div>
		<form role="search">
			<div class="form-group">
				<input type="text" class="form-control" placeholder="Search">
			</div>
		</form>
		<ul class="nav menu">
			<li class="active"><a href="welcomeAdmin"><em
					class="fa fa-dashboard">&nbsp;</em> Dashboard</a></li>
			<li><a href="widgets"><em class="fa fa-calendar">&nbsp;</em>
					Widgets</a></li>
			<li><a href="charts"><em class="fa fa-bar-chart">&nbsp;</em>
					Charts</a></li>
			<li><a href="elements"><em class="fa fa-toggle-off">&nbsp;</em>
					UI Elements</a></li>
			<li><a href="panelsl"><em class="fa fa-clone">&nbsp;</em>
					Alerts &amp; Panels</a></li>
			<li class="parent "><a data-toggle="collapse" href="#sub-item-1">
					<em class="fa fa-navicon">&nbsp;</em> Multilevel <span
					data-toggle="collapse" href="#sub-item-1" class="icon pull-right"><em
						class="fa fa-plus"></em></span>
			</a>
				<ul class="children collapse" id="sub-item-1">
					<li><a class="" href="adminsel1">
						<span class="fa fa-arrow-right">&nbsp;</span> ดูสินเชื่อทั้งหมด
					</a></li>
					<li><a class="" href="adminsel2">
						<span class="fa fa-arrow-right">&nbsp;</span> ดูสินเชื่อที่ผ่านอนุมัต
					</a></li>
					<li><a class="" href="adminsel3">
						<span class="fa fa-arrow-right">&nbsp;</span> ดูรายละเอียดธนาคาร
					</a></li>
					<li><a class="" href="adminmsg">
						<span class="fa fa-arrow-right">&nbsp;</span> ข้อความจากสมาชิก
					</a></li>
					<li><a class="" href="adminupdate">
						<span class="fa fa-arrow-right">&nbsp;</span> อัพเดทราคารถยนต์
					</a></li>
					<li><a class="" href="admininsert">
						<span class="fa fa-arrow-right">&nbsp;</span> เพิ่มรถยนต์
					</a></li>
				</ul>
				</li>
			<li><a href="logoutadmin"><em class="fa fa-power-off">&nbsp;</em>
					Logout</a></li>
		</ul>
	</div>
	<!--/.sidebar-->

	<div class="col-sm-9 col-sm-offset-3 col-lg-10 col-lg-offset-2 main">
		<div class="row">
			<ol class="breadcrumb">
				<li><a href="#"> <em class="fa fa-home"></em>
				</a></li>
				<li class="active">Dashboard</li>
			</ol>
		</div>
		<!--/.row-->

		<div class="row">
			<div class="col-lg-12">
				<h1 class="page-header">Dashboard</h1>
			</div>
		</div>
		<!--/.row-->

		<div class="panel panel-container">
			<div class="row">
				<div class="col-xs-6 col-md-3 col-lg-3 no-padding">
					<div class="panel panel-teal panel-widget border-right">
						<div class="row no-padding">
							<em class="fa fa-xl fa-shopping-cart color-blue"></em>
							<div class="large">120</div>
							<div class="text-muted">New Orders</div>
						</div>
					</div>
				</div>
				<div class="col-xs-6 col-md-3 col-lg-3 no-padding">
					<div class="panel panel-blue panel-widget border-right">
						<div class="row no-padding">
							<em class="fa fa-xl fa-comments color-orange"></em>
							<div class="large">52</div>
							<div class="text-muted">Comments</div>
						</div>
					</div>
				</div>
				<div class="col-xs-6 col-md-3 col-lg-3 no-padding">
					<div class="panel panel-orange panel-widget border-right">
						<div class="row no-padding">
							<em class="fa fa-xl fa-users color-teal"></em>
							<div class="large">24</div>
							<div class="text-muted">New Users</div>
						</div>
					</div>
				</div>
				<div class="col-xs-6 col-md-3 col-lg-3 no-padding">
					<div class="panel panel-red panel-widget ">
						<div class="row no-padding">
							<em class="fa fa-xl fa-search color-red"></em>
							<div class="large">25.2k</div>
							<div class="text-muted">Page Views</div>
						</div>
					</div>
				</div>
			</div>
			<!--/.row-->
		</div>
		<div class="row">
			<div class="col-md-12">
				<div class="panel panel-default">

					<div class="panel-body">

						<form id="loanForm" name="loanForm" action="rename" method="post"
				class="form-horizontal loan-registration" role="form"
				autocomplete="off" enctype="multipart/form-data">
				<h1 a><%=be.getRegFirstname()%></h1>

				<div class="form-group row">
					<div class="form-group col-md-6">
						<label for="firstname" class="col-sm-5 control-label">ชื่อ<span
							class="red-star">*</span>:
						</label>
						<div class="form-group col-sm-7">
						<input type="hidden" value="<%=be.getRegBankname()%>" name="bankName">
							<input type="text" maxlength="100"
								value="<%=be.getRegFirstname()%>" id="firstname"
								class="form-control" disabled="disabled"> <input
								type="hidden" value="<%=be.getRegFirstname()%>" name="firstName">
						</div>
					</div>
					<div class="form-group col-md-6">
						<label for="lastname" class="col-sm-5 control-label">นามสกุล<span
							class="red-star">*</span>:
						</label>
						<div class="form-group col-sm-7">
							<input type="text" maxlength="150"
								value="<%=be.getRegLastname()%>" id="lastname"
								class="form-control" disabled="disabled"> <input
								type="hidden" value="<%=be.getRegLastname()%>" name="lastName">
						</div>
					</div>
				</div>
				<div class="form-group col-md-6">
					<label for="age" class="col-sm-5 control-label">อายุ<span
						class="red-star">*</span>:
					</label>
					<div class="form-group col-sm-7">
						<input type="number" maxlength="3" value="<%=be.getRegAge()%>"
							id="age" class="form-control" disabled="disabled"> <input
							type="hidden" value="<%=be.getRegAge()%>" name="age">
					</div>
				</div>
				<div class="form-group col-md-6">
					<label for="province" class="col-sm-5 control-label">จังหวัดที่อยู่ปัจจุบัน<span
						class="red-star">*</span>:
					</label>
					<div class="form-group col-sm-7">
						<input type="text" value="<%=be.getRegProvince()%>" id="age"
							class="form-control" disabled="disabled"> <input
							type="hidden" value="<%=be.getRegProvince()%>" name="province">
					</div>
				</div>

				<div class="form-group row ">
					<div class="form-group col-md-6">
						<label for="tel" class="col-sm-5 control-label">เบอร์โทรศัพท์ที่ติดต่อได้<span
							class="red-star">*</span>:
						</label>
						<div class="col-sm-7">
							<input type="number" name="" maxlength="50"
								value="<%=be.getRegTelephone()%>" id="tel"
								class="form-control" disabled="disabled"> <input
								value="<%=be.getRegTelephone()%>" type="hidden"
								name="telephoneNo">
						</div>
					</div>
					<div class="form-group col-md-6">
						<label for="tel" class="col-sm-5 control-label">เลขบัตรประชาชน<span
							class="red-star">*</span>:
						</label>
						<div class="form-group col-sm-7">
							<input type="number" name="" maxlength="13"
								value="<%=be.getRegIdCard()%>" disabled="disabled" class="form-control"> <input
								value="<%=be.getRegIdCard()%>" type="hidden" name="idcard">
						</div>
					</div>
					<div class="form-group col-md-6">
						<label for="email" class="col-sm-5 control-label">อีเมล์<span
							class="red-star">*</span>:
						</label>
						<div class="form-group col-sm-7">
							<input type="text" name="" maxlength="90"
								value="<%=be.getRegEmail()%>" id="email" class="form-control"
								disabled="disabled"> <input
								value="<%=be.getRegEmail()%>" type="hidden" name="email">
						</div>
					</div>
				</div>
				<div class="form-group row ">
					<div class="form-group col-md-6">
						<label for="brand" class="col-sm-5 control-label">ยี่ห้อ<span
							class="red-star">*</span>:
						</label>
						<div class="form-group col-sm-7">
							<input type="text" maxlength="50" value="<%=be.getRegCarmake()%>"
								id="brand" class="form-control" disabled="disabled"> <input
								type="hidden" name="carMake" value="<%=be.getRegCarmake()%>">

						</div>
					</div>
					<div class="form-group col-md-6">
						<label for="model" class="col-sm-5 control-label">รุ่น<span
							class="red-star">*</span>:
						</label>
						<div class="form-group col-sm-7">
							<input type="text" name="" maxlength="250"
								value="<%=be.getRegCarmodel()%>" id="model" disabled="disabled"
								class="form-control"> <input type="hidden"
								name="carModel" value="<%=be.getRegCarmodel()%>">
						</div>
					</div>
				</div>
				<div class="form-group row ">
					<div class="form-groupcol-md-6">
						<label for="year_registration" class="col-sm-5 control-label">ปีที่จดทะเบียน
							(ค.ศ.)<span class="red-star">*</span>:
						</label>
						<div class="form-group col-sm-7">

							<input type="text" name="" maxlength="13"
								value="<%=be.getRegTotalincome()%>" id="income"
								class="form-control" disabled="disabled"> <input
								type="hidden" name="totalIncome"
								value="<%=be.getRegTotalincome()%>" id="income"
								class="form-control">

						</div>
					</div>
					<div class="form-group col-md-6">
						<label for="income" class="col-sm-5 control-label">รายได้สุทธิต่อเดือน<span
							class="red-star">*</span>:
						</label>
						<div class="form-group col-sm-7">
							<input type="text" name="" disabled="disabled"
								value="<%=be.getRegSalary()%>" id="income"
								class="form-control"> <input type="hidden"
								value="<%=be.getRegSalary()%>" name="salary">
						</div>
					</div>
				</div>
				<div class="form-group row ">
					<div class="form-group col-md-6">
						<label for="loan_amount" class="col-sm-5 control-label">วงเงินขั้นต่ำที่ต้องการ<span
							class="red-star">*</span>:
						</label>
						<div class="form-group col-sm-7">
							<input type="text" name="" maxlength="13"
								value="<%=be.getRegLesslimit()%>" id="loan_amount"
								class="form-control" disabled="disabled"> <input
								type="hidden" name="lessLimit" value="<%=be.getRegLesslimit()%>"
								class="form-control">

						</div>
					</div>
				
				<div class="form-group col-md-6">
					<label for="period" class="col-sm-5 control-label">ระยะเวลาในการชำระคืน<span
						class="red-star">*</span>:
					</label>
					<div class="form-group col-sm-7">

						<input type="text" maxlength="13" value="<%=be.getRegLessday()%>"
							id="loan_amount" class="form-control" disabled> <input
							type="hidden" name="lassday" value="<%=be.getRegLessday()%>"
							class="form-control">
					</div>
					</div>
				</div>
				<div class="form-group row">
						<div class="form-group col-md-3" >
						</div>
						<div class="form-group col-md-6" >
						
					<label for="period" class="col-sm-5 control-label">
						รูปรถด้านหน้า<span class="red-star">*</span>:
					</label> <input type="hidden" value="<%=be.getRegImgfront()%>" name="file1">
					<img alt="" src="<%=be.getRegImgfront()%>"style="width: 900px;height: 720px;">
				
				
					<label for="period" class="col-sm-5 control-label">
						รูปรถด้านหลัง<span class="red-star">*</span>:
					</label> <input type="hidden" value="<%=be.getRegImgback()%>" name="file2">
					<img alt="" src="<%=be.getRegImgback()%>"style="width: 900px;height: 720px;">
				
					<label for="period" class="col-sm-5 control-label">
						รูปรถด้านซ้าย<span class="red-star">*</span>:
					</label> <input type="hidden" value="<%=be.getRegImgLeft()%>" name="file3">
					<img alt="" src="<%=be.getRegImgLeft()%>"style="width: 900px;height: 720px;">
				
					<label for="period" class="col-sm-5 control-label">
						รูปรถด้านขวา<span class="red-star">*</span>:
					</label> <input type="hidden" value="<%=be.getRegImgright()%>" name="file4">
					<img alt="" src="<%=be.getRegImgright()%>"style="width: 900px;height: 720px;">
				</div>
					<div class="form-group col-md-3" >
						</div>
				</div> 
				

				<br>
				<div id="divSubmit" class="row " align="center">
					<div class="col-md-6">
						<label class="col-sm-5 control-label">&nbsp;</label>
						
							<a type="button" class="btn btn-danger" onclick="black()">
								Back</a>
						</div>
					</div>
</form>
					</div>

				

				</div>
			</div>
		</div>
	</div>
	<!--/.row-->

	<div class="row">
		<div class="col-xs-6 col-md-3">
			<div class="panel panel-default">
				<div class="panel-body easypiechart-panel">
					<h4>New Orders</h4>
					<div class="easypiechart" id="easypiechart-blue" data-percent="92">
						<span class="percent">92%</span>
					</div>
				</div>
			</div>
		</div>
		<div class="col-xs-6 col-md-3">
			<div class="panel panel-default">
				<div class="panel-body easypiechart-panel">
					<h4>Comments</h4>
					<div class="easypiechart" id="easypiechart-orange"
						data-percent="65">
						<span class="percent">65%</span>
					</div>
				</div>
			</div>
		</div>
		<div class="col-xs-6 col-md-3">
			<div class="panel panel-default">
				<div class="panel-body easypiechart-panel">
					<h4>New Users</h4>
					<div class="easypiechart" id="easypiechart-teal" data-percent="56">
						<span class="percent">56%</span>
					</div>
				</div>
			</div>
		</div>
		<div class="col-xs-6 col-md-3">
			<div class="panel panel-default">
				<div class="panel-body easypiechart-panel">
					<h4>Visitors</h4>
					<div class="easypiechart" id="easypiechart-red" data-percent="27">
						<span class="percent">27%</span>
					</div>
				</div>
			</div>
		</div>
	</div>
	<!--/.row-->

	<div class="row">
		<div class="col-md-6">
			<div class="panel panel-default chat">
				<div class="panel-heading">
					Chat
					<ul class="pull-right panel-settings panel-button-tab-right">
						<li class="dropdown"><a class="pull-right dropdown-toggle"
							data-toggle="dropdown" href="#"> <em class="fa fa-cogs"></em>
						</a>
							<ul class="dropdown-menu dropdown-menu-right">
								<li>
									<ul class="dropdown-settings">
										<li><a href="#"> <em class="fa fa-cog"></em> Settings
												1
										</a></li>
										<li class="divider"></li>
										<li><a href="#"> <em class="fa fa-cog"></em> Settings
												2
										</a></li>
										<li class="divider"></li>
										<li><a href="#"> <em class="fa fa-cog"></em> Settings
												3
										</a></li>
									</ul>
								</li>
							</ul></li>
					</ul>
					<span
						class="pull-right clickable panel-toggle panel-button-tab-left"><em
						class="fa fa-toggle-up"></em></span>
				</div>
				<div class="panel-body">
					<ul>
						<li class="left clearfix"><span class="chat-img pull-left">
								<img src="http://placehold.it/60/30a5ff/fff" alt="User Avatar"
								class="img-circle" />
						</span>
							<div class="chat-body clearfix">
								<div class="header">
									<strong class="primary-font">John Doe</strong> <small
										class="text-muted">32 mins ago</small>
								</div>
								<p>Lorem ipsum dolor sit amet, consectetur adipiscing elit.
									Nulla ante turpis, rutrum ut ullamcorper sed, dapibus ac nunc.</p>
							</div></li>
						<li class="right clearfix"><span class="chat-img pull-right">
								<img src="http://placehold.it/60/dde0e6/5f6468"
								alt="User Avatar" class="img-circle" />
						</span>
							<div class="chat-body clearfix">
								<div class="header">
									<strong class="pull-left primary-font">Jane Doe</strong> <small
										class="text-muted">6 mins ago</small>
								</div>
								<p>Lorem ipsum dolor sit amet, consectetur adipiscing elit.
									Nulla ante turpis, rutrum ut ullamcorper sed, dapibus ac nunc.</p>
							</div></li>
						<li class="left clearfix"><span class="chat-img pull-left">
								<img src="http://placehold.it/60/30a5ff/fff" alt="User Avatar"
								class="img-circle" />
						</span>
							<div class="chat-body clearfix">
								<div class="header">
									<strong class="primary-font">John Doe</strong> <small
										class="text-muted">32 mins ago</small>
								</div>
								<p>Lorem ipsum dolor sit amet, consectetur adipiscing elit.
									Nulla ante turpis, rutrum ut ullamcorper sed, dapibus ac nunc.</p>
							</div></li>
					</ul>
				</div>
				<div class="panel-footer">
					<div class="input-group">
						<input id="btn-input" type="text" class="form-control input-md"
							placeholder="Type your message here..." /><span
							class="input-group-btn">
							<button class="btn btn-primary btn-md" id="btn-chat">Send</button>
						</span>
					</div>
				</div>
			</div>
			<div class="panel panel-default">
				<div class="panel-heading">
					To-do List
					<ul class="pull-right panel-settings panel-button-tab-right">
						<li class="dropdown"><a class="pull-right dropdown-toggle"
							data-toggle="dropdown" href="#"> <em class="fa fa-cogs"></em>
						</a>
							<ul class="dropdown-menu dropdown-menu-right">
								<li>
									<ul class="dropdown-settings">
										<li><a href="#"> <em class="fa fa-cog"></em> Settings
												1
										</a></li>
										<li class="divider"></li>
										<li><a href="#"> <em class="fa fa-cog"></em> Settings
												2
										</a></li>
										<li class="divider"></li>
										<li><a href="#"> <em class="fa fa-cog"></em> Settings
												3
										</a></li>
									</ul>
								</li>
							</ul></li>
					</ul>
					<span
						class="pull-right clickable panel-toggle panel-button-tab-left"><em
						class="fa fa-toggle-up"></em></span>
				</div>
				<div class="panel-body"></div>
				<div class="panel-footer">
					<div class="input-group">
						<input id="btn-input" type="text" class="form-control input-md"
							placeholder="Add new task" /><span class="input-group-btn">
							<button class="btn btn-primary btn-md" id="btn-todo">Add</button>
						</span>
					</div>
				</div>
			</div>
		</div>
		<!--/.col-->


		<div class="col-md-6">
			<div class="panel panel-default ">
				<div class="panel-heading">
					Timeline
					<ul class="pull-right panel-settings panel-button-tab-right">
						<li class="dropdown"><a class="pull-right dropdown-toggle"
							data-toggle="dropdown" href="#"> <em class="fa fa-cogs"></em>
						</a>
							<ul class="dropdown-menu dropdown-menu-right">
								<li>
									<ul class="dropdown-settings">
										<li><a href="#"> <em class="fa fa-cog"></em>
										</a></li>
										<li class="divider"></li>
										<li><a href="#"> <em class="fa fa-cog"></em>
										</a></li>
										<li class="divider"></li>
										<li><a href="#"> <em class="fa fa-cog"></em>
										</a></li>
									</ul>
								</li>
							</ul></li>
					</ul>
					<span
						class="pull-right clickable panel-toggle panel-button-tab-left"><em
						class="fa fa-toggle-up"></em></span>
				</div>
				<div class="panel-body timeline-container">
					<ul class="timeline">
						<li>
							<div class="timeline-badge">
								<em class="glyphicon glyphicon-pushpin"></em>
							</div>
							<div class="timeline-panel">
								<div class="timeline-heading">
									<h4 class="timeline-title">Lorem ipsum dolor sit amet</h4>
								</div>
								<div class="timeline-body">
									<p>Lorem ipsum dolor sit amet, consectetur adipiscing elit.
										Integer at sodales nisl. Donec malesuada orci ornare risus
										finibus feugiat.</p>
								</div>
							</div>
						</li>
						<li>
							<div class="timeline-badge primary">
								<em class="glyphicon glyphicon-link"></em>
							</div>
							<div class="timeline-panel">
								<div class="timeline-heading">
									<h4 class="timeline-title">Lorem ipsum dolor sit amet</h4>
								</div>
								<div class="timeline-body">
									<p>Lorem ipsum dolor sit amet, consectetur adipiscing elit.</p>
								</div>
							</div>
						</li>
						<li>
							<div class="timeline-badge">
								<em class="glyphicon glyphicon-camera"></em>
							</div>
							<div class="timeline-panel">
								<div class="timeline-heading">
									<h4 class="timeline-title">Lorem ipsum dolor sit amet</h4>
								</div>
								<div class="timeline-body">
									<p>Lorem ipsum dolor sit amet, consectetur adipiscing elit.
										Integer at sodales nisl. Donec malesuada orci ornare risus
										finibus feugiat.</p>
								</div>
							</div>
						</li>
						<li>
							<div class="timeline-badge">
								<em class="glyphicon glyphicon-paperclip"></em>
							</div>
							<div class="timeline-panel">
								<div class="timeline-heading">
									<h4 class="timeline-title">Lorem ipsum dolor sit amet</h4>
								</div>
								<div class="timeline-body">
									<p>Lorem ipsum dolor sit amet, consectetur adipiscing elit.</p>
								</div>
							</div>
						</li>
					</ul>
				</div>
			</div>
		</div>
		<!--/.col-->
		<div class="col-sm-12">
			<p class="back-link">
				Lumino Theme by <a href="https://www.medialoot.com">Medialoot</a>
			</p>
		</div>
	</div>
	<!--/.row-->
	</div>
	<!--/.main-->

	<script src="assets/admin/js/jquery-1.11.1.min.js"></script>
	<script src="assets/admin/js/bootstrap.min.js"></script>
	<script src="assets/admin/js/chart.min.js"></script>
	<script src="assets/admin/js/chart-data.js"></script>
	<script src="assets/admin/js/easypiechart.js"></script>
	<script src="assets/admin/js/easypiechart-data.js"></script>
	<script src="assets/admin/js/bootstrap-datepicker.js"></script>
	<script src="assets/admin/js/custom.js"></script>
	<script>
		window.onload = function () {
	var chart1 = document.getElementById("line-chart").getContext("2d");
	window.myLine = new Chart(chart1).Line(lineChartData, {
	responsive: true,
	scaleLineColor: "rgba(0,0,0,.2)",
	scaleGridLineColor: "rgba(0,0,0,.05)",
	scaleFontColor: "#c5c7cc"
	});
};
function black() {
	var txt;
	if (confirm("คุณต้องการจะย้อนกลับหรือไม่")) {
		window.location = "/adminsel2";

	}
	document.getElementById("demo").innerHTML = txt;
}
	</script>

</body>
</html>