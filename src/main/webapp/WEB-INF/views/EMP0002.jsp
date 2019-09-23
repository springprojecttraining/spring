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

</head>
<style>
.container{
   
    padding-top: 2%;
    padding-left: 0%;
    padding-right: 0%;
    padding-bottom: 0%;  

}

table tr th{
    border-top: 1px solid black;
    background-color: #e2efda;
    color: black;
    text-align: center;    
    }

table, tr, th, td{     
    border: 1px solid black;
    border-collapse: collapse;
    text-align: center;
    padding-top: 10px;
    padding-bottom: 10px;
        
}

 tr:nth-child(odd) {
     background-color: #dddddd;
}

.EmployeeTable{
    
    background-color: white;

}

</style>
<body>
	<div class="container">

		<form:form action="saveEmployee" method="post"
			modelAttribute="empSearch">
			
			
			
			<div class="form-group row">
				<form:hidden path="id" />
				<form:label path="employee_name" class="col-sm-2 col-form-label">Employee Name</form:label>
				<div class="col-sm-3">
					<form:input path="employee_name"
						class="form-control form-control-sm" />

				</div>
			</div>
			
			<div class="form-group row">
       <form:label path="date_of_birth" class="col-sm-2 col-form-label">Date of Birth</form:label>
        <div class="col-sm-1">
        
          <form:select path="date_of_birth" class="form-control">
            <option selected></option>            
            <option>1990</option>
            <option>1991</option>
          </form:select>
        </div>
          <div class="col-sm-1">
           <form:select path="date_of_birth" class="form-control">
            <option selected></option>            
            <option>Jan</option>    
            <option>Feb</option>
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
      <div class="col-sm-3">
        <form:checkbox path="gender" value="Male"/>Male
      
          <form:checkbox path="gender" value="Female"/>Female
       
          <form:checkbox path="gender" value="Custom"/>Custom
        
     </div>
   </div>
   
   <div>
      <label class="col-sm-2 col-form-label"></label>  
      <input class="btn btn-secondary" type="button" onclick="/" value="Search"> 
       <input class="btn btn-secondary" type="button" onclick="/" value="Cancel">     
       <input class="btn btn-secondary" type="button" onclick="/" value="Delete"> 
       <input class="btn btn-secondary" type="button" onclick="/" value="Excel">            
      <input class="btn btn-secondary" type="button" onclick="/" value="Report">    
    
  </div>
			
		</form:form>
		<br>
		<table border="1"
			class="table table-striped table-hover table-bordered"
			style="width: 30%">

			<tr>
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

			<c:forEach var="employee" items="${listEmployee}">
				<c:url var="update" value="employee/editEmployee">
					<c:param name="id" value="${employee.id }" />
				</c:url>
				<tr>
					<td>${employee.id}</td>
					<td><input type="checkbox"></td>
					<td><a href="update">Edit</a></td>
					<td></td>
					<td>${employee.employee_name}</td>
					<td>${employee.date_of_birth}</td>
					<td>${employee.age}</td>
					<td>${employee.gender}</td>
					<td>${employee.note}</td>
				</tr>
			</c:forEach>
		</table>


	</div>



	<script src="<c:url value="/webjars/jquery/3.4.1/jquery.min.js" />"></script>
	<script
		src="<c:url value="/webjars/bootstrap/4.3.1/js/bootstrap.min.js" />"></script>
</body>
</html>