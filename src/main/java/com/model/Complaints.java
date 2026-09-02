package com.model;

public class Complaints {


	private int complaintId;
	
	private int userId;
	
	private String category;
	
	private String subject;
	
	private String description;
	
	private String status;
	

	public Complaints(int complaintId, String category, String subject, String description, String status) {
		super();
		this.complaintId = complaintId;
		this.category = category;
		this.subject = subject;
		this.description = description;
		this.status = status;
	}

	public String getStatus() {
		return status;
	}

	public void setStatus(String status) {
		this.status = status;
	}

	public int getComplaintId() {
		return complaintId;
	}

	public void setComplaintId(int complaintId) {
		this.complaintId = complaintId;
	}

	public int getUserId() {
		return userId;
	}

	public void setUserId(int userId) {
		this.userId = userId;
	}

	public String getCategory() {
		return category;
	}

	public void setCategory(String category) {
		this.category = category;
	}

	public String getSubject() {
		return subject;
	}

	public void setSubject(String subject) {
		this.subject = subject;
	}

	public String getDescription() {
		return description;
	}

	public void setDescription(String description) {
		this.description = description;
	}

	public Complaints(int complaintId, int userId, String category, String subject, String description) {
		super();
		this.complaintId = complaintId;
		this.userId = userId;
		this.category = category;
		this.subject = subject;
		this.description = description;
	}

	public Complaints(String category, String subject, String description) {
		super();
		this.category = category;
		this.subject = subject;
		this.description = description;
	}

	public Complaints(int userId, String category, String subject, String description) {
		super();
		this.userId = userId;
		this.category = category;
		this.subject = subject;
		this.description = description;
	}

	public Complaints() {
		super();
	}

	public Complaints(int complaintId, int userId, String category, String subject, String description, String status) {
		super();
		this.complaintId = complaintId;
		this.userId = userId;
		this.category = category;
		this.subject = subject;
		this.description = description;
		this.status = status;
	}

	public Complaints(int complaintId, int userId, String status) {
		super();
		this.complaintId = complaintId;
		this.userId = userId;
		this.status = status;
	}
	
	
	
}

	