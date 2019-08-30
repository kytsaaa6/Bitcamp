package com.bitcamp.rest.kakao;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;

@Controller
public class KakapayForm {

	@RequestMapping("kakao")
	public String kakaoForm() {
		
		return "kakao/kakaoPay";
	}
}
