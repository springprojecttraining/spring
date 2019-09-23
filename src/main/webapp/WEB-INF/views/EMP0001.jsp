<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<%@ taglib uri="http://www.springframework.org/tags/form" prefix="form"%>
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>



<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<link href="<c:url value="/webjars/bootstrap/4.3.1/css/bootstrap.min.css" />" rel="stylesheet">

<style>
body {
	font-family: 'Times New Roman', Times, serif;
}

textarea {
	resize: none;
}

.container {
	position: relative;
	top: 330px;
	transform: translate(0, -75%);
	max-width: 850px;
	display: block;
	margin: 0 auto;
	margin-left: 300px;
	background-color: white;
}

.star {
	color: red;
}

#textbox {
	background-color: lightgrey;
}

#aa {
	background-color: lightgrey;
}

.edit {
	padding-left: -20px;
}
</style>

</head>
<body>


	<form:form action="saveEmployee" method="post"
		modelAttribute="employee">

		<div class="container">
			<div class="form-group row">
				<form:hidden path="id" />
				<form:label path="employee_name" class="col-sm-2 col-form-label">Employee Name</form:label>
				<div class="col-sm-3">
					<form:input path="employee_name"
						class="form-control form-control-sm" />

				</div>
			</div>
			<div class="form-group row">
				<form:label path="password" class="col-sm-2 col-form-label">Password ( <span
						class="star">*</span> )</form:label>

				<div class="col-sm-2">

					<form:password showPassword="true" path="password"
						class="form-control form-control-sm"></form:password>
				</div>
			</div>
			<div class="form-group row">

				<form:label path="date_of_birth" class="col-sm-2 col-form-label">Date of Birth</form:label>
				<div class="col-sm-2">
					<form:input path="date_of_birth"
						class="form-control form-control-sm" />

				</div>
			</div>
			<div class="form-group row">

				<form:label path="age" class="col-sm-2 col-form-label">Age</form:label>

				<div class="col-sm-2">
					<form:input path="age" class="form-control form-control-sm"
						id="textbox" />

				</div>
				<div class="edit">
					<a href="#">Edit</a>
				</div>
			</div>

			<div class="row">
				<form:label path="gender" class="col-form-label col-sm-2">Gender</form:label>
				<div class="col-sm-10">

					<form:radiobutton path="gender" value="male" />
					Male &nbsp;&nbsp;
					<form:radiobutton path="gender" value="male" />
					Female &nbsp;&nbsp;
					<form:radiobutton path="gender" value="male" />
					Custom &nbsp;&nbsp;

				</div>

			</div>

			<div class="form-group row">

				<form:label path="note" class="col-sm-2 col-form-label">Note</form:label>
				<div class="col-sm-4" style="padding-left: 30px;">
					<form:textarea path="note" class="form-group row" rows="4"
						cols="30" />

				</div>
			</div>

			<div class="col-sm-11">
				<label for="inputPassword3" class="col-sm-2 col-form-label"></label>
				<input type="submit" value="Save" id="aa" /> <input type="button"
					onclick="/" value="Clear" id="aa"> <input type="button"
					onclick="location.href='/Springteam2Project'" value="Back" id="aa">

			</div>
		</div>

	</form:form>


	<script src="<c:url value="/webjars/jquery/3.4.1/jquery.min.js" />"></script>
	<script
		src="<c:url value="/webjars/bootstrap/4.3.1/js/bootstrap.min.js" />"></script>
</body>
</html>