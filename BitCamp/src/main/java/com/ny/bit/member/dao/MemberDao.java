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

import com.ny.bit.member.model.User;

public interface MemberDao {
//	public User selectById(String id); //회원정보가져오기(login + update + delete시)
	public User selectById(int idx); //회원정보가져오기(login + update + delete시)
	public int insertUser(User user) ; //회원가입
//	public int selectTotalCount(Map<String, Object> params); //회원총인원
	public List<User> selectAllList(); //전체회원리스트가져오기
	public int updateUser(User user); //업데이트-수정
	public int updateUserOut(int idx); //업데이트-회원탈퇴처리
	
	public int updateVerify(String id, String code); //이메일인증verify 처리
		
}
