package com.bitcamp.kym.booking.domain;

public class AvailableBooking {

	String h_name;
	String r_name;
	String s_date;
	String e_date;
	
	public AvailableBooking() {
		
	}
	
	
	public AvailableBooking(String h_name, String r_name, String s_date, String e_date) {
		this.h_name = h_name;
		this.r_name = r_name;
		this.s_date = s_date;
		this.e_date = e_date;
	}
	
	public String getH_name() {
		return h_name;
	}
	public void setH_name(String h_name) {
		this.h_name = h_name;
	}
	public String getR_name() {
		return r_name;
	}
	public void setR_name(String r_name) {
		this.r_name = r_name;
	}
	public String getS_date() {
		return s_date;
	}
	public void setS_date(String s_date) {
		this.s_date = s_date;
	}
	public String getE_date() {
		return e_date;
	}
	public void setE_date(String e_date) {
		this.e_date = e_date;
	}
	
	@Override
	public String toString() {
		return "AvailableBooking [h_name=" + h_name + ", r_name=" + r_name + ", s_date=" + s_date + ", e_date=" + e_date
				+ "]";
	}
	
	
	
}
