package com.ny.bit.member.model;
/*-------------------
 * 파일이름: LoginUser.java
 * 파일설명: 멤버 관련 model(DTO) 
 * 작성자: 김나연
 * 버전: 1.0.1
 * 생성일자: 2019-08-25 오후 07시 20분
 * 최종수정일자: 2019-08-25 오후 07시 20분
 * 최종수정자: 김나연
 * 최종수정내용: 최초 작성
 * -------------------*/

public class LoginReqAdmin {

	private String id;
	private String pw;
	
	public Admin toAdmin() {
		Admin admin = new Admin();
		admin.setId(id);
		admin.setPw(pw);
		return admin;
	}
	
	@Override
	public String toString() {
		return "LoginReqAdmin [id=" + id + ", pw=" + pw + "]";
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
	
}
