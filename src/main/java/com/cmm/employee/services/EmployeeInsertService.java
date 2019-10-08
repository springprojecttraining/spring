package com.cmm.employee.services;

import java.util.List;

import com.cmm.employee.entity.Employee;

public interface EmployeeInsertService {

	public void saveEmployee(Employee theEmployee);

	public List<Employee> getAllEmployees();
	
	public List<Employee> getEmployeeSearchByName(String string, String valueOf);

	public Employee getEmployee(int employeeId);

	public Employee delete(long id);

//	public List<Employee> getSearchEmp(String string, String valueOf);

	public List<Employee> getEmployeeSearchByAge(String string, String valueOf);


}
