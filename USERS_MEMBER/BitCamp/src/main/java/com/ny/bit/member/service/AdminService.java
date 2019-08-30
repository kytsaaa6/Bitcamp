package com.ny.bit.member.service;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpSession;

import org.mybatis.spring.SqlSessionTemplate;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.ny.bit.member.dao.AdminDao;
import com.ny.bit.member.dao.MemberDao;
import com.ny.bit.member.model.Admin;
import com.ny.bit.member.model.JoinAdmin;

@Service("AdminService")
public class AdminService {
	@Autowired
	private SqlSessionTemplate template ;
	private AdminDao dao;
	
	
	//join
	public int join(JoinAdmin joinadmin) {
		System.out.println("service : : : join : : : " + joinadmin);
		int result = 0;
		dao = template.getMapper(AdminDao.class);
		Admin admin = joinadmin.toAdmin();
		System.out.println("service : : : admin : : : " + admin);
		
		result = dao.insertAdmin(admin);
		System.out.println("service : : : result : : : " + result);
		return result;
	}
	
	
	
	
	//login
	public boolean login(String id, String pw, HttpServletRequest request) {
		boolean loginChk = false;
		
		dao = template.getMapper(AdminDao.class);
		Admin admin = null;
		admin = dao.selectAdById(id);
		
		if(admin != null && admin.matchPW(pw)) {
			loginChk = true;
			HttpSession session = request.getSession(true);
			session.setAttribute("adminInfo", admin.toLoginAdmin());
		}
		
		System.out.println("---login service---");
		System.out.println("admin" + admin);
		System.out.println("loginchk" + loginChk);
		
		return loginChk;
	}
}
