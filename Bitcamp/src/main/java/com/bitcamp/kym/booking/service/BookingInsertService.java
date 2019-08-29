package com.bitcamp.kym.booking.service;

import org.mybatis.spring.SqlSessionTemplate;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.bitcamp.kym.booking.dao.BookingDaoInterface;
import com.bitcamp.kym.booking.domain.BookingInfo;
import com.bitcamp.kym.booking.domain.RequestBooking;


@Service("insertService")
public class BookingInsertService {

	
	private BookingDaoInterface dao;
	
	@Autowired
	private SqlSessionTemplate template;
	
	
	public int Insert(RequestBooking booking) {
		
		dao = template.getMapper(BookingDaoInterface.class);
		
		BookingInfo bookingInfo = booking.toBookingInfo();
		
		int rCnt = dao.insertBooking(bookingInfo);
		
		return rCnt;
	}

}
