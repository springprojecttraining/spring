<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<%@ taglib uri="http://www.springframework.org/tags/form" prefix="form"%>
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>

<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<link href="<c:url value="/webjars/bootstrap/4.3.1/css/bootstrap.min.css" />" rel="stylesheet">
<link href="<c:url value="/resources/css/EMP0001.css" />" rel="stylesheet">

</head>
<body>
	<form:form action="saveEmployee" method="post" modelAttribute="employee">

		<div class="container">
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
				<form:label path="password" class="col-sm-2 col-form-label">Password ( <span class="star">*</span> )</form:label>

				<div class="col-sm-2">

					<form:password showPassword="true" path="password" class="form-control form-control-sm" id="enablepassword"></form:password>
				</div>
			</div>
				<%
					} else {
				%>
				<div class="form-group row">
					<form:label path="password" class="col-sm-2 col-form-label">Password ( <span class="star">*</span> )</form:label>
					<div class="col-sm-2">
						<form:password showPassword="true" path="password" class="form-control form-control-sm" id="password"></form:password>
						</div>
						 <div class="edit">
						 <a id="editlink" onclick="enable()">Edit</a>
												
							</div>
					
				</div>
					<%
					}
				%>
				
			
			<div class="form-group row">
                <form:label type="date" path="date_of_birth" class="col-sm-2 col-form-label" >Date of Birth</form:label>
				
				<div class="col-sm-2">
					<form:input path="date_of_birth"
						class="form-control form-control-sm" />

				</div>
			</div>
			<div class="form-group row">

				<form:label path="age" class="col-sm-2 col-form-label">Age</form:label>

				<div class="col-sm-2">
				<form:input path="age" class="form-control form-control-sm"
							id="textbox" disabled="true" />
					
				</div>

			</div>

			<div class="row" >
				<form:label path="gender" class="col-form-label col-sm-2" >Gender</form:label>
				<div class="col-sm-10" >

					<form:radiobutton path="gender" value="male" />
					Male &nbsp;&nbsp;
					<form:radiobutton path="gender" value="female" />
					Female &nbsp;&nbsp;
					<form:radiobutton path="gender" value="custom" />
					Custom &nbsp;&nbsp;

				</div>

			</div>

			<div class="form-group row">

				<form:label path="note" class="col-sm-2 col-form-label">Note</form:label>
				<div class="col-sm-4" id="box">
					<form:textarea path="note" class="form-group row" rows="4"
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
						
						 <input type="button" onclick="" value="Clear" id="button">
						
					
				
				<%
					}
				%>
				<input type="button" onclick="location.href='/Springteam2Project/'" value="Back" id="button">
				</div>
		</div>

	</form:form>

	<script src="<c:url value="/webjars/jquery/3.4.1/jquery.min.js" />"></script>
	<script src="<c:url value="/webjars/bootstrap/4.3.1/js/bootstrap.min.js" />"></script>
</body>
<script>
	 document.getElementById("editlink").style.cursor = "pointer";
	 function enable(){
		 document.getElementById('password').style.backgroundColor = "white";
		 document.getElementById('password').style.pointerEvents = "auto";	 
	 }
</script>
</html>