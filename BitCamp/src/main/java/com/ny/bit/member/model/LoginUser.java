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




import java.util.Date;
import java.util.Random;
import com.fasterxml.jackson.annotation.JsonIgnore;

public class LoginUser {
	
/* 변수설명
 * 	`idx_m`   INT(7)      NOT NULL, -- 회원번호
 * 	`id`      VARCHAR(50) NOT NULL, -- 아이디
 * 	`pw`      VARCHAR(45) NOT NULL, -- 비밀번호
 * 	`name`    VARCHAR(20) NOT NULL, -- 이름
 * 	`phone`   INT(15)     NOT NULL, -- 전화번호
 * 	`code`    VARCHAR(45) NULL,     -- 코드
 * 	`verify`  VARCHAR(1)  NULL     DEFAULT 'N', -- 인증여부
 * 	`regdate` DATETIME    NULL     DEFAULT NOW(), -- 가입날짜
 * 	`out`     VARCHAR(1)  NULL     DEFAULT 'N' -- 탈퇴여부
 * */
	private int idx;
	private String id;
	private String pw;
	private String name;
	private String phone;
	private Date regdate;
	
	
	public LoginUser(String id, String pw, String name, String phone, Date regdate) {
		this.id = id;
		this.pw = pw;
		this.name = name;
		this.phone = phone;
		this.regdate = regdate;
	}
	
	public LoginUser(int idx, String id, String pw, String name, String phone, Date regdate) {
		this.idx = idx;
		this.id = id;
		this.pw = pw;
		this.name = name;
		this.phone = phone;
		this.regdate = regdate;
	}



	@Override
	public String toString() {
		return "LoginUser [idx=" + idx + ", id=" + id + ", pw=" + pw + ", name=" + name + ", phone=" + phone
				+ ", regdate=" + regdate + "]";
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
	public Date getRegdate() {
		return regdate;
	}
	public void setRegdate(Date regdate) {
		this.regdate = regdate;
	}
	public int getIdx() {
		return idx;
	}
	public void setIdx(int idx) {
		this.idx = idx;
	}
	
	
}
