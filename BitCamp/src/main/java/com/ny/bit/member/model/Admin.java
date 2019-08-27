package com.ny.bit.member.model;
/*-------------------
 * 파일이름: Admin.java
 * 파일설명: 멤버 관련 model(DTO) 
 * 작성자: 김나연
 * 버전: 1.0.1
 * 생성일자: 2019-08-25 오후 07시 20분
 * 최종수정일자: 2019-08-25 오후 07시 20분
 * 최종수정자: 김나연
 * 최종수정내용: 최초 작성
 * -------------------*/



import java.util.Date;
import com.fasterxml.jackson.annotation.JsonIgnore;

public class Admin {
	private int idx;
	private String id;
	@JsonIgnore
	private String pw;
	private String name;
	private Date regdate;
	
	@Override
	public String toString() {
		return "Admin [idx=" + idx + ", id=" + id + ", pw=" + pw + ", name=" + name + ", regdate=" + regdate + "]";
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
	public Date getRegdate() {
		return regdate;
	}
	public void setRegdate(Date regdate) {
		this.regdate = regdate;
	}
	
	
}
