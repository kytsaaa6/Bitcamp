package com.ny.bit.member.service;

import org.mybatis.spring.SqlSessionTemplate;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.ny.bit.member.dao.MemberDao;

@Service(value = "verifyService")
public class VerifyService {
	
	@Autowired
	private SqlSessionTemplate template;
	private MemberDao dao;
	
	
	public int getVerify(String id, String code) {
		int result = 0;
		dao = template.getMapper(MemberDao.class);
		result = dao.updateVerify(id, code);
		
		return result;
	}
	
}
