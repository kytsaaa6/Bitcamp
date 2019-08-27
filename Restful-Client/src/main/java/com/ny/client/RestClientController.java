package com.ny.client;

import java.util.Arrays;
import java.util.HashMap;

/** restful 구성도
 * view에서 호출 url을 RestClient의 mapping된 url로 설정 ->
 * restclient에서 받아옴, 
 * REST templete을 사용해서 서버의 url로 다시 연결
 * 즉 서버의 url로 직접 이동이 아닌 restclient를 통해 간접접근(우회)
 * */


import java.util.List;
import java.util.Map;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.CrossOrigin;
import org.springframework.web.bind.annotation.RequestBody;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.annotation.ResponseBody;
import org.springframework.web.client.RestTemplate;

import com.ny.client.model.JoinUser;
import com.ny.client.model.User;

@Controller
public class RestClientController {
	
	@RequestMapping("/list")
	@ResponseBody
	@CrossOrigin
	public List<User> getAllList(){
		RestTemplate templete = new RestTemplate();
		User[] users = templete.getForObject("http://localhost:8080/bitcamp/rest-users", User[].class);
		
		List<User> userlist = Arrays.asList(users);
		
		for(User m : userlist) {
			System.out.println(m);
		}
		
		return userlist;
	}
	
	@RequestMapping(value = "/join", method = RequestMethod.POST)
	@ResponseBody
	@CrossOrigin
	public User getJoin(@RequestBody JoinUser joinuser) {
		RestTemplate templete = new RestTemplate();
		User user = 
				templete.postForObject("http://localhost:8080/bitcamp/rest-users", joinuser, User.class);
		System.out.println("rc_ join test:::user:::" + user);		
//				templete.postForLocation("http://localhost:8080/bitcamp/rest/users", JoinUser.class);
				/*templete.postForObject("http://localhost:8080/bitcamp/rest/users", new User(), User.class);*/
		return user;
	}
	
	//restful put 쓰고싶은데 ,,,ㅠㅠㅠ
//	@CrossOrigin
//	@RequestMapping(value = "/verify")
//	public String getVerify(@RequestParam("id")String id, @RequestParam("code") String code) {
//		String str = "";
//		RestTemplate templete = new RestTemplate();
//		Map<String, String> map = new HashMap<String, String>();
//		templete.put("", new Object(){id, code});
//		return str;
//	}
	
}
