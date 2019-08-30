package com.ny.client.model;
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

public class User {
	
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
	@JsonIgnore
	private String pw;
	private String name;
	private String phone;
	@JsonIgnore
	private String code;
	private char verify;
	@JsonFormat(pattern = "yyyy-MM-dd")
	private Date regdate;
	private char out;
	
	
	
//	public LoginUser toLoginUser() {
//		return new LoginUser(id, pw, name, phone, regdate);
//	}
	

	public User() {
		this.regdate = new Date();
		randomCode();
	}
	
	public User(String id, String pw, String name, String phone) {
		this.id = id;
		this.pw = pw;
		this.name = name;
		this.phone = phone;
		this.regdate = new Date();
		randomCode();
	}

	public boolean matchPW(String pw) {
		return pw != null && !pw.isEmpty() && this.pw.equals(pw); 
	}
	
	public void randomCode() {
		StringBuffer temp = new StringBuffer();
		Random rnd = new Random();
		
		for(int i = 0; i < 15; i++) {
			int index = rnd.nextInt(3);
			
			switch (index) {
			case 0: //a-z
				temp.append((char)(rnd.nextInt(26) + 97));
				break;
			case 1: //A-Z
				temp.append((char)(rnd.nextInt(26) + 65));
				break;
			case 2: //0-9
				temp.append(rnd.nextInt(10));
				break;
			}
		}
		
		System.out.println("======== 난수코드생성 ======== " + temp);
		setCode(temp.toString());
	}
	
	@Override
	public String toString() {
		return "User [idx=" + idx + ", id=" + id + ", pw=" + pw + ", name=" + name + ", phone=" + phone + ", code="
				+ code + ", verify=" + verify + ", regdate=" + regdate + ", out=" + out + "]";
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
	public String getCode() {
		return code;
	}
	public void setCode(String code) {
		this.code = code;
	}
	public char getVerify() {
		return verify;
	}
	public void setVerify(char verify) {
		this.verify = verify;
	}
	public Date getRegdate() {
		return regdate;
	}
	public void setRegdate(Date regdate) {
		this.regdate = regdate;
	}
	public char getOut() {
		return out;
	}
	public void setOut(char out) {
		this.out = out;
	} 
	
	
}
