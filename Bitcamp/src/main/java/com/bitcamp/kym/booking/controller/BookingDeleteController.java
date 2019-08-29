package com.bitcamp.kym.booking.controller;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;

import com.bitcamp.kym.booking.service.BookingDeleteService;

@Controller
public class BookingDeleteController {

	@Autowired
	private BookingDeleteService deleteService;
	
	
//	@RequestMapping(method = RequestMethod.GET)
//	public String deleteForm(@RequestParam("idx") int idx) {
//		
//		
//		return "booking/bookingDeleteForm";
//	}
	
	@RequestMapping("/booking/delete/{idx}")
	public String delete(@PathVariable("idx") int idx, Model model) {
		
		boolean chk = false;
		int rCnt = 0;
		String msg = "";
		
		rCnt = deleteService.delete(idx);
		
//		model.addAttribute("rCnt", rCnt);
		
		return "redirect:/booking/list";
	}	
	
	
}
