package com.ny.bit.member.service;
/*-------------------
 * 파일이름: JoinService.java
 * 파일설명: 가입 DAO 
 * 작성자: 김나연
 * 버전: 1.0.1
 * 생성일자: 2019-08-25 오후 07시 20분
 * 최종수정일자: 2019-08-25 오후 07시 20분
 * 최종수정자: 김나연
 * 최종수정내용: 최초 작성
 * -------------------*/



import org.mybatis.spring.SqlSessionTemplate;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.ny.bit.member.dao.MemberDao;
import com.ny.bit.member.model.JoinUser;
import com.ny.bit.member.model.User;

@Service(value = "joinService")
public class JoinService {
	
	@Autowired
	private SqlSessionTemplate template ;
	private MemberDao dao;
	
	
	@Autowired
	private MailService mailService;
	
	//join : user
	public int joinUser(JoinUser joinUser) {
		dao = template.getMapper(MemberDao.class);
		
		int result = 0;
		User user = joinUser.toUser();
		
		result = dao.insertUser(user);
		mailService.send(user);
		
		System.out.println("-------join service-------");
		System.out.println("result: "+ result + "mail send ok? " + mailService.send(user));
		
		return result;
	}
	
	//id check
//	public String idCheck(String id) {
//		dao = template.getMapper(MemberDao.class);
//		return dao.selectById(id) == null ? "Y" : "N";
//	}
	
}
