<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>

<!DOCTYPE html>
<html>
<head>

	<meta charset="ISO-8859-1">
<link href="<c:url value="/webjars/bootstrap/4.3.1/css/bootstrap.min.css" />" rel="stylesheet">
<link href="<c:url value="/resources/css/MNU0001.css" />" rel="stylesheet">

</head>
<body>
	<ul>
	
		<li style="float:right;"><a href="/" style="color: #00b0f0;padding-right: 20px;text-align: left;"><span style="border-bottom: 1px solid #00b0f0;">Logout</span></a></li>
		<li style="float: right;"><a href="#" style="text-decoration:none;">Employee ID : ${employee.id} <br> Employee Name : ${employee_name}</a></li>
	</ul>
	<div id="sidenav">
	<a href="employeeInsert">Employee Insert</a>
	<br>
	<a href="searchEmployee">Employee Search</a>
	</div>
	<div id="content" style="">
		<div class="row">
			<div class="col-md-4" style="">
			Employee Name : ${employee.employee_name}
			<div class="row">
				<div class="col-sm-6">
					IN<br>
					<input type="text" name="" value="HH :">
				</div>
				<div class="col-sm-6">
					OUT<br>
					<input type="text" name="" value="HH :">
				</div>
			</div>
			</div>
			<div class="col-md-4" style="">
				Reason<br>
				<div style="width: 100%;overflow: hidden;">
					
					<textarea style="width: 100%;"> 
						
					</textarea>

				</div>
			</div>
			<div class="col-md-4" style="">
				<div class="row">
					<div class="col-sm-6">
						<input type="button" value="Excel" name="" style="border-radius: 7px;float: right;width: 70px;"><br><p></p>
						<input type="submit" value="Submit" name="" style="border-radius: 7px;float: right;width: 70px;">
					</div>
					<div class="col-sm-6">
						<input type="button" value="Update" name="" style="border-radius: 7px;position: relative;top: 20px;">
					</div>
				</div>
			</div>
		</div>
		<div style="margin-left: -9px;border-top:1px solid black;background-color: white;height: 100%;">
			<table class="table">
				<tr>
					<th>Date</th>
					<th>Day</th>
					<th>In</th>
					<th>Out</th>
					<th>In Remark</th>
					<th>Out Remark</th>
					<th>Action</th>
				</tr>
				
			</table>
		</div>
	</div>
<script src="<c:url value="/webjars/jquery/3.4.1/jquery.min.js" />"></script>
	<script src="<c:url value="/webjars/bootstrap/4.3.1/js/bootstrap.min.js" />"></script>
</body>
</html>