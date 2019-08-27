package com.ny.bit.member.controller;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.CrossOrigin;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;

import com.ny.bit.member.service.VerifyService;

@Controller
public class VerifyController {

	@Autowired
	private VerifyService verifyService;
	
	
	//verify 연습(우회 ㄴㄴ)
	@CrossOrigin
	@RequestMapping("/verify")
	public String verifyTest(@RequestParam("id")String id, @RequestParam("code") String code) {
		String result =verifyService.getVerify(id, code) > 0 ? "OK":"NO" ; 
		return "verify" + result;
	}
}
