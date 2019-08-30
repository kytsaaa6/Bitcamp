package com.ny.bit;


import javax.servlet.http.HttpSession;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;


@Controller
public class MainController {
	
	@RequestMapping(value = "/main", method = RequestMethod.GET)
	public String getMain(HttpSession session) {
		
		if(session != null) {
			System.out.println(session.getAttribute("loginInfo"));
		}
		
		return "main";
	}
	
}
