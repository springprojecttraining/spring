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
	<link href="<c:url value="/resources/css/EMP0002.css" />" rel="stylesheet">
	<link href="<c:url value="/resources/css/common.css" />"  rel="stylesheet">
</head>

<body>
	<ul>
      <li id="li"><a href="/"><span class="Log">Logout</span></a></li>
      <li style="float: right;"><a href="#" style="text-decoration:none;">Employee ID : ${emplogin.employee_id} <br> Employee Name : ${emplogin.employee_name}</a></li>
	 </ul>
	 <div id="sidenav">
		<a href="employeeInsert">Employee Insert</a>
	  <br>
		<a href="searchEmployee">Employee Search</a>	
    </div>
	
		<form:form action="search" method="post" modelAttribute="empSearch">
			<div id="search" style="margin-left:151px; ">
			<form:hidden path="id" />
			
			  <div class="form-group row">
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
					<form:input path="age" class="form-control form-control-sm" id="textbox" />
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
			
				<div class="form-group row" style="position: absolute; left: 292px;">
					<label for="button" class="col-sm-5 col-form-label"> </label>
					<div class="col-sm-7">
						<button type="submit" class="btn btn-secondary btn-sm">Search</button>
					</div>
				</div>
			</form:form>

			<!-- Delete Employee Form -->
			<form:form method="POST" action="deleteEmployee"
				modelAttribute="employeedelete">
				<div class="form-group row">
					<label for="button" class="col-sm-2 col-form-label"> </label>
					<div class="col-sm-7"
						style="position: relative; left: 80px; padding: 0;">
						<button type="button" class="btn btn-secondary btn-sm">Cancel</button>
						<button type="submit" class="btn btn-secondary btn-sm">Delete</button>
						<button type="button" class="btn btn-secondary btn-sm">Excel</button>
						<button type="button" class="btn btn-secondary btn-sm">Report</button>
					</div>
				</div>
			
			
			

		<br>
		<div class="form-group row">
			<div class="col-sm-11">

		<table class="table table-bordered table-hover table-striped">

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
					</tr>
				</c:forEach>				
		</table>
		</div>
		</div>
</form:form>
		
		
		</div>
		 
	<script src="<c:url value="/webjars/jquery/3.4.1/jquery.min.js" />"></script>
	<script
		src="<c:url value="/webjars/bootstrap/4.3.1/js/bootstrap.min.js" />"></script>
		
		
</body>
</html>