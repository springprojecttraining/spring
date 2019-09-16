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
<title>SubmitForm</title>
</head>
<body>  
<p>Your registration is confirmed successfully. Please, re-check the details.</p>  

<form:form>

			<table border="1" width="30%">
               <tr>
				<th>No</th>
				<th>Check</th>
				<th>Edit</th>
				<th>EmployeeID</th>
				<th>EmployeeName</th>
				<th>Date Of Birth</th>
				<th>Age</th>
				<th>Gender</th>
				<th>Note</th>
              </tr>

				<c:forEach var="employee" items="${listEmployee}">
					<tr>
						<td></td>
						<td></td>
						<td><a href="editEmployee?id=${registerconfirm.id}">Edit</a></td>
						<td></td>
						<td>${registerconfirm.employee_name}</td>
						<td>${registerconfirm.date_of_birth}</td>
						<td>${registerconfirm.age}</td>
						<td>${registerconfirm.gender}</td>
						<td>${registerconfirm.note}</td>
					</tr>
				</c:forEach>
			</table>
			</form:form>
			<script src="<c:url value="/webjars/jquery/3.4.1/jquery.min.js" />"></script>
<script src="<c:url value="/webjars/bootstrap/4.3.1/js/bootstrap.min.js" />"></script>
</body>  
</html>