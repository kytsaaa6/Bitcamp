package com.ny.bit.member.controller;

import org.springframework.http.HttpStatus;
import org.springframework.http.ResponseEntity;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.annotation.RestController;

@RestController
@RequestMapping("/info")
public class ReqUserController {
	
	@GetMapping
	public ResponseEntity<String> getUserIdx(@RequestParam("uIdx") String uIdx){
		
		return new ResponseEntity<String>(uIdx , HttpStatus.OK);
	}
	
}
