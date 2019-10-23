package com.cmm.employee.entity;

import javax.persistence.CascadeType;
import javax.persistence.Column;
import javax.persistence.Entity;
import javax.persistence.GeneratedValue;
import javax.persistence.GenerationType;
import javax.persistence.Id;
import javax.persistence.JoinColumn;
import javax.persistence.JoinTable;
import javax.persistence.ManyToOne;
import javax.persistence.OneToMany;
import javax.persistence.Table;
import javax.persistence.UniqueConstraint;


import java.sql.Timestamp;
import com.cmm.employee.entity.Employee;

@Entity
@Table( name = "employee_attendance" , uniqueConstraints = {
		@UniqueConstraint(columnNames = "id")})
public class EmployeeAttendance {
	
	@Id
	@GeneratedValue(strategy = GenerationType.IDENTITY)
	@Column(name = "id", unique = true, nullable = false)
	public int id;
	
	@ManyToOne
	@JoinColumn(name="employee_id", nullable=false)
	private Employee employee;
	
	@Column(name = "date")
	public String date;
	
	@Column(name = "day")
	public String day;
	
	@Column(name = "in_time")
	public String in_time;
	
	@Column(name = "out_time")
	public String out_time;
	
	@Column(name = "in_time_reason")
	public String in_time_reason;
	
	@Column(name = "out_time_reason")
	public String out_time_reason;
	
	@Column(name = "created_date")
	public Timestamp created_date;
	
	@Column(name = "updated_date")
	public Timestamp updated_date;

	public int getId() {
		return id;
	}

	public void setId(int id) {
		this.id = id;
	}

	public Employee getEmployee() {
		return employee;
	}

	public void setEmployee(Employee employee) {
		this.employee = employee;
	}

	public String getDate() {
		return date;
	}

	public void setDate(String date) {
		this.date = date;
	}

	public String getDay() {
		return day;
	}

	public void setDay(String day) {
		this.day = day;
	}

	

	public String getIn_time() {
		return in_time;
	}

	public void setIn_time(String in_time) {
		this.in_time = in_time;
	}

	public String getOut_time() {
		return out_time;
	}

	public void setOut_time(String out_time) {
		this.out_time = out_time;
	}

	public String getIn_time_reason() {
		return in_time_reason;
	}

	public void setIn_time_reason(String in_time_reason) {
		this.in_time_reason = in_time_reason;
	}

	public String getOut_time_reason() {
		return out_time_reason;
	}

	public void setOut_time_reason(String out_time_reason) {
		this.out_time_reason = out_time_reason;
	}

	public Timestamp getCreated_date() {
		return created_date;
	}

	public void setCreated_date(Timestamp created_date) {
		this.created_date = created_date;
	}

	public Timestamp getUpdated_date() {
		return updated_date;
	}

	public void setUpdated_date(Timestamp updated_date) {
		this.updated_date = updated_date;
	}
	
	
}
