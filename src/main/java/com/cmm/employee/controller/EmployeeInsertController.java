package com.cmm.employee.controller;

import java.io.IOException;
import java.sql.Date;
import java.util.List;

import javax.servlet.http.HttpServletRequest;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.ModelAttribute;

import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestMapping;

import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.servlet.ModelAndView;


import com.cmm.employee.entity.Employee;
import com.cmm.employee.services.EmployeeInsertService;

@Controller

public class EmployeeInsertController {

	@Autowired
	private EmployeeInsertService employeeInsertService;
	@RequestMapping("/Menu")
	 public String Menu(HttpServletRequest req,Model m) {
    	String menu = req.getParameter("name");
    	m.addAttribute("name",menu);
    	return "MNU0001";
    }
	
	@RequestMapping("/login")
	 public String Login(HttpServletRequest req,Model m) {
   	String login = req.getParameter("name");
//    Employee employeelogin = employeeInsertService.getEmployee();
   	m.addAttribute("name",login);
   	return "LOG0001";
   }
	
	@GetMapping("/employeeInsert")
	public String showFormForAdd(Model theModel) {
		Employee theEmployee = new Employee();
		theModel.addAttribute("employee", theEmployee);

		return "EMP0001";
	}

	@PostMapping("/saveEmployee")
	public String saveEmployee(@ModelAttribute("employee") Employee theEmployee) {
		Date dateoperation = new java.sql.Date(new java.util.Date().getTime());
		theEmployee.setCreated_date(dateoperation);
		theEmployee.setUpdated_date(dateoperation);
		employeeInsertService.saveEmployee(theEmployee);
		
//		((Model) theEmployee).addAttribute("employee", theEmployee);
		return "EMP0001";

	}

	@RequestMapping(value = "/searchEmployee")
	public ModelAndView listEmployee(ModelAndView emplist) throws IOException {
		List<Employee> theEmployees = employeeInsertService.getAllEmployees();
		emplist.addObject("listEmployee", theEmployees);
		emplist.addObject("empSearch", new Employee());
		
		emplist.setViewName("EMP0002");
		return emplist;
	}
	
	@GetMapping("/editEmployee")    
   public String edit(@RequestParam("id") int id, Model m){    
	Employee employee=employeeInsertService.getEmp(id);    
       m.addAttribute("employee",employee);  
        return "EMP0001";    
    }    

//	 @RequestMapping(value = "/editEmployee/{id}", method = RequestMethod.GET)
//   public ModelAndView editContact(HttpServletRequest request) {
//       int employeeId = Integer.parseInt(request.getParameter("id"));
//       Employee employee = employeeInsertService.getEmployee(employeeId);
//       ModelAndView model = new ModelAndView("Emp0001");
//       model.addObject("editemp", employee);
//       return model;
//   }

}
