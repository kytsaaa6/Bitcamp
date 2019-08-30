package com.ny.bit.member.model;
/*-------------------
 * 파일이름: User.java
 * 파일설명: 멤버 관련 model(DTO) 
 * 작성자: 김나연
 * 버전: 1.0.1
 * 생성일자: 2019-08-25 오후 07시 20분
 * 최종수정일자: 2019-08-25 오후 07시 20분
 * 최종수정자: 김나연
 * 최종수정내용: 최초 작성
 * -------------------*/



public class EditUser {
	
	private int idx;
	private String id;
	private String name;
	private String phone;
	
	
	
	
	public EditUser() {
	}
	public EditUser(int idx, String id, String name, String phone) {
		this.idx = idx;
		this.id = id;
		this.name = name;
		this.phone = phone;
	}
	
	public User toUser() {
		User user = new User();
		user.setIdx(idx);
		user.setId(id);
		user.setName(name);
		user.setPhone(phone);
		return user;
	}
	
	@Override
	public String toString() {
		return "EditUser [idx=" + idx + ", id=" + id + ", name=" + name + ", phone=" + phone + "]";
	}
	public int getIdx() {
		return idx;
	}
	public void setIdx(int idx) {
		this.idx = idx;
	}
	public String getId() {
		return id;
	}
	public void setId(String id) {
		this.id = id;
	}
	public String getName() {
		return name;
	}
	public void setName(String name) {
		this.name = name;
	}
	public String getPhone() {
		return phone;
	}
	public void setPhone(String phone) {
		this.phone = phone;
	}
	
	
	
}
