package com.ilp03.entity;

public class Comment {
	private int commentId;
	private String content;
	private Employee employeeId;
	private Post postId;
	private String datePublished;
	private int updatedBy;
	private String updatedDate;
	public Comment(int commentId, String content, Employee employeeId, Post postId, String datePublished,
			int updatedBy, String updatedDate) {
		super();
		this.commentId = commentId;
		this.content = content;
		this.employeeId = employeeId;
		this.postId = postId;
		this.datePublished = datePublished;
		this.updatedBy = updatedBy;
		this.updatedDate = updatedDate;
	}
	public int getcommentId() {
		return commentId;
	}
	public void setcommentId(int commentId) {
		this.commentId = commentId;
	}
	public String getContent() {
		return content;
	}
	public void setContent(String content) {
		this.content = content;
	}
	public Employee getemployeeId() {
		return employeeId;
	}
	public void setemployeeId(Employee employeeId) {
		this.employeeId = employeeId;
	}
	public Post getpostId() {
		return postId;
	}
	public void setpostId(Post postId) {
		this.postId = postId;
	}
	public String getdatePublished() {
		return datePublished;
	}
	public void setdatePublished(String datePublished) {
		this.datePublished = datePublished;
	}
	public int getupdatedBy() {
		return updatedBy;
	}
	public void setupdatedBy(int updatedBy) {
		this.updatedBy = updatedBy;
	}
	public String getupdatedDate() {
		return updatedDate;
	}
	public void setupdatedDate(String updatedDate) {
		this.updatedDate = updatedDate;
	}

}
