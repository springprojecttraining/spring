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
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.servlet.ModelAndView;

import com.cmm.employee.entity.Employee;
import com.cmm.employee.services.EmployeeInsertService;

@Controller
public class EmployeeInsertController {

	@Autowired
	private EmployeeInsertService employeeInsertService;

	@GetMapping("/login")
	public String loginPage(Model m)  {
		Employee employee = new Employee();
		m.addAttribute("emplogin",employee);

		return "LOG0001";
	}
	
	@GetMapping("/Menu")
	public String Menu(Model m)  {
		Employee menu = new Employee();
		m.addAttribute("name",menu);

		return "MNU0001";
	}
	
	
	
	@GetMapping("/employeeInsert")
	public String showFormForAdd(Model theModel) {
		Employee theEmployee = new Employee();
		theModel.addAttribute("employee", theEmployee);
		return "EMP0001";
	}

	@PostMapping(value="/saveEmployee")
	public String saveEmployee(@ModelAttribute("employee") Employee theEmployee) {	
		for (int i = 0; i < theEmployee.getId() + 1; i++) {
			String emp;
			if (theEmployee.getId() < 10) {
				emp = "EMP000" + (theEmployee.getId());
				theEmployee.setEmployee_id(emp);
			} else if (theEmployee.getId() >= 10 && theEmployee.getId() < 100) {
				emp = "EMP00" + (theEmployee.getId());
				theEmployee.setEmployee_id(emp);
			} else if (theEmployee.getId() >= 100 && theEmployee.getId() < 1000) {
				emp = "EMP0" + (theEmployee.getId());
				theEmployee.setEmployee_id(emp);
			} else {
				emp = "EMP" + (theEmployee.getId());
				theEmployee.setEmployee_id(emp);
			}
		employeeInsertService.saveEmployee(theEmployee);
		Date dateoperation = new java.sql.Date(new java.util.Date().getTime());
		theEmployee.setCreated_date(dateoperation);
		theEmployee.setUpdated_date(dateoperation);
		}
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
	
	@RequestMapping(value = "/update",method = RequestMethod.GET)
	public ModelAndView EditInsertForm(HttpServletRequest request) {
		int employee = Integer.parseInt(request.getParameter("id"));
		Employee Employee=employeeInsertService.getEmployee(employee);
		 ModelAndView empeditform = new ModelAndView("EMP0001");
		empeditform.addObject("employee",Employee);
		return empeditform;
	}
	

	
	@RequestMapping(value = "/search", method = RequestMethod.POST)
	public String searchEmployee(@ModelAttribute("empSearch") Employee emp,Model m) {	
		System.out.println(emp.getEmployee_name());
		List<Employee> employee = employeeInsertService.getEmployeeSearchByName("employee_name",String.valueOf(emp.getEmployee_name()));
		
		System.out.println(emp.getAge());
		List<Employee> ageList=employeeInsertService.getEmployeeSearchByName("age",String.valueOf(emp.getAge()));
		
		System.out.println(emp.getGender());
		List<Employee> genderList=employeeInsertService.getEmployeeSearchByName("gender",String.valueOf(emp.getGender()));

		if(emp.getEmployee_name() == null) {
			
		}else {
		m.addAttribute("listEmployee", employee);
		}
		if(emp.getAge() == 0)  {
			
		}else {
			m.addAttribute("listEmployee",ageList);
		}
		if(emp.getGender() == null)  {
			
		}else {
			m.addAttribute("listEmployee",genderList);
		}
          
		return "EMP0002";
		

		

//	@PostMapping("/delete")
//	public String delete(@RequestParam("id") long id) {
//		employeeInsertService.delete(id);
//	    return "EMP0002";
//	}
	}
}
