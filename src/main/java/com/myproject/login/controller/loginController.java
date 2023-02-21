package com.myproject.login.controller;

import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;

import com.myproject.join.vo.JoinVO;

@Controller
public class loginController {
	
	@RequestMapping("/loginView.do")
	public String moveLoginView() {
		return "login/loginForm.empty";
	}
	
	@RequestMapping("/login.do")
	public String doLogin(JoinVO vo, Model model) throws Exception{
		
		try {
			
		}catch(Exception e) {
			
		}
		
		return "moveHome";
	}
	
}
