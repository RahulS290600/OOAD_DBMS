package com.ilp03.entity;

public class Employee {
	private int employeeId;
	private String employeeName;
	private String email;
	private Department deptId;
	private String position;
	private Employee createdBy;
	private int updatedBy;
	private String createdDate;
	private String updatedDate;
	public Employee(int employeeId, String employeeName, String email, Department deptId, String position,
			Employee createdBy, int updatedBy, String createdDate, String updatedDate) {
		super();
		this.employeeId = employeeId;
		this.employeeName = employeeName;
		this.email = email;
		this.deptId = deptId;
		this.position = position;
		this.createdBy = createdBy;
		this.updatedBy = updatedBy;
		this.createdDate = createdDate;
		this.updatedDate = updatedDate;
	}
	public int getemployeeId() {
		return employeeId;
	}
	public void setemployeeId(int employeeId) {
		this.employeeId = employeeId;
	}
	public String getemployeeName() {
		return employeeName;
	}
	public void setemployeeName(String employeeName) {
		this.employeeName = employeeName;
	}
	public String getEmail() {
		return email;
	}
	public void setEmail(String email) {
		this.email = email;
	}
	public Department getdeptId() {
		return deptId;
	}
	public void setdeptId(Department deptId) {
		this.deptId = deptId;
	}
	public String getPosition() {
		return position;
	}
	public void setPosition(String position) {
		this.position = position;
	}
	public Employee getcreatedBy() {
		return createdBy;
	}
	public void setcreatedBy(Employee createdBy) {
		this.createdBy = createdBy;
	}
	public int getupdatedBy() {
		return updatedBy;
	}
	public void setupdatedBy(int updatedBy) {
		this.updatedBy = updatedBy;
	}
	public String getcreatedDate() {
		return createdDate;
	}
	public void setcreatedDate(String createdDate) {
		this.createdDate = createdDate;
	}
	public String getupdatedDate() {
		return updatedDate;
	}
	public void setupdatedDate(String updatedDate) {
		this.updatedDate = updatedDate;
	} 
	
	

}
