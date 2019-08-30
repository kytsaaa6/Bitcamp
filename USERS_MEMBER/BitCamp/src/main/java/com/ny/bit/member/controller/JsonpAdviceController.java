package com.ny.bit.member.controller;

import java.io.ByteArrayOutputStream;
import java.io.IOException;
import java.io.InputStream;
import java.io.PrintWriter;
import java.net.MalformedURLException;
import java.net.URL;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import org.apache.cxf.helpers.IOUtils;
import org.json.simple.JSONObject;
import org.springframework.web.bind.annotation.CrossOrigin;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RestController;



@RestController
@RequestMapping("/api/dust")
public class JsonpAdviceController {
	
	@CrossOrigin
	@GetMapping
	public void getDustList(HttpServletRequest req , HttpServletResponse res
				) throws IOException {
		req.setCharacterEncoding("utf-8"); 
		res.setContentType("application/json; charset=utf-8");
		
		String address = "http://openapi.airkorea.or.kr/openapi/services/rest/ArpltnInforInqireSvc/getCtprvnRltmMesureDnsty?";
/*
 * var addr = 'http://openapi.airkorea.or.kr/openapi/services/rest/ArpltnInforInqireSvc/getCtprvnRltmMesureDnsty?';
        addr += 'sidoName=서울';
        addr += '&pageNo=1&numOfRows=100';
        addr += '&ServiceKey=xEfDrLtBppMSimLuY7P7yc%2B02hUSWNOqr0amdGZRhWRhIHyxRGPRxkhT8BATNim4JGD4W1EL8clRKGPsM4VBEA%3D%3D';
        addr += '&ver=1.3';
        addr += '&_returnType=json';
 * 
 * */
		String serviceKey = "ServiceKey=xEfDrLtBppMSimLuY7P7yc%2B02hUSWNOqr0amdGZRhWRhIHyxRGPRxkhT8BATNim4JGD4W1EL8clRKGPsM4VBEA%3D%3D";
		
		String param = "";	
		param += "sidoName=서울";
		param += "&pageNo=" + 1;
		param += "&numOfRows=" + 100;
		param += "&" + serviceKey;
		param += "&ver=1.3";
		param += "&_returnType=json";
		
		address += param;
		
		//makeJsonObject(rep, address);
		
		URL url = new URL(address); 
		
		System.out.println("여기 오니 03  "+address); //만들어진 url 확인
		
		InputStream in = url.openStream(); 
		ByteArrayOutputStream bos = new ByteArrayOutputStream();
		IOUtils.copy(in, bos);
		
		in.close();
		bos.close();
		
		String mbos = bos.toString("utf-8");
		
		byte[] b = mbos.getBytes("utf-8");
		String str = new String(b, "utf-8");
		
		PrintWriter out = res.getWriter();
		out.println(str);
		
		JSONObject json = new JSONObject();
		System.out.println("여기 오니 04 "+json);
		
		json.put("data", str);
		System.out.println("여기 오니 05 "+json);
		
		System.out.println("여기 오니 06 "+str);
		
	}

}
