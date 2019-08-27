package com.ny.bit.member.service;
/*-------------------
 * 파일이름: MailService.java
 * 파일설명: 멤버에게 확인용 메일보내주는 service
 * 작성자: 김나연
 * 버전: 1.0.1
 * 생성일자: 2019-08-26 오전 10시 07분
 * 최종수정일자: 2019-08-26 오전 10시 07분
 * 최종수정자: 김나연
 * 최종수정내용: 최초 작성
 * -------------------*/

import java.io.UnsupportedEncodingException;

import javax.mail.Message.RecipientType;
import javax.mail.MessagingException;
import javax.mail.internet.InternetAddress;
import javax.mail.internet.MimeMessage;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.mail.javamail.JavaMailSender;
import org.springframework.stereotype.Service;

import com.ny.bit.member.model.User;

@Service("mailService")
public class MailService {
	@Autowired
	private JavaMailSender sender;
	
	public int send(User user) {
		
		int result = 0;
		MimeMessage msg = sender.createMimeMessage();
		
		String name = user.getName() + " 님";
		String id = user.getId();
		String code = user.getCode();
		
		try {
			msg.setSubject("[BITCAMP] 본인 인증 메일",	"utf-8");
			
			String body = "BITCAMP 본인 인증 확인 메일입니다. 인증하기를 원하시면 아래의 인증하기 버튼을 눌러주세요<br>\n";
			body += "<a href=\"http://localhost:8080/bitcamp/verify?id="+id+"&code="+code+"\">인증하기 클릭</a>";
			
			msg.setText(body, "utf-8", "html");
			msg.addRecipient(RecipientType.TO, new InternetAddress(id,name,"utf-8"));
			
			sender.send(msg);
			
		} catch (MessagingException e) {
			e.printStackTrace();
		} catch (UnsupportedEncodingException e) {
			e.printStackTrace();
		}
		
		return 1;
	}
}
