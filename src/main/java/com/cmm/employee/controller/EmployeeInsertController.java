package com.cmm.employee.controller;

import java.io.IOException;
import java.util.List;

import javax.servlet.http.HttpServletRequest;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.servlet.ModelAndView;

import com.cmm.employee.entity.Employee;
import com.cmm.employee.services.EmployeeInsertService;

@Controller
public class EmployeeInsertController {

	@Autowired
	private EmployeeInsertService employeeInsertService;
   
	@GetMapping("/employeeInsert")
    public String showFormForAdd(Model theModel) {
        Employee theEmployee = new Employee();
        theModel.addAttribute("employee", theEmployee);
        return "EMP0001";
    }

    @PostMapping("/saveEmployee")
    public String saveEmployee(@ModelAttribute("registerconfirm") Employee theEmployee) {          
//    	if (theEmployee.getId() == 0) {
    	employeeInsertService.saveEmployee(theEmployee);
//    	}
//    	else
//    	{
//    		employeeInsertService.updateEmployee(theEmployee);
//        }
        return "EMP0002";
    }
    
//    @RequestMapping(value = "/searchEmployee")
//    public ModelAndView listEmployee(ModelAndView model) throws IOException {
//        List<Employee> theEmployees = employeeInsertService.getAllEmployees();
//        model.addObject("listEmployee", theEmployees);
//        model.setViewName("EMP0002");
//        return model;
//    }
    
//    @RequestMapping(value = "/editEmployee", method = RequestMethod.GET)
//    public ModelAndView editContact(HttpServletRequest request) {
//        int employeeId = Integer.parseInt(request.getParameter("id"));
//        Employee employee = employeeInsertService.getEmployee(employeeId);
//        ModelAndView model = new ModelAndView("EMP0001");
//        model.addObject("employee", employee);
//        return model;
//    }
    }
