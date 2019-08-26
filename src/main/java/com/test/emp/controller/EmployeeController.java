package com.test.emp.controller;  
import org.springframework.stereotype.Controller;  
import org.springframework.ui.Model;  
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestMapping;

import com.test.emp.entity.Employee;  
import com.test.emp.entity.EmployeeAttendance;    
  
@Controller  
public class EmployeeController {  
    @RequestMapping("/registrationForm")  
public String bookingForm(Model model)  
{  
      //create a reservation object   
    	Employee res=new Employee();  
      //provide reservation object to the model   
    model.addAttribute("booking", res);  
    return "register-page";  
}  
@PostMapping("/submitForm")  
// @ModelAttribute binds form data to the object  
public String submitForm(@ModelAttribute("booking") Employee res)  
{  
    return "confirmation-page";  
}  
}  