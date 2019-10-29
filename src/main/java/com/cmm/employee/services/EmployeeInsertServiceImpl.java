package com.cmm.employee.services;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import org.springframework.transaction.annotation.Transactional;
import com.cmm.employee.dao.EmployeeDAO;
import com.cmm.employee.entity.Employee;
import com.cmm.employee.entity.EmployeeAttendance;

@Service
public class EmployeeInsertServiceImpl implements EmployeeInsertService {

	@Autowired
	private EmployeeDAO employeeDAO;

	@Transactional
	public void saveEmployee(Employee theEmployee) {
		employeeDAO.saveEmployee(theEmployee);

	}

	@Transactional
	public List<Employee> getAllEmployees() {

		return employeeDAO.getAllEmployees();
	}

	@Transactional
	public List<Employee> getEmployeeSearchByName(String string, String valueOf) {
		// TODO Auto-generated method stub
		return employeeDAO.getEmployeeSearchByName(string, valueOf);
	}

	@Transactional
	public Employee getEmployee(int employeeId) {
		// TODO Auto-generated method stub

		return employeeDAO.getEmployee(employeeId);
	}

	@Transactional
	public Employee delete(long id) {
		// TODO Auto-generated method stub
		return employeeDAO.delete(id);
	}

	@Override
	public Employee getEmployeeBy(String employee_id) {
		// TODO Auto-generated method stub
		return employeeDAO.getEmployeeBy(employee_id);
	}

	

	@Transactional
	public void delEmployee(int empId) {
		
		employeeDAO.delEmployee(empId);
		// TODO Auto-generated method stub
		
	}

	@Transactional
	public Employee getEmpAuth(String employee_id) {
		// TODO Auto-generated method stub
		return employeeDAO.getEmpAuth(employee_id);
	}

	@Transactional
	public void saveEmployeeAttandance(EmployeeAttendance empattandance) {
		// TODO Auto-generated method stub
		employeeDAO.saveEmployee(empattandance);
	}

	

}
