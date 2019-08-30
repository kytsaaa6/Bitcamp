package com.bitcamp.review.controller;

import java.util.List;

import javax.servlet.http.HttpServletRequest;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.web.bind.annotation.CrossOrigin;
import org.springframework.web.bind.annotation.DeleteMapping;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.PutMapping;
import org.springframework.web.bind.annotation.RequestBody;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RestController;

import com.bitcamp.review.domain.EdtReview;
import com.bitcamp.review.domain.Review;
import com.bitcamp.review.service.DeleteService;
import com.bitcamp.review.service.EditService;
import com.bitcamp.review.service.ListService;
import com.bitcamp.review.service.WriteService;

@RestController
@RequestMapping("/rest-review")
public class ReviewController {
	
	@Autowired
	private WriteService wService;
	
	@Autowired
	private DeleteService dService;
	
	@Autowired
	private EditService eService;
	
	@Autowired
	private ListService lService;
	
	@CrossOrigin
	@GetMapping
	public List<Review> getAllList(){
		
		List<Review> list = lService.getAllList();
		
		return list;	
	}	

	@CrossOrigin
	@PostMapping
	public String write(Review review, HttpServletRequest req) {

		int result = wService.write(review, req);

		return result>0 ? "success" : "fail";
	}
	
	@CrossOrigin
	@DeleteMapping("/{id}")
	public String delete(@PathVariable("id") int idx) {
		
		int result = dService.delete(idx);
		
		return result > 0 ?"success":"fail";
	}
	
	@CrossOrigin
	@GetMapping("/{id}")
	public Review getEdtData(@PathVariable("id") int idx) {
		return eService.getEdtData(idx);	
	}
	
	@CrossOrigin
	@PutMapping("/{id}")
	public String edit(
			@PathVariable("id") int idx,
			@RequestBody EdtReview edt,
			HttpServletRequest req
			) {
		
		int result = eService.edit(idx, edt, req);
		
		return result >0 ? "success" : "fail";	
	}
	
	
	
}