package com.bitcamp.rest;

import java.util.Arrays;
import java.util.List;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.ResponseBody;
import org.springframework.web.client.RestTemplate;

@Controller
public class RestfulClientController {

	
	@RequestMapping("/list")
	@ResponseBody
	public List<BookingInfo> getAllList() {
		
		RestTemplate restTemplate = new RestTemplate();
		
		BookingInfo[] booking = restTemplate.getForObject("http://localhost:8080/kym/rest/booking", BookingInfo[].class);
		
		List<BookingInfo> list = Arrays.asList(booking);
		
		for(BookingInfo m : list) {
			System.out.println(m);
		}
		
		return list;
	}
	
	
	@RequestMapping("/booking/{idx}")
	@ResponseBody
	public String getMember(@PathVariable("idx") int idx) {
		
		
		RestTemplate restTemplate = new RestTemplate();
		
		BookingInfo info = restTemplate.getForObject("http://localhost:8080/kym/rest/booking/{idx}", BookingInfo.class, idx);
		
		System.out.println(info);
		
		return null;
	}

}
