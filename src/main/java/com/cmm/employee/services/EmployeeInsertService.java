package com.cmm.employee.services;

import java.util.List;

import com.cmm.employee.entity.Employee;

public interface EmployeeInsertService {

	public void saveEmployee(Employee theEmployee);

	public List<Employee> getAllEmployees();

	
}