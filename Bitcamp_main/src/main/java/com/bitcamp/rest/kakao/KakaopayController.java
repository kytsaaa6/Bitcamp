package com.bitcamp.rest.kakao;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.CrossOrigin;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.annotation.ResponseBody;
import org.springframework.web.bind.annotation.RestController;


@Controller
public class KakaopayController {

	@Autowired
    private KakaoPay kakaopay;
    
//    
//    @GetMapping("/rest/kakaoPay")
//    public void kakaoPayGet() {
//        
//    }
//    
	@CrossOrigin
	@ResponseBody
    @GetMapping("/rest/kakaoPay")
    public String kakaoPay() {
        System.out.println("kakaoPay post............................................");
        
        return kakaopay.kakaoPayReady();
 
    }
  
    @GetMapping("/rest/kakaoPaySuccess")
    public void kakaoPaySuccess(@RequestParam("pg_token") String pg_token, Model model) {
        System.out.println("kakaoPaySuccess get............................................");
        System.out.println("kakaoPaySuccess pg_token : " + pg_token);
        
        model.addAttribute("info", kakaopay.kakaoPayInfo(pg_token));
    }
}
