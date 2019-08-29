package com.bitcamp.kym.booking.service;

import org.mybatis.spring.SqlSessionTemplate;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.bitcamp.kym.booking.dao.BookingDaoInterface;
import com.bitcamp.kym.booking.domain.AvailableBooking;

@Service("availableService")
public class BookingAvailableService {

	private BookingDaoInterface dao;
	
	@Autowired
	private SqlSessionTemplate template;
	
	public int getChk(AvailableBooking chk) {
		
		dao = template.getMapper(BookingDaoInterface.class);
		
		System.out.println(chk);
		System.out.println(dao.availableBooking(chk));
		
		
		return dao.availableBooking(chk);
	}

	
}
