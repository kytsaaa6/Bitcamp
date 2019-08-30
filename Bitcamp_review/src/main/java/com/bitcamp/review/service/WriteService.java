package com.bitcamp.review.service;

import javax.inject.Inject;
import javax.servlet.http.HttpServletRequest;

import org.mybatis.spring.SqlSessionTemplate;
import org.springframework.stereotype.Service;

import com.bitcamp.review.dao.InterfaceDao;
import com.bitcamp.review.domain.Review;

@Service("writeService")
public class WriteService {

	private InterfaceDao dao;

	@Inject
	private SqlSessionTemplate template;

	public int write(Review review, HttpServletRequest req) {

		dao = template.getMapper(InterfaceDao.class);

		int resultCnt = 0;
		
		resultCnt = dao.writeReview(review);
		
		return resultCnt;
	}
}
