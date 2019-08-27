package com.ny.bit.member.service;

import javax.servlet.http.HttpServletRequest;

import org.mybatis.spring.SqlSessionTemplate;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.ny.bit.member.dao.MemberDao;
import com.ny.bit.member.model.Admin;

@Service("AdLoginService")
public class AdminLoginService {
	@Autowired
	private SqlSessionTemplate template ;
	private MemberDao dao;
	
	public boolean login(String id, String pw, HttpServletRequest request) {
		boolean loginChk = false;
		
		dao = template.getMapper(MemberDao.class);
		Admin admin = null;
		admin = dao.selectAdById(id);
		
		if(admin != null && admin.matchPW(pw)) {
			loginChk = true;
			request.getSession(true).setAttribute("adminInfo", admin.toLoginAdmin());
		}
		
		System.out.println("---login service---");
		System.out.println("admin" + admin);
		System.out.println("loginchk" + loginChk);
		
		return loginChk;
	}
}
