package com.cmm.employee.dao;

import java.util.List;

import org.hibernate.Session;
import org.hibernate.SessionFactory;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.beans.factory.annotation.Qualifier;
import org.springframework.stereotype.Repository;

import com.cmm.employee.entity.Employee;


@Repository
public class EmployeeDAOImpl implements EmployeeDAO {

	@Autowired
	@Qualifier("sessionFactory")
	private SessionFactory sessionFactory;
	
	public void saveEmployee(Employee theEmployee) {
		Session currentSession = sessionFactory.getCurrentSession();
		currentSession.saveOrUpdate(theEmployee);
	}

	@SuppressWarnings("unchecked")
	public List<Employee> getAllEmployees() {
		return sessionFactory.getCurrentSession().createQuery("from Employee").list();
	}

	public Employee getEmployee(int employee_id) {
		return (Employee) sessionFactory.getCurrentSession().get(Employee.class, employee_id);
	}

	@Override
	public Employee delete(long id) {
		// TODO Auto-generated method stub
		return null;
	}

	
	

	
//	public Employee getEmployeeBy(String employee_id) {
//		String sql = "select employee_id,employee_name,date_of_birth,age,gender,note from Employee where employee_name like '%"
//				+ employee_id + "%'";
//		Employee emp = (Employee) sessionFactory.getCurrentSession().createQuery(
//			    "from Employee e where e.employee_id = :employee_id").setParameter("employee_id", employee_id).getSingleResult();
//		System.out.println("Emp "+emp.id);
//		return emp;
//	}
//
//	public void updateEmployee(Employee theEmployee) {
//		sessionFactory.getCurrentSession().update(theEmployee);
//	}
//
//	public void deleteEmployee(int id) {
//		Employee employee = (Employee) sessionFactory.getCurrentSession().load(Employee.class, id);
//		if (null != employee) {
//			this.sessionFactory.getCurrentSession().delete(employee);
//		}
//	}
//
//	public Object getEmployeeName(String employee_name) {
//		String sql = "select employee_id,employee_name,date_of_birth,age,gender,note from Employee where employee_name like '%"
//				+ employee_name + "%'";
//		return (Employee) sessionFactory.getCurrentSession().get(sql, Employee.class);
//	}
//	
//	@SuppressWarnings("unchecked")
//	public List<Employee> getEmployeeNameForSearch(String employee_name){
//		return sessionFactory.getCurrentSession().createQuery("from Employee where employee_name like '%"+employee_name+"%'").list();
//	}

}
