package com.cmm.employee.dao;

import java.util.List;

import com.cmm.employee.entity.Employee;

public interface EmployeeDAO {

	public void saveEmployee(Employee theEmployee);

	public List<Employee> getAllEmployees();

	public Employee getEmployee(int employeeId);

	public Employee delete(long id);

	public List<Employee> getEmployeeSearchByName(String string, String valueOf);

	public Employee getEmployeeBy(String employee_id);

	public void delEmployee(int empId);


//	public boolean checkEmpLogin(String employee_id, String password);

}