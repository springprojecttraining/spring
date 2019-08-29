package com.cmm.employee.dao;

import java.util.List;

import com.cmm.employee.entity.Employee;

public interface EmployeeDAO {

	public void saveEmployee(Employee theEmployee);

	public List<Employee> getAllEmployees();


}
