package com.bitcamp.kym.booking.kakaopay;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestParam;

import com.bitcamp.kym.booking.service.KakaoPay;

@Controller
public class KakaopayController {

	@Autowired
    private KakaoPay kakaopay;
    
    
    @GetMapping("/rest/kakaoPay")
    public void kakaoPayGet() {
        
    }
    
    @PostMapping("/rest/kakaoPay")
    public String kakaoPay() {
        System.out.println("kakaoPay post............................................");
        System.out.println(kakaopay.kakaoPayReady());
        return "redirect:" + kakaopay.kakaoPayReady();
 
    }
  
    @GetMapping("/rest/kakaoPaySuccess")
    public void kakaoPaySuccess(@RequestParam("pg_token") String pg_token, Model model) {
        System.out.println("kakaoPaySuccess get............................................");
        System.out.println("kakaoPaySuccess pg_token : " + pg_token);
        
        model.addAttribute("info", kakaopay.kakaoPayInfo(pg_token));
    }
}
