<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<%@ taglib uri="http://www.springframework.org/tags/form" prefix="form"%>
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>



<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<link href="<c:url value="/webjars/bootstrap/4.3.1/css/bootstrap.min.css" />"
rel="stylesheet">

</head>
<body>
	<div class="container">
		<div class="col-md-offset-2 col-md-7">
			<div class="panel panel-info">
				<div class="panel-heading">
					<h1>Employee Insert Form</h1>
				</div>
				<div class="panel-body">
					<form:form action="saveEmployee" method="post"
						modelAttribute="employee">

						<!-- need to associate this data with customer id -->
						<form:hidden path="id" />

						<table>
							<tr>
								<td><form:label path="employee_name">Employee Name</form:label></td>
								<td><form:input path="employee_name" /></td>
							</tr>

							<tr>
								<td><form:label path="password">Password</form:label></td>
								<td><form:password showPassword="true" path="password"></form:password></td>
							</tr>

							<tr>
								<td><form:label path="date_of_birth">Date of Birth</form:label></td>
								<td><form:input path="date_of_birth" /></td>
							</tr>

							<tr>
								<td><form:label path="age">Age</form:label></td>
								<td><form:input path="age" /></td>
							</tr>

							<tr>
								<td><form:label path="gender">Gender</form:label></td>
								<td><form:radiobutton path="gender" value="male" />Male <form:radiobutton
										path="gender" value="female" />Female <form:radiobutton
										path="gender" value="custom" />Custom</td>
							</tr>

							<tr>
								<td><form:label path="note">Note</form:label></td>
								<td><form:textarea path="note" /></td>
								<td><form:input type="hidden" path="created_date" value="" /></td>
							</tr>
							<tr>
								<td><input type="submit" value="Save" />
								
								   
								    <input type="button"  onclick="/" value="Clear">
								    <input type="button"  onclick="location.href='/Springteam2Project'" value="Back"> </td>
							</tr>
						</table>
					</form:form>
				</div>
			</div>
		</div>
	</div>
	<script src="<c:url value="/webjars/jquery/3.4.1/jquery.min.js" />"></script>
<script src="<c:url value="/webjars/bootstrap/4.3.1/js/bootstrap.min.js" />"></script>
</body>
</html>