package com.bitcamp.kym.booking.controller;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.http.HttpStatus;
import org.springframework.http.ResponseEntity;
import org.springframework.web.bind.annotation.CrossOrigin;
import org.springframework.web.bind.annotation.DeleteMapping;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.PutMapping;
import org.springframework.web.bind.annotation.RequestBody;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RestController;

import com.bitcamp.kym.booking.domain.AvailableBooking;
import com.bitcamp.kym.booking.domain.BookingInfo;
import com.bitcamp.kym.booking.domain.RequestBooking;
import com.bitcamp.kym.booking.service.BookingAvailableService;
import com.bitcamp.kym.booking.service.BookingDeleteService;
import com.bitcamp.kym.booking.service.BookingInsertService;
import com.bitcamp.kym.booking.service.BookingListService;
import com.bitcamp.kym.booking.service.BookingUpdateService;

@RestController
@RequestMapping("/rest/booking")
public class BookingRestFulController {

	@Autowired
	private BookingListService listService;
	
	@Autowired
	private BookingInsertService insertService;
	
	@Autowired
	private BookingDeleteService deleteService;
	
	@Autowired
	private BookingUpdateService updateService;
	
	@Autowired
	private BookingAvailableService availableService;
	
	
	@CrossOrigin
	@GetMapping
	public ResponseEntity<List<BookingInfo>> getAllList() {
		
		List<BookingInfo> list = listService.list();
		
		ResponseEntity<List<BookingInfo>> entity = new ResponseEntity<List<BookingInfo>>(list, HttpStatus.OK);
		
		return entity;
	}
	
	@CrossOrigin
	@PostMapping
	public ResponseEntity<String> insertBooking(RequestBooking request) {
		
		int cnt = insertService.Insert(request);
		
		return new ResponseEntity<String>(cnt>0 ? "success":"fail", HttpStatus.OK);
	}
	
	@CrossOrigin
	@DeleteMapping("/{idx}")
	public ResponseEntity<String> deleteBooking(@PathVariable("idx") int idx) {
		
		int cnt = deleteService.delete(idx);
		
		return new ResponseEntity<String>(cnt>0 ? "success":"fail", HttpStatus.OK);
	}
	
	
	@CrossOrigin
	@GetMapping("/{idx}")
	public ResponseEntity<BookingInfo> getEditBooking(@PathVariable("idx") int idx) {
		
		BookingInfo info = updateService.getUpdateForm(idx);
		
		return new ResponseEntity<BookingInfo>(info, HttpStatus.OK);
	}
	
	@CrossOrigin
	@GetMapping("/aval")
	public ResponseEntity<String> getAvailableBooking(AvailableBooking chk) {
		
		int cnt = availableService.getChk(chk);
		
		System.out.println(chk);
		System.out.println(cnt);
		
		return new ResponseEntity<String>(cnt>0 ? "success":"fail", HttpStatus.OK);
	}
	
//	
//	@CrossOrigin
//	@PutMapping
//	public ResponseEntity<String> editBooking(@RequestBody RequestBooking edit) {
//		
//		int cnt = updateService.edit(edit);
//		
//		return new ResponseEntity<String>(cnt>0 ? "success":"fail", HttpStatus.OK);
//	}
//	
	
}
