package com.ilp03.entity;

public class Tag {
	private int tagId;
	private String tagName;
	public int gettagId() {
		return tagId;
	}
	public void settagId(int tagId) {
		this.tagId = tagId;
	}
	public String gettagName() {
		return tagName;
	}
	public void settagName(String tagName) {
		this.tagName = tagName;
	}
	public Tag(int tagId, String tagName) {
		super();
		this.tagId = tagId;
		this.tagName = tagName;
	}
	

}
