package com.bitcamp.review.service;

import java.util.List;

import javax.inject.Inject;

import org.mybatis.spring.SqlSessionTemplate;
import org.springframework.stereotype.Service;

import com.bitcamp.review.dao.InterfaceDao;
import com.bitcamp.review.domain.Review;

@Service
public class ListService {
	
	private InterfaceDao dao;
	
	@Inject
	private SqlSessionTemplate template;
	
	final int REVIEW_CNT_PER_PAGE = 15;
	
	public List<Review> getAllList(){
		
		dao = template.getMapper(InterfaceDao.class);
		
		List<Review> list = dao.selectAllList();
		
		return list;
	}

}
