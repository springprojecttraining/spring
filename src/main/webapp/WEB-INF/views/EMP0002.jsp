<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<%@ taglib uri="http://www.springframework.org/tags/form" prefix="form"%>
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>



<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<link
	href="<c:url value="/webjars/bootstrap/4.3.1/css/bootstrap.min.css" />"
	rel="stylesheet">
<link href="<c:url value="/resources/css/EMP0002.css" />"
	rel="stylesheet">

</head>

<body>
	<div class="container">
		<form:form action="search" method="post" modelAttribute="empSearch">
			<div class="form-group row">
				<form:hidden path="id" />
				<form:label path="employee_name" class="col-sm-2 col-form-label">Employee Name</form:label>
				<div class="col-sm-3">
					<form:input path="employee_name"
						class="form-control form-control-sm" />

				</div>
			</div>

			<div class="form-group row">
				<form:label path="date_of_birth" class="col-sm-2 col-form-label">Date Of
						Birth</form:label>

				<div class="col-sm-2">
					<%@ page import="java.util.Calendar"%>
					<form:select class="form-control form-control-sm"
						path="date_of_birth" name="year">
						<option value="0">Year</option>
						<%
							int curr_year = Calendar.getInstance().get(Calendar.YEAR);
									for (int year = 1940; year <= curr_year; year++) {
						%>
						<option><%=year%></option>

						<%
							}
						%>
					</form:select>
				</div>
				<div class="col-sm-1.8">
					<form:select class="form-control form-control-sm"
						path="date_of_birth">
						<option value="0">Month</option>
						<%
							for (int month = 1; month <= 12; month++) {
						%>
						<option><%=month%></option>
						<%
							}
						%>
					</form:select>
				</div>
			</div>
			<div class="form-group row">
				<form:label path="age" class="col-sm-2 col-form-label">Age</form:label>
				<div class="col-sm-2">
					<form:input path="age" class="form-control form-control-sm"
						id="textbox" />
				</div>
			</div>


			<div class="form-group row">
				<form:label path="gender" class="col-form-label col-sm-2">Gender</form:label>
				<div class="col-sm-10">
					<form:checkbox path="gender" value="Male" />
					Male&nbsp;&nbsp;

					<form:checkbox path="gender" value="Female" />
					Female&nbsp;&nbsp;

					<form:checkbox path="gender" value="Custom" />
					Custom&nbsp;&nbsp;

				</div>
			</div>

			<div class="form-group row">
				<form:label path="gender" class="col-form-label col-sm-2"></form:label>

				<div class="col-sm-10">
					<button type="submit" class="btn btn-secondary ">Search</button>
					<button type="button" class="btn btn-secondary ">Cancel</button>
				</div>

			</div>
		</form:form>

		<form:form action="deleteEmployee" method="POST"
			modelAttribute="employeedelete">
			<div class="col-sm-10" style="position: absolute; left: 445px;">
				<button type="submit" class="btn btn-secondary ">Delete</button>

				<input class="btn btn-secondary" type="button" onclick="/"
					value="Excel"> <input class="btn btn-secondary"
					type="button" onclick="/" value="Report">


			</div>

			<br>

			<table class="table table-bordered table-hover table-striped"
				class="table table-bordered table-striped mb-0">

				<tr style="background-color: #EAFAF1; height: 10px;" align="center">
					<th>No</th>
					<th>Check</th>
					<th>Edit</th>
					<th>EmployeeID</th>
					<th>Employee Name</th>
					<th>Date Of Birth</th>
					<th>Age</th>
					<th>Gender</th>
					<th>Note</th>

				</tr>

				<c:forEach var="employee" items="${listEmployee}"
					varStatus="loopCounter">
					<tr align="center">
						<td width="6%"><c:out value="${loopCounter.count}" /></td>
						<td width="6%"><input type="checkbox" class="chkId"
							value="${employee.id}" name="id"></td>
						<td><a href="update?id=${employee.id}">Edit</a></td>
						<td>${employee.employee_id}</td>
						<td>${employee.employee_name}</td>
						<td>${employee.date_of_birth}</td>
						<td>${employee.age}</td>
						<td>${employee.gender}</td>
						<td>${employee.note}</td>
						<!--<td id="notewidth" align="left">${emplist.note}</td>
										     <td><a href="deleteEmp?id=${emplist.emp_id}">Delete</a></td>-->
					</tr>
				</c:forEach>


			</table>


		</form:form>

	</div>





	<script src="<c:url value="/webjars/jquery/3.4.1/jquery.min.js" />"></script>
	<script
		src="<c:url value="/webjars/bootstrap/4.3.1/js/bootstrap.min.js" />"></script>
</body>
</html>