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

import java.util.Date;
import java.util.Random;

import com.fasterxml.jackson.annotation.JsonFormat;
import com.fasterxml.jackson.annotation.JsonIgnore;

public class JoinUser {

	private String id;
	private String pw;
	private String name;
	private String phone;

	public JoinUser() {
	}
	
	

	public User toUser() {
		User user = new User();
		user.setId(id);
		user.setPw(pw);
		user.setName(name);
		user.setPhone(phone);
		return user;
	}



	@Override
	public String toString() {
		return "JoinUser [id=" + id + ", pw=" + pw + ", name=" + name + ", phone=" + phone + "]";
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

	public String getPhone() {
		return phone;
	}

	public void setPhone(String phone) {
		this.phone = phone;
	}

}
