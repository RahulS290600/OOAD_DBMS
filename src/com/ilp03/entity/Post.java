package com.ilp03.entity;

public class Post {

	private int postId;
	private String title;
	private String content;
	private Employee authorId;
	private Tag tagId;
	private String datePublished;
	private int updatedBy;
	private String updatedDate;
	public Post(int postId, String title, String content, Employee authorId, Tag tagId, String datePublished,
			int updatedBy, String updatedDate) {
		super();
		this.postId = postId;
		this.title = title;
		this.content = content;
		this.authorId = authorId;
		this.tagId = tagId;
		this.datePublished = datePublished;
		this.updatedBy = updatedBy;
		this.updatedDate = updatedDate;
	}
	public int getpostId() {
		return postId;
	}
	public void setpostId(int postId) {
		this.postId = postId;
	}
	public String getTitle() {
		return title;
	}
	public void setTitle(String title) {
		this.title = title;
	}
	public String getContent() {
		return content;
	}
	public void setContent(String content) {
		this.content = content;
	}
	public Employee getauthorId() {
		return authorId;
	}
	public void setauthorId(Employee authorId) {
		this.authorId = authorId;
	}
	public Tag gettagId() {
		return tagId;
	}
	public void settagId(Tag tagId) {
		this.tagId = tagId;
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
