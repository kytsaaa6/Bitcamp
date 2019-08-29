package com.bitcamp.kym.booking.controller;

import java.util.ArrayList;
import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;

import com.bitcamp.kym.booking.domain.BookingInfo;
import com.bitcamp.kym.booking.service.BookingListService;

@Controller
public class BookingListContorller {

	@Autowired
	private BookingListService bookingListService;
	
	
	@RequestMapping("booking/list")
	public String bookingList(Model model) {
		
		List<BookingInfo> bookList = new ArrayList<BookingInfo>();
		
		bookList = bookingListService.list();
		
		model.addAttribute("bookList", bookList);
		
		return "booking/bookingList";
	}
	
}
