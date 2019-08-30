package com.bitcamp.review.service;

import javax.inject.Inject;

import org.mybatis.spring.SqlSessionTemplate;
import org.springframework.stereotype.Service;

import com.bitcamp.review.dao.InterfaceDao;

@Service("deleteService")
public class DeleteService {
	
	private InterfaceDao dao;
	
	@Inject
	private SqlSessionTemplate template;
	
	public int delete(int id) {
		
		dao = template.getMapper(InterfaceDao.class);
		
		return dao.deleteReview(id);
	}

}
