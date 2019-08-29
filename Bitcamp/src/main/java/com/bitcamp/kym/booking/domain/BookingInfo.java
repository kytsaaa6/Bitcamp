package com.bitcamp.kym.booking.domain;



import java.util.Date;

import org.springframework.format.annotation.DateTimeFormat;

import com.fasterxml.jackson.annotation.JsonFormat;

public class BookingInfo {

	private int idx;
	private String h_name;
	private String h_photo;
	private String h_address;
	private String r_name;
	private String r_price;
//	@JsonFormat(pattern = "yyyy-MM-dd")
	@DateTimeFormat(pattern = "yyyy-MM-dd")
	private Date s_date;
//	@JsonFormat(pattern = "yyyy-MM-dd")
	@DateTimeFormat(pattern = "yyyy-MM-dd")
	private Date e_date;
	private String b_date;
	private String uId;
	
	
	public BookingInfo() {
	}

	public BookingInfo(int idx, String h_name, String h_photo, String h_address, String r_name, String r_price,
			Date s_date, Date e_date, String uId) {
		this.idx = idx;
		this.h_name = h_name;
		this.h_photo = h_photo;
		this.h_address = h_address;
		this.r_name = r_name;
		this.r_price = r_price;
		this.s_date = s_date;
		this.e_date = e_date;
		this.uId = uId;
	}


	public int getIdx() {
		return idx;
	}


	public void setIdx(int idx) {
		this.idx = idx;
	}


	public String getH_name() {
		return h_name;
	}


	public void setH_name(String h_name) {
		this.h_name = h_name;
	}


	public String getH_photo() {
		return h_photo;
	}


	public void setH_photo(String h_photo) {
		this.h_photo = h_photo;
	}


	public String getH_address() {
		return h_address;
	}


	public void setH_address(String h_address) {
		this.h_address = h_address;
	}


	public String getR_name() {
		return r_name;
	}


	public void setR_name(String r_name) {
		this.r_name = r_name;
	}


	public String getR_price() {
		return r_price;
	}


	public void setR_price(String r_price) {
		this.r_price = r_price;
	}


	public Date getS_date() {
		return s_date;
	}

	public void setS_date(Date s_date) {
		this.s_date = s_date;
	}

	public Date getE_date() {
		return e_date;
	}

	public void setE_date(Date e_date) {
		this.e_date = e_date;
	}

	public String getB_date() {
		return b_date;
	}


	public void setB_date(String b_date) {
		this.b_date = b_date;
	}

	public String getuId() {
		return uId;
	}

	public void setuId(String uId) {
		this.uId = uId;
	}

	@Override
	public String toString() {
		return "BookingInfo [idx=" + idx + ", h_name=" + h_name + ", h_photo=" + h_photo + ", h_address=" + h_address
				+ ", r_name=" + r_name + ", r_price=" + r_price + ", s_date=" + s_date + ", e_date=" + e_date
				+ ", b_date=" + b_date + ", uId=" + uId + "]";
	}

	
	
	
	
	
}
