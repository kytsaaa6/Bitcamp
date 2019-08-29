package com.bitcamp.kym.booking.controller;


import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;

import com.bitcamp.kym.booking.domain.RequestBooking;
import com.bitcamp.kym.booking.service.BookingInsertService;

@Controller
@RequestMapping("/booking/write")
public class BookingInsertController {

	
	@Autowired
	private BookingInsertService bookingService;
	
	@RequestMapping(method = RequestMethod.GET)
	public String bookingForm() {
		
		return "booking/bookingForm";
	}
	
	
	@RequestMapping(method = RequestMethod.POST)
	public String booking(RequestBooking booking, Model model) {
		
		int rCnt = bookingService.Insert(booking);
		
		model.addAttribute("rCnt", rCnt);
		
		System.out.println(booking);
		
		return "booking/bookingResult";
		
		
	}
}
