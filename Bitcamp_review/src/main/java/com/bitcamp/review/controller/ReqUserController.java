package com.bitcamp.review.controller;

import org.springframework.http.HttpStatus;
import org.springframework.http.ResponseEntity;
import org.springframework.web.bind.annotation.CrossOrigin;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.RequestMapping;

import org.springframework.web.bind.annotation.RestController;

@RestController
@RequestMapping("/info.jsp")
public class ReqUserController {
	
	@CrossOrigin
	@GetMapping
	public ResponseEntity<String> getUserIdx(@PathVariable("uIdx") String uIdx){
		
		return new ResponseEntity<String>(uIdx , HttpStatus.OK);
	}
	
}
