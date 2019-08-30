package com.ny.bit.member.service;

import org.mybatis.spring.SqlSessionTemplate;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.ny.bit.member.dao.MemberDao;

@Service("delService")
public class DeleteService {
	
	@Autowired
	private SqlSessionTemplate template ;
	private MemberDao dao;
	
	public int delete(int idx) {
		int result = 0;
		
		dao = template.getMapper(MemberDao.class);
		result = dao.updateUserOut(idx);
		System.out.println("--- del mem service ---" );
		System.out.println(result);
		
		return result;
	}
}
