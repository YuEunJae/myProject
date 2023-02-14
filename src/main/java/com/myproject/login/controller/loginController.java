package com.myproject.login.controller;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;

@Controller
public class loginController {
	
	@RequestMapping("/loginView.do")
	public String moveLoginView() {
		return "loginForm";
	}
	
	@RequestMapping("/login.do")
	public String doLogin() {
		
		return "moveHome";
	}
	
}
