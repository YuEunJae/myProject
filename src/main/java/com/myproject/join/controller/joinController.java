package com.myproject.join.controller;

import org.springframework.http.ResponseEntity;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.ResponseBody;

@Controller
public class joinController {
	
	@RequestMapping("/joinView.do")
	public String moveJoinView() {
		return "/join/joinForm";
	}
	
	@RequestMapping("/idCheck.do")
	@ResponseBody
	public ResponseEntity<String> idCheck(String id) {
		
		ResponseEntity<String> res = new ResponseEntity(null);
		
		return res;
	}
	
	@RequestMapping("/join.do")
	public String doJoin() {
		
		
		
		return "/login/loginView.do";
	}
}
