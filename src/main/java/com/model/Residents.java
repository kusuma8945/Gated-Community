package com.model;

public class Residents {
	
	private int id;
	
	private String userName;
	
	private String password;
	private String email;
	private String fullName;
	private String role;
	private String phone;

	public int getId() {
		return id;
	}
	public void setId(int id) {
		this.id = id;
	}
	public String getUserName() {
		return userName;
	}
	public void setUserName(String userName) {
		this.userName = userName;
	}
	public String getPassword() {
		return password;
	}
	public void setPassword(String password) {
		this.password = password;
	}
	public String getEmail() {
		return email;
	}
	public void setEmail(String email) {
		this.email = email;
	}
	public String getFullName() {
		return fullName;
	}
	public void setFullName(String fullName) {
		this.fullName = fullName;
	}
	public String getRole() {
		return role;
	}
	public void setRole(String role) {
		this.role = role;
	}
	public String getPhone() {
		return phone;
	}
	public void setPhone(String phone) {
		this.phone = phone;
	}
	public Residents(String userName, String password, String email, String fullName, String role, String phone) {
		super();
		this.userName = userName;
		this.password = password;
		this.email = email;
		this.fullName = fullName;
		this.role = role;
		this.phone = phone;
	}
	public Residents(int id, String userName, String password, String email, String fullName, String role,
			String phone) {
		super();
		this.id = id;
		this.userName = userName;
		this.password = password;
		this.email = email;
		this.fullName = fullName;
		this.role = role;
		this.phone = phone;
	}
	public Residents() {
		super();
	}
	public Residents(String userName, String password, String email, String fullName, String phone) {
		super();
		this.userName = userName;
		this.password = password;
		this.email = email;
		this.fullName = fullName;
		this.phone = phone;
	}
	public Residents(String userName, String password) {
		super();
		this.userName = userName;
		this.password = password;
	}
	public Residents(String userName, String password, String role) {
		super();
		this.userName = userName;
		this.password = password;
		this.role = role;
	}
	public Residents(int id, String email, String fullName, String phone) {
		super();
		this.id = id;
		this.email = email;
		this.fullName = fullName;
		this.phone = phone;
	}
	
	
	

}
