package com.cmm.employee.services;

import java.util.List;

import com.cmm.employee.entity.Employee;

public interface EmployeeInsertService {

	public void saveEmployee(Employee theEmployee);

	public List<Employee> getAllEmployees();

	public Employee getEmployee(int employeeId);

	public Employee delete(long id);

	public List<Employee> getSearchEmp(String string, String valueOf);

	public List<Employee> getEmployeeSearchByName(String string, String valueOf);

//	public List<Employee> getEmployeeBy(String string, String valueOf);

//	public List<Employee> getSearchEmployee(String string, String valueOf);

}
