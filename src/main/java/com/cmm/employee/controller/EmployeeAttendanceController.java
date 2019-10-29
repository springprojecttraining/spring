package com.cmm.employee.controller;



import java.text.DateFormat;
import java.text.SimpleDateFormat;
import java.time.LocalDate;
import java.time.LocalDateTime;
import java.time.LocalTime;
import java.time.ZoneId;
import java.time.format.DateTimeFormatter;
import java.util.Date;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpSession;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.format.annotation.DateTimeFormat;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;

import com.cmm.employee.entity.Employee;
import com.cmm.employee.entity.EmployeeAttendance;
import com.cmm.employee.services.EmployeeInsertService;


@SuppressWarnings("unused")
@Controller
public class EmployeeAttendanceController {
	
	@Autowired
	private EmployeeInsertService employeeInsertService;
	@RequestMapping(value = "/in", method = RequestMethod.GET)
	public String intimeEmp(@ModelAttribute("intime") EmployeeAttendance emp, Model m) {
		
//		String pattern = "hh:mm";
//        DateFormat dateFormat = new SimpleDateFormat(pattern);
//        LocalTime now = LocalTime.now();
//        System.out.println(now.format(DateTimeFormatter.ofPattern(pattern)));
//        
//        Employee theEmployee = new Employee();
//		m.addAttribute("employee", theEmployee);
//		EmployeeAttendance empattandance = new EmployeeAttendance();
//		empattandance.setIn_time(pattern);
//		m.addAttribute("empAtt", empattandance);
//		employeeInsertService.saveEmployeeAttandance(empattandance);
//		return "MNU0001";

		Date dateoperation = new java.sql.Date(new java.util.Date().getTime());
		Date date = new Date();
		DateFormat df = new SimpleDateFormat("HH:mm");
		String in_time=df.format(date);

		emp.setIn_time(in_time);
		m.addAttribute("empAtt", emp);
		 System.out.println(df.format(date));
		 return "MNU0001";
		
//		String pattern = "hh:mm";
//		SimpleDateFormat simpleDateFormart = new SimpleDateFormat(pattern);
//		String date1 = simpleDateFormart.format(new java.util.Date());
//		emp.setIn_time(date1);
//		emp.setOut_time(date1);
//		return "MNU0001";
	}

 
  
	
	
}
