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
	
	@SuppressWarnings("unchecked")
	public List<Employee> getEmployeeSearchByName(String col,String valueOf) {
		return sessionFactory.getCurrentSession().createQuery("from Employee where "+col+" like '%"+valueOf+"%'").list();
	}
	

	public Employee getEmployee(int employee_id) {
		return (Employee) sessionFactory.getCurrentSession().get(Employee.class, employee_id);
	}

	@Override
	public Employee delete(long id) {
		// TODO Auto-generated method stub
		return null;
	}

	@Override
	public Employee getEmployeeBy(String employee_id) {
		String sql = "select employee_id,employee_name,date_of_birth,age,gender,note from Employee where employee_name like '%"
				+ employee_id + "%'";
		Employee emp = (Employee) sessionFactory.getCurrentSession().createQuery(
			    "from Employee e where e.employee_id = :employee_id").setParameter("employee_id", employee_id).getSingleResult();
		//System.out.println("Emp "+emp.id);
		return emp;
	}

	

//	@Override
	public void delEmployee(int empId) {
		// TODO Auto-generated method stub
		Employee employee = (Employee) sessionFactory.getCurrentSession().load(Employee.class, empId);
		if (null != employee) {
			this.sessionFactory.getCurrentSession().delete(employee);
		}
	}

	

//	@Override
//	public void deleteEmployee(int parseInt) {
//		Employee employee = (Employee)sessionFactory.getCurrentSession().load(Employee.class, parseInt);
//		if(null != employee)
//		{
//			this.sessionFactory.getCurrentSession().delete(employee);
//		}
//		//return employee;
//	}

//	@SuppressWarnings("unchecked")
//	public List<Employee> getSearchEmp(String string, String valueOf) {
//		// TODO Auto-generated method stub
//		return sessionFactory.getCurrentSession().createQuery("select emp from Employee emp where upper(employee.employee_name) like :emp_name OR upper(emp.employee_id) like :emp_no")
//			.setParameter("emp_name",  "%" + string + "%").setParameter("emp_no",  "%" + valueOf + "%").list();
//	}


	

//	@Override
//	public boolean checkEmpLogin(String employee_id, String password) {
//		// TODO Auto-generated method stub
//		return true;
//	}
//	public void deleteEmployeer(int id) {
//		Employee employee = (Employee)sessionFactory.getCurrentSession().load(Employee.class, id);
//		if(null != employee)
//		{
//			this.sessionFactory.getCurrentSession().delete(employee);
//		}
//	}
}



	



