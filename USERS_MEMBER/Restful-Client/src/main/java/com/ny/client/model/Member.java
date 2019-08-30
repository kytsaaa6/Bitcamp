package com.ny.client.model;

import java.util.Date;

import com.fasterxml.jackson.annotation.JsonIgnore;

public class Member {
	private int idx;
	private String id;
	@JsonIgnore
	private String pw;
	private String name;
	private String photo;
	private Date regDate;
	private String phone;
	
	public Member() {
		this.regDate = new Date();
	}
	
	public Member(String id, String pw, String name, String photo) {
		this.id = id;
		this.pw = pw;
		this.name = name;
		this.photo = photo;
		this.regDate = new Date();		
	}
	
	public Member(int idx, String id, String pw, String name, String photo, Date regDate) {
		this.idx = idx;
		this.id = id;
		this.pw = pw;
		this.name = name;
		this.photo = photo;
		this.regDate = regDate;
	}	
	

	public boolean hasPassword() {
		return pw != null && !pw.isEmpty();
	}
	
	public boolean matchPassword(String pw) {
		return hasPassword() && this.pw.equals(pw);
	}
	
	@Override
	public String toString() {
		return "Member [idx=" + idx + ", id=" + id + ", pw=" + pw + ", name=" + name + ", photo=" + photo + ", regDate="
				+ regDate + ", phone=" + phone + "]";
	}
	public int getIdx() {
		return idx;
	}
	public String getId() {
		return id;
	}
	public String getPw() {
		return pw;
	}
	public String getName() {
		return name;
	}
	public String getPhoto() {
		return photo;
	}
	public Date getRegDate() {
		return regDate;
	}
	public String getPhone() {
		return phone;
	}
	
	
	
	
}
