<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>

<!DOCTYPE html>
<html>
<head>

	<title>MENU</title>
	<meta charset="utf-8">
  <meta name="viewport" content="width=device-width, initial-scale=1">
  <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/4.3.1/css/bootstrap.min.css">
  <script src="https://ajax.googleapis.com/ajax/libs/jquery/3.4.1/jquery.min.js"></script>
  <script src="https://cdnjs.cloudflare.com/ajax/libs/popper.js/1.14.7/umd/popper.min.js"></script>
  <script src="https://maxcdn.bootstrapcdn.com/bootstrap/4.3.1/js/bootstrap.min.js"></script>
<style type="text/css">
	html,body{
		height: 100%;
	}
	ul{
		list-style-type: none;
		padding: 0;

		background-color: #e2efda;
		overflow: hidden;
		border:2px solid black;

	}
	ul li{
		float: left;
		height: 60px;
		margin: 0;
		padding:0 7px;
	}
	ul li a{
		display: block;
		width: 100%;
		padding: 0;
		color:black;
	}
	#sidenav{
		width: 200px;
		background-color: #e2efda;
		height: 100%;
		margin-top: -17px;
		margin-left: 1px;
		border:2px solid black;
		position: absolute;
	}
	#sidenav li{
		display: block;
		padding: 7px;
	}
	#content{
		margin-top: -17px;
		height: 100%;
		padding: 10px 0 10px 210px;
	}
	table, tr, th, td{
		border: 1px solid black;
	}
	table tr th{
		background-color: #9bc2e6;
		color: black;
		text-align: center;

	}
</style>
</head>
<body>
	<ul>
		<li style="opacity: 0;"><a href="#"></a></li>
		<li style="float:right;"><a href="/" style="color: #00b0f0;padding-right: 20px;text-align: left;"><span style="border-bottom: 1px solid #00b0f0;">Logout</span></a></li>
		<li style="float: right;"><a href="#" style="text-decoration:none;">Employee ID : ${emp.employee_id} <br> Employee Name : ${emp.employee_name}</a></li>
	</ul>
	<div id="sidenav">
		<li><a href="employeeInsert">Employee Insert</a></li>
		<li><a href="searchEmployee">Employee Search</a></li>
	</div>
	<div id="content" style="">
		<div class="row">
			<div class="col-md-4" style="">
			Employee Name : ${emp.employee_name}
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
<script src="webjars/jquery/3.4.1/jquery.min.js"></script>
<script src="webjars/bootstrap/4.3.1/js/bootstrap.min.js"></script>
</body>
</html>