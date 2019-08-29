package com.ny.bit.member.model;

public class JoinAdmin {

	
	private String id;
	private String pw;
	private String name;

	public JoinAdmin(String id, String pw, String name) {
		this.id = id;
		this.pw = pw;
		this.name = name;
	}
	public JoinAdmin() {
	}
	
	public Admin toAdmin() {
		Admin admin = new Admin();
		admin.setId(id);;
		admin.setPw(pw);
		admin.setName(name);
		return admin;
	}
	
	@Override
	public String toString() {
		return "JoinAdmin [id=" + id + ", pw=" + pw + ", name=" + name + "]";
	}
	public String getId() {
		return id;
	}
	public void setId(String id) {
		this.id = id;
	}
	public String getPw() {
		return pw;
	}
	public void setPw(String pw) {
		this.pw = pw;
	}
	public String getName() {
		return name;
	}
	public void setName(String name) {
		this.name = name;
	}
	
}
