package com.cmm.employee.entity;

import java.util.Set;

import javax.persistence.Column;
import javax.persistence.Entity;
import javax.persistence.GeneratedValue;
import javax.persistence.GenerationType;
import javax.persistence.Id;

import javax.persistence.OneToMany;
import javax.persistence.Table;
import javax.validation.constraints.NotEmpty;
import javax.validation.constraints.Size;


@Entity
@Table(name = "employee")
public class Employee {

	@Id
	@GeneratedValue(strategy = GenerationType.IDENTITY)
	@Column(name = "id", unique = true, nullable = false)
	public int id;

	@OneToMany(mappedBy = "employee")
	private Set<EmployeeAttendance> employeeAttendance;
//	@NotEmpty
//	@Size(min = 7, max = 10, message = "Please correct your EmployeeId")
	@Column(name = "employee_id", nullable = false)
	public String employee_id;

	@Column(name = "employee_name")
	public String employee_name;

	@Column(name = "date_of_birth")
	public String date_of_birth;

	@Column(name = "age")
	public int age;

	@Column(name = "gender")
	public String gender;

	@Column(name = "note")
	public String note;

	@Column(name = "del_flg")
	public int del_flg;

//	@Size(min = 6, max = 10, message = "Your password must between 6 and 10 characters.")
	@Column(name = "password")
	public String password;

	@Column(name = "created_date")
	public String created_date;

	@Column(name = "updated_date")
	public String updated_date;

	public int getId() {
		return id;
	}

	public void setId(int id) {
		this.id = id;
	}

	public Set<EmployeeAttendance> getEmployeeAttendance() {
		return employeeAttendance;
	}

	public void setEmployeeAttendance(Set<EmployeeAttendance> employeeAttendance) {
		this.employeeAttendance = employeeAttendance;
	}

	public String getEmployee_id() {
		return employee_id;
	}

	public void setEmployee_id(String employee_id) {
		this.employee_id = employee_id;
	}

	public String getEmployee_name() {
		return employee_name;
	}

	public void setEmployee_name(String employee_name) {
		this.employee_name = employee_name;
	}

	public String getDate_of_birth() {
		return date_of_birth;
	}

	public void setDate_of_birth(String date_of_birth) {
		this.date_of_birth = date_of_birth;
	}

	public int getAge() {
		return age;
	}

	public void setAge(int age) {
		this.age = age;
	}

	public String getGender() {
		return gender;
	}

	public void setGender(String gender) {
		this.gender = gender;
	}

	public String getNote() {
		return note;
	}

	public void setNote(String note) {
		this.note = note;
	}

	public int getDel_flg() {
		return del_flg;
	}

	public void setDel_flg(int del_flg) {
		this.del_flg = del_flg;
	}

	public String getPassword() {
		return password;
	}

	public void setPassword(String password) {
		this.password = password;
	}

	public String getCreated_date() {
		return created_date;
	}

	public void setCreated_date(String created_date) {
		this.created_date = created_date;
	}

	public String getUpdated_date() {
		return updated_date;
	}

	public void setUpdated_date(String updated_date) {
		this.updated_date = updated_date;
	}

}
