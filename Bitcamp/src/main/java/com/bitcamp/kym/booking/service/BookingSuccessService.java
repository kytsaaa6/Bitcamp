package com.bitcamp.kym.booking.service;

import org.mybatis.spring.SqlSessionTemplate;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.bitcamp.kym.booking.dao.BookingDaoInterface;
import com.bitcamp.kym.booking.domain.AvailableBooking;
import com.bitcamp.kym.booking.domain.BookingInfo;

@Service("successService")
public class BookingSuccessService {

	private BookingDaoInterface dao;
	
	@Autowired
	private SqlSessionTemplate template;
	
	public BookingInfo getSuccess(String h_name, String r_name, String uId) {
		
		dao = template.getMapper(BookingDaoInterface.class);
		
		return dao.successBooking(h_name,r_name,uId);
	}
}
