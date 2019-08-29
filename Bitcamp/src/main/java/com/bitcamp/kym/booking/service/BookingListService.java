package com.bitcamp.kym.booking.service;

import java.util.ArrayList;
import java.util.List;

import org.mybatis.spring.SqlSessionTemplate;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.bitcamp.kym.booking.dao.BookingDaoInterface;
import com.bitcamp.kym.booking.domain.BookingInfo;

@Service("listService")
public class BookingListService {

	private BookingDaoInterface dao;
	
	@Autowired
	private SqlSessionTemplate template;
	
	public List<BookingInfo> list() {
		
		dao = template.getMapper(BookingDaoInterface.class);
		
		List<BookingInfo> bookList = new ArrayList<BookingInfo>();
		
		bookList = dao.bookingList();
		
		return bookList;
	}
}
