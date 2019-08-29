<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>SubmitForm</title>
</head>
<body>  
<p>Your registration is confirmed successfully. Please, re-check the details.</p>  
First Name : ${registerconfirm.employee_name} <br>  
Password: ${registerconfirm.password}   <br>  
Date Of Birth: ${registerconfirm.date_of_birth}   <br> 
Age: ${registerconfirm.age}   <br>
Gender: ${registerconfirm.gender}   <br>   
Note: ${registerconfirm.note}  


			<table border="1" width="30%">

				<th>No</th>
				<th>Check</th>
				<th>Edit</th>
				<th>EmployeeID</th>
				<th>EmployeeName</th>
				<th>Date Of Birth</th>
				<th>Age</th>
				<th>Gender</th>
				<th>Note</th>


				<c:forEach var="employee" items="${listEmployee}">
					<tr>
						<td></td>
						<td></td>
						<td><a href="editEmployee?id=${employee.id}">Edit</a></td>
						<td></td>
						<td>${registerconfirm.employee_name}</td>
						<td>${registerconfirm.date_of_birth}</td>
						<td>${registerconfirm.age}</td>
						<td>${registerconfirm.gender}</td>
						<td>${registerconfirm.note}</td>
					</tr>
				</c:forEach>
			</table>
</body>  
</html>