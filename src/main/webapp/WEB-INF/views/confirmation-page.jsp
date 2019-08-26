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
First Name : ${booking.employee_name} <br>  
Password: ${booking.password}   <br>  
Date Of Birth: ${booking.date_of_birth}   <br> 
Age: ${booking.age}   <br>
Gender: ${booking.gender}   <br>   
Note: ${booking.note}  
</body>  
</html>