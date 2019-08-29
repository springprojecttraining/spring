package com.cmm.employee.dao;

import java.util.List;

import org.hibernate.Session;
import org.hibernate.SessionFactory;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.beans.factory.annotation.Qualifier;
import org.springframework.stereotype.Repository;

import com.cmm.employee.entity.Employee;

@Repository
public class EmployeeDAOImpl implements EmployeeDAO{

	@Autowired
	@Qualifier("sessionFactory")
    private SessionFactory sessionFactory;
	
	public void saveEmployee(Employee theEmployee) {
        Session currentSession = sessionFactory.getCurrentSession();
        currentSession.save(theEmployee);
    }
	
	@SuppressWarnings("unchecked")
    public List<Employee> getAllEmployees() {
        return sessionFactory.getCurrentSession().createQuery("from Employee").list();
    }
}
