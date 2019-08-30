package com.ny.bit.member.model;

public class VerifyUser {
	private String id;
	private String code;
	
	@Override
	public String toString() {
		return "VerifyUser [id=" + id + ", code=" + code + "]";
	}

	public String getId() {
		return id;
	}
	public String getCode() {
		return code;
	}
	public void setId(String id) {
		this.id = id;
	}
	public void setCode(String code) {
		this.code = code;
	}
	
	
}
