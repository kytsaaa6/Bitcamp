package com.ny.bit.member.service;

import javax.inject.Inject;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpSession;

import org.mybatis.spring.SqlSessionTemplate;
import org.springframework.stereotype.Service;

import com.ny.bit.member.dao.MemberDao;
import com.ny.bit.member.model.User;

@Service("loginService")
public class LoginService {
	
	
	@Inject
	private SqlSessionTemplate template;
	private MemberDao dao;
	
	public int login(String id, String pw, HttpServletRequest request ) {
		int loginChk = 0;
		
		dao = template.getMapper(MemberDao.class);
		User user = null;
		
		user = dao.selectById(id);
//		System.out.println("selectbyId login" + user);
//		System.out.println(user.matchPW(pw));
//		System.out.println(!pw.isEmpty());
		
		if(user != null && user.matchPW(pw)) {
			//현재X			
			if(user.getOut() == 'Y') {
				loginChk = 1;
			
			} else if(user.getVerify() == 'N') {
				//인증X
				loginChk = 2;

			} else if(user.getVerify() == 'Y') {
				//인증O
				loginChk = 3;
				HttpSession session = request.getSession(true);
				session.setAttribute("loginInfo", user.toLoginUser());
				System.out.println("service: 세션확인::" +user.toLoginUser());
				System.out.println(session);
				System.out.println(session.getAttribute("loginInfo"));
			}
		}
//		System.out.println("---login service---");
//		System.out.println("user" + user);
//		System.out.println("loginchk" + loginChk);
		
		return loginChk;
	}
}
