<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form"%>

<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">


<style>
.login-box{
    margin-top:155px;
}
.star{
    color: crimson;
}



</style>
</head>
  <body>
   
      
		
           
       <div class="col-sm-4">
       <form:form action="" method="post" modelAttribute="loginname">
            <div class="form-group row">
              <label class="col-sm-4 col-form-label form-control-sm">Employee ID (<span class ="star">*</span>)</label>
              <div class="col-sm-6">
                <input type="text" id="staticEmail" >
              </div>
            </div>

            <div class="form-group row">
              <label class="col-sm-4 col-form-label form-control-sm">Password(<span class ="star">*</span>)</label>
              <div class="col-sm-6">
                <input type="password" id="inputPassword" >
              </div>
            </div>

              <div class="form-group row">
                <label for="inputPassword" class="col-sm-4 col-form-label form-control-sm"></label>
                <div class="col-sm-6">                    
                    <button type="button" class="btn btn-secondary">Log in</button>&nbsp;&nbsp;&nbsp;&nbsp;
                    <button type="button" class="btn btn-secondary">Cancel</button>
                </div>
                </div>
             
            
         </form:form>
        </div>
    
             
            
       
   

  <script src="<c:url value="/webjars/jquery/3.4.1/jquery.min.js" />"></script>
	<script
		src="<c:url value="/webjars/bootstrap/4.3.1/js/bootstrap.min.js" />"></script>
		
		</body>
		</html>