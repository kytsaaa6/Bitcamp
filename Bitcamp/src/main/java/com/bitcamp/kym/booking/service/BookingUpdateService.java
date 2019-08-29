package com.bitcamp.kym.booking.service;

import org.mybatis.spring.SqlSessionTemplate;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.bitcamp.kym.booking.dao.BookingDaoInterface;
import com.bitcamp.kym.booking.domain.BookingInfo;

@Service("updateService")
public class BookingUpdateService {

	
	
	private BookingDaoInterface dao;
	
	@Autowired
	private SqlSessionTemplate template;
	
	
	public BookingInfo getUpdateForm(int idx) {
		
		dao = template.getMapper(BookingDaoInterface.class);
		
		BookingInfo booking = dao.selectBookingByIdx(idx);
		
		return booking;
	}
}
