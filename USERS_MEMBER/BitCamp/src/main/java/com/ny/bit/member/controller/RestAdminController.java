package com.ny.bit.member.controller;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpSession;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.http.HttpStatus;
import org.springframework.http.ResponseEntity;
import org.springframework.web.bind.annotation.CrossOrigin;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.PutMapping;
import org.springframework.web.bind.annotation.RequestBody;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.ResponseBody;
import org.springframework.web.bind.annotation.RestController;

import com.ny.bit.member.model.JoinAdmin;
import com.ny.bit.member.model.LoginAdmin;
import com.ny.bit.member.model.LoginReqAdmin;
import com.ny.bit.member.service.AdminService;

@RestController
@RequestMapping("/rest-admin")
public class RestAdminController {
	
	@Autowired
	private AdminService adminService;
	
	//join
	@CrossOrigin
	@PostMapping
	public int joinAdmin(@RequestBody JoinAdmin joinadmin) {
		int result = adminService.join(joinadmin);
		return result;
	}
	
	
	//login
	@CrossOrigin
	@PutMapping(value = "/login")
	public ResponseEntity<String> loginAdmin(@RequestBody LoginReqAdmin admin, HttpServletRequest request){
		
		boolean result = adminService.login(admin.getId(), admin.getPw(), request);
		return new ResponseEntity<String>(result ? admin.getId() : "NO", HttpStatus.OK);
	}
	
	//logout
	@CrossOrigin
	@GetMapping("/login")
	public ResponseEntity<String> logoutAdmin(HttpSession session){
		session.invalidate();
		return new ResponseEntity<String>("OK", HttpStatus.OK);
	}
	 
	

}
