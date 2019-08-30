package com.bitcamp.review.service;

import javax.inject.Inject;
import javax.servlet.http.HttpServletRequest;

import org.mybatis.spring.SqlSessionTemplate;
import org.springframework.stereotype.Service;

import com.bitcamp.review.dao.InterfaceDao;
import com.bitcamp.review.domain.EdtReview;
import com.bitcamp.review.domain.Review;

@Service("editService")
public class EditService {
	
	private InterfaceDao dao;
	
	@Inject
	private SqlSessionTemplate template;
	
	public Review getEdtData(int id) {
		
		dao =template.getMapper(InterfaceDao.class);
		
		Review review = dao.selectByIdx(id);
		
		return review;	
	}
	
	 public int edit (int idx, EdtReview edt, HttpServletRequest req) {
		 
		 dao = template.getMapper(InterfaceDao.class);
		 
		 int rCnt = 0;
		 
		 Review review = edt.toReview();
		 
		 rCnt = dao.editReview(review);
		 
		return rCnt; 
	 }
}
