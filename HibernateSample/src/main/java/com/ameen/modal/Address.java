package com.ameen.modal;

import javax.persistence.Entity;
import javax.persistence.GeneratedValue;
import javax.persistence.GenerationType;
import javax.persistence.Id;
import javax.persistence.JoinColumn;
import javax.persistence.OneToOne;

import org.hibernate.annotations.GenericGenerator;
import org.hibernate.annotations.Parameter;

@Entity
public class Address {
	@Id
	//@GeneratedValue(strategy = GenerationType.AUTO)
	@GeneratedValue(generator="newGenerator") // name of the primary key generator
	@GenericGenerator(name="newGenerator", strategy = "foreign", parameters = {@Parameter(value = "emp", name="property") })
	private int emp_id;
	private String emp_city;
	/*private String state;
	private String country;*/
	
	public int getEmp_id() {
		return emp_id;
	}
	public void setEmp_id(int emp_id) {
		this.emp_id = emp_id;
	}
	public String getEmp_city() {
		return emp_city;
	}
	public void setEmp_city(String emp_city) {
		this.emp_city = emp_city;
	}
	
	//Association Mappings
	@OneToOne
	@JoinColumn(name="emp_id")
	private Employee emp;

	public Employee getEmp() {
		return emp;
	}
	public void setEmp(Employee emp) {
		this.emp = emp;
	}

}
