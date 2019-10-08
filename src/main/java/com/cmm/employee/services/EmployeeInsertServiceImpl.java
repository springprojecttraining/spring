package com.cmm.employee.services;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import org.springframework.transaction.annotation.Transactional;

import com.cmm.employee.dao.EmployeeDAO;
import com.cmm.employee.entity.Employee;

@Service
public  class EmployeeInsertServiceImpl implements EmployeeInsertService{

	@Autowired
	 private EmployeeDAO employeeDAO;
	 
	@Transactional
	public void saveEmployee(Employee theEmployee) {
		employeeDAO.saveEmployee(theEmployee);
	
    }
	@Transactional
    public List<Employee> getAllEmployees(){
        return employeeDAO.getAllEmployees();
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
//	@Override
//	public List<Employee> getEmployeeBy(String string, String valueOf) {
//		// TODO Auto-generated method stub
//		return employeeDAO.getEmployeeBy(string,valueOf);
//	}
//	@Override
//	public List<Employee> getSearchEmployee(String string, String valueOf) {
//		// TODO Auto-generated method stub
//		return employeeDAO.getSearchEmployee(string,valueOf);
//	}
	@Override
	public List<Employee> getSearchEmp(String string, String valueOf) {
		// TODO Auto-generated method stub
		return employeeDAO.getSearchEmp(string,valueOf);
	}
	@Override
	public List<Employee> getEmployeeSearchByName(String string, String valueOf) {
		// TODO Auto-generated method stub
		return employeeDAO.getEmployeeSearchByName(string,valueOf);
	}
	
	
	
	
//	@Transactional
//	public Employee getEmployee(int employeeId) {
//        return employeeDAO.getEmployee(employeeId);
//    }
// 
//	@Transactional
//    public void updateEmployee(Employee theEmployee) {
//        // TODO Auto-generated method stub
//        return employeeDAO.updateEmployee(theEmployee);
//   }
}
