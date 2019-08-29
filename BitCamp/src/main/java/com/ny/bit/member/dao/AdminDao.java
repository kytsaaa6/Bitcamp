package com.ny.bit.member.dao;
/*-------------------
 * 파일이름: MemberDao.java
 * 파일설명: 멤버 관련 DAO 
 * 작성자: 김나연
 * 버전: 1.0.1
 * 생성일자: 2019-08-25 오후 07시 20분
 * 최종수정일자: 2019-08-25 오후 07시 20분
 * 최종수정자: 김나연
 * 최종수정내용: 최초 작성
 * -------------------*/

import java.util.List;
import java.util.Map;

import com.ny.bit.member.model.Admin;
import com.ny.bit.member.model.User;

public interface AdminDao {
	
	/*-------- admin --------*/
	public Admin selectAdById(String id);
	public int insertAdmin(Admin admin);

	
}
