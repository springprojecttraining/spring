<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<%@ taglib uri="http://www.springframework.org/tags/form" prefix="form"%>
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>

<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<link href="<c:url value="/webjars/bootstrap/4.3.1/css/bootstrap.min.css" />" rel="stylesheet">
<link href="<c:url value="/resources/css/LOG0001.css" />" rel="stylesheet">

</head>
 
  <body>

       <div class="d-flex justify-content-center login-box" >
       <div class="col-sm-4">
      <form:form action="" method="post" modelAttribute="emplogin">
            <div class="form-group row">
            <form:label path="employee_id" class="col-sm-4 col-form-label form-control-sm">Employee ID(<span class ="star">*</span>)</form:label>
            
              <div class="col-sm-6">
                <form:input path="employee_id" class="form-control form-control-sm" />
              </div>
            </div>

            <div class="form-group row">
            <form:label path="employee_id" class="col-sm-4 col-form-label form-control-sm">Password(<span class ="star">*</span>)</form:label>
              <div class="col-sm-6">
               <form:password showPassword="true" path="password" class="form-control form-control-sm"></form:password>
              </div>
            </div>

              <div class="form-group row">
            <form:label path="" class="col-sm-4 col-form-label form-control-sm"></form:label>
             
                <div class="col-sm-6">
               <input type="button" onclick="location.href='/Springteam2Project'" value="Login" id="button">
                <input type="button" onclick="location.href='/Springteam2Project'" value="Cancel" id="button">
              </div>
             </div>
       </form:form>
        </div>
    </div>
   

  <script src="<c:url value="/webjars/jquery/3.4.1/jquery.min.js" />"></script>
	<script src="<c:url value="/webjars/bootstrap/4.3.1/js/bootstrap.min.js" />"></script>
  </body>
		</html>