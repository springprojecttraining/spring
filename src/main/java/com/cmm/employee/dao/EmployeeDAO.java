package com.cmm.employee.dao;

import java.util.List;

import com.cmm.employee.entity.Employee;

public interface EmployeeDAO {

	public void saveEmployee(Employee theEmployee);

	public List<Employee> getAllEmployees();

	public Employee getEmployee(int employeeId);

	public Employee delete(long id);

	
	
	

	

//	public Employee getEmployee(int employee_id);
//	
//	public Employee getEmployeeBy(String employee_id);
//
//	public void updateEmployee(Employee theEmployee);
//
//	public void deleteEmployee(int id);
//
//	public Object getEmployeeName(String employee_name);
//
//	public List<Employee> getEmployeeNameForSearch(String employee_name);


}
