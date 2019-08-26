<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form" %>  
<!DOCTYPE html>  
<html>  
<head>  
    <title>Employee Form</title>  
</head>  
<h3>Employee Registration Form</h3>  
<body>  
    <form:form action="submitForm" modelAttribute="booking" method="POST">  
        <table>
               <tr>
                    <td><form:label path="employee_name">Employee name:</form:label></td>
                    <td><form:input path="employee_name"/></td>
                </tr> 
                
                <tr>
                    <td><form:label path="password">Password:</form:label></td>
                    <td><form:password path="password"/></td>
                </tr> 
                    
                <tr>
                    <td><form:label path="date_of_birth">Date Of Birth:</form:label></td>
                    <td><form:input path="date_of_birth"/></td>
                </tr> 
                
                <tr>
                    <td><form:label path="age">Age:</form:label></td>
                    <td><form:input path="age"/></td>
                </tr> 
                 <tr>
                    <td><form:label path="gender">Gender::</form:label></td>
                    
                    <td> Male <form:radiobutton path="gender" value="Male"/>  </td>
                     <td>Female <form:radiobutton path="gender" value="Female"/>  </td>
                     <td>Custom <form:radiobutton path="gender" value="Custom"/> </td>
                </tr>       
       
                 <tr>
                    <td><form:label path="note"> Note: </form:label></td>
                    <td><form:textarea path="note"/></td>
                </tr>
                 
                 <tr>
                    <td><input type="submit" value="Submit"/></td>
                </tr>
       
       
        </table>    
    </form:form>  
</body>  
</html>  