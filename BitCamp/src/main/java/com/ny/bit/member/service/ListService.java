package com.ny.bit.member.service;

import java.util.List;

import org.mybatis.spring.SqlSessionTemplate;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.ny.bit.member.dao.MemberDao;
import com.ny.bit.member.model.User;



@Service(value = "listService")
public class ListService {
	
	@Autowired
	private SqlSessionTemplate template ;
	private MemberDao dao;
	
	public List<User> getAllList(){
		dao = template.getMapper(MemberDao.class);
		return dao.selectAllList();
	}
}
