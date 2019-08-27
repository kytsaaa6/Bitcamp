package com.ny.bit.member.service;

import org.mybatis.spring.SqlSessionTemplate;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.ny.bit.member.dao.MemberDao;
import com.ny.bit.member.model.EditUser;
import com.ny.bit.member.model.User;

@Service("editService")
public class EditService {

	
	@Autowired
	private SqlSessionTemplate template;
	private MemberDao dao;
	
	public User getOne(int id) {
		
		dao = template.getMapper(MemberDao.class);
		User user = dao.selectById(id);

		return user;
	}
	
	public int getEdit(EditUser editUser) {
		dao = template.getMapper(MemberDao.class);
		User user = editUser.toUser();
		
		return dao.updateUser(user);
	}
}
