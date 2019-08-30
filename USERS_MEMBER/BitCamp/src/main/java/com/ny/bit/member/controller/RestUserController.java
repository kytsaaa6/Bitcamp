package com.ny.bit.member.controller;

import java.util.List;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.http.HttpStatus;
import org.springframework.http.ResponseEntity;
import org.springframework.web.bind.annotation.CrossOrigin;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.PutMapping;
import org.springframework.web.bind.annotation.RequestBody;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.annotation.ResponseBody;
import org.springframework.web.bind.annotation.RestController;

import com.ny.bit.member.model.EditUser;
import com.ny.bit.member.model.JoinUser;
import com.ny.bit.member.model.LoginReqUser;
import com.ny.bit.member.model.LoginUser;
import com.ny.bit.member.model.User;
import com.ny.bit.member.service.DeleteService;
import com.ny.bit.member.service.EditService;
import com.ny.bit.member.service.JoinService;
import com.ny.bit.member.service.ListService;
import com.ny.bit.member.service.LoginService;
import com.ny.bit.member.service.VerifyService;

@RestController
@RequestMapping("/rest-users")
public class RestUserController {
	
	@Autowired
	private ListService listService;
	
	@Autowired
	private JoinService joinService;
	
	@Autowired
	private VerifyService verifyService;
	
	@Autowired
	private DeleteService delService;
	
	@Autowired
	private EditService editService;
	
	@Autowired
	private LoginService loginService;
	
	//list
	@CrossOrigin
	@GetMapping
	public ResponseEntity<List<User>> getAllList(){
		return new ResponseEntity<List<User>>(listService.getAllList(), HttpStatus.OK);
	}
	
	//join
	@CrossOrigin
	@PostMapping
	public ResponseEntity<String> getJoin(@RequestBody JoinUser user){
		int result = joinService.joinUser(user);
		return new ResponseEntity<String>(result>0?"success":"fail", HttpStatus.OK);
	}
	
	//User 정보 가져오기
	@CrossOrigin
	@GetMapping(value = "/{idx}")
	public ResponseEntity<User> getUser(@PathVariable("idx") int idx){
		
		User user = editService.getOne(idx);
		return new ResponseEntity<User>(user, HttpStatus.OK);
	}

	//User 정보 가져오기: session에서 불러올 때
	@CrossOrigin
	@GetMapping(value = "/session" )
	public ResponseEntity<User> getUser(@RequestParam("id")String id){
		System.out.println(id);
		User user = editService.getOne(id);
		System.out.println(user);
		return new ResponseEntity<User>(user, HttpStatus.OK);
	}
	
	
	//user 수정
	@CrossOrigin
	@PutMapping("/{idx}")
	public ResponseEntity<String> updateUser(@PathVariable("idx") int idx, @RequestBody EditUser user){
		return new ResponseEntity<String>(editService.getEdit(user) > 0 ? "success":"fail", HttpStatus.OK);
		
	}
	
	//user 삭제
	@CrossOrigin
	@PutMapping("/{idx}/del")
	public ResponseEntity<String> updateUser(@PathVariable("idx") int idx){
		return new ResponseEntity<String>(delService.delete(idx) > 0 ? "success":"fail", HttpStatus.OK);
		
	}
	
	
	//login
	@CrossOrigin
	@PostMapping(value = "/login")
	public ResponseEntity<String> loginUser(@RequestBody LoginReqUser user ,
			/* @RequestParam("id")String id, @RequestParam("pw") String pw, */ 
									HttpServletRequest request) {
		String result = "";
		String id = user.getId();
		String pw = user.getPw();
		
		System.out.println("--controller id ---" + id);
		System.out.println("--controller pw ---" + pw);
		
		int loginChek = loginService.login(id, pw, request);
		switch (loginChek) {
		/* result : 
		 * 0 : id pw 틀림
		 * 1 : 탈퇴한 회원
		 * 2 : 이메일 미인증
		 * 3 : 인증까지 완료 
		 * */
		
			case 0:
				result = "fail";
				break;
			case 1:
				result = "out";
				break;
			case 2:
				result = "yet";
				break;
			case 3:
				//idx 가져오기
				int idx = editService.getOne(id).getIdx();

//				result = id;
				result = String.valueOf(idx);
				System.out.println("--controller result ---" + result);
				break;
		}
		System.out.println("cont result / login:   " + result + loginChek);
		
		/*session check*/
		HttpSession session = request.getSession();
		System.out.println("session check: " + session.getAttribute("loginInfo"));
		
		return new ResponseEntity<String>(result, HttpStatus.OK);
	}
	
	
	//logout
	@CrossOrigin
	@GetMapping("/logout")
	public ResponseEntity<String> logoutUser(HttpSession session){
		session.invalidate();
		return new ResponseEntity<String>("OK",HttpStatus.OK);
	}
	
	
//	@RequestMapping()
}
