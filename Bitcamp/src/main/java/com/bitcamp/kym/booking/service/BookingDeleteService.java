package com.bitcamp.kym.booking.service;

import org.mybatis.spring.SqlSessionTemplate;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.bitcamp.kym.booking.dao.BookingDaoInterface;

@Service("deleteService")
public class BookingDeleteService {

	private BookingDaoInterface dao;
	
	@Autowired
	private SqlSessionTemplate template;
	
	public int delete(int idx) {
		
		dao = template.getMapper(BookingDaoInterface.class);
		
		return dao.deleteBooking(idx);
	}
	
}
