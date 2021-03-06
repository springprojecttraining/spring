<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<%@ taglib uri="http://www.springframework.org/tags/form" prefix="form"%>
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>

<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<link href="<c:url value="/webjars/bootstrap/4.3.1/css/bootstrap.min.css" />"rel="stylesheet">
<link href="<c:url value="/resources/css/EMP0001.css" />" rel="stylesheet">
<link href="<c:url value="/resources/css/common.css" />"  rel="stylesheet">
<link rel="stylesheet" href="//code.jquery.com/ui/1.12.1/themes/base/jquery-ui.css">
<link rel="stylesheet" href="/resources/demos/style.css">
</head>
<body>

<ul>
      <li id="li"><a href="logout"><span class="Log">Logout</span></a></li>
      <li style="float: right;"><a href="#" style="text-decoration:none;">Employee ID : ${auth.employee_id}<br> Employee Name : ${auth.employee_name}</a></li>
	 </ul>
	 	<div id="sidenav" >
			<a href="employeeInsert" style="font-size: 19px;">Employee Insert</a>
			<br>
			<a href="searchEmployee" style="font-size: 19px;">Employee Search</a>	
    	</div>
    	
	<form:form action="saveEmployee" method="post"
		modelAttribute="employee">

		<div class="container" style="margin-top: 50px;">
			<form:hidden path="id" />
			<div class="form-group row">

				<form:label path="employee_name" class="col-sm-2 col-form-label">Employee Name</form:label>
				<div class="col-sm-3">
					<form:input path="employee_name"
						class="form-control form-control-sm" />

				</div>
			</div>

			<%
				String pass = request.getParameter("id");
					if (pass == null) {
			%>
			<div class="form-group row">
				<form:label path="password" class="col-sm-2 col-form-label">Password ( <span
						class="star">*</span> )</form:label>

				<div class="col-sm-2">

					<form:password showPassword="true" path="password"
						class="form-control form-control-sm" id="enablepassword"></form:password>
				</div>
			</div>
			<%
				} else {
			%>
			<div class="form-group row">
				<form:label path="password" class="col-sm-2 col-form-label">Password ( <span
						class="star">*</span> )</form:label>
				<div class="col-sm-2">
					<form:password showPassword="true" path="password"
						class="form-control form-control-sm" id="password"></form:password>
				</div>
				<div class="edit">
					<a id="editlink" onclick="enable()">Edit</a>

				</div>

			</div>
			<%
				}
			%>


			<div class="form-group row">
				<form:label type="date" path="date_of_birth"
					class="col-sm-2 col-form-label">Date of Birth</form:label>

				<div class="col-sm-2">
					<form:input path="date_of_birth"
						class="form-control form-control-sm" id="DOB" />
				</div>
			</div>
			<div class="form-group row">

				<form:label path="age" class="col-sm-2 col-form-label">Age</form:label>

				<div class="col-sm-2">
					<form:input path="age" class="form-control form-control-sm"
						id="age" readonly="true" />

				</div>

			</div>

			<div class="row">
				<form:label path="gender" class="col-form-label col-sm-2">Gender</form:label>
				<div class="col-sm-10">

					<form:radiobutton path="gender" value="male" />
					Male &nbsp;&nbsp;
					<form:radiobutton path="gender" value="female" />
					Female &nbsp;&nbsp;
					<form:radiobutton path="gender" value="custom" />
					Custom &nbsp;&nbsp;

				</div>

			</div>
<br>
			<div class="row">

				<form:label path="note" class="col-sm-2 col-form-label">Note</form:label>
				<div class="col-sm-4" id="box">
					<form:textarea path="note" style="border-top-color: #bccad6;" class="form-group row" rows="4"
						cols="30" />



				</div>
			</div>

			<div class="form-group row">
				<label for="button" class="col-sm-2 col-form-label"> </label>
				<div class="col-sm-6">
					<input type="submit" value="Save" id="button" />


					<%
						String password1 = request.getParameter("id");
							if (password1 == null) {
					%>

					<input type="button" onclick="location.reload();" value="Clear" id="button">



					<%
						}
					%>

					<input type="button"
						onclick="location.href='/Springteam2Project/searchEmployee'"
						value="Back" id="button">
				</div>


			</div>
		</div>
	</form:form>

	<script src="<c:url value="/webjars/jquery/3.4.1/jquery.min.js" />"></script>
	<script
		src="<c:url value="/webjars/bootstrap/4.3.1/js/bootstrap.min.js" />"></script>
	<script src="https://code.jquery.com/jquery-1.12.4.js"></script>
	<script src="https://code.jquery.com/ui/1.12.1/jquery-ui.js"></script>
</body>
<script>
	$(document).ready(
			function() {

				$('#DOB')
						.datepicker(
								{
									dateFormat : "yy/mm/dd",
									onSelect : function(value, ui) {
										var today = new Date(), dob = new Date(
												value), age = new Date(today
												- dob).getFullYear() - 1970;

										$('#age').val(age);
									},
									maxDate : '+0d',
									yearRange : '1940:2100',
									changeMonth : true,
									changeYear : true,

								});
			});
	document.getElementById("editlink").style.cursor = "pointer";
	function enable() {
		document.getElementById('password').style.backgroundColor = "white";
		document.getElementById('password').style.pointerEvents = "auto";
	}
</script>
</html>