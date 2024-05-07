package com.ilp03.entity;

public class Department {
	
	private int dept_id;
	private String department_name;
	public Department(int dept_id, String department_name) {
		super();
		this.dept_id = dept_id;
		this.department_name = department_name;
	}
	public int getDept_id() {
		return dept_id;
	}
	public void setDept_id(int dept_id) {
		this.dept_id = dept_id;
	}
	public String getDepartment_name() {
		return department_name;
	}
	public void setDepartment_name(String department_name) {
		this.department_name = department_name;
	}
	
	

}
