package com.myproject.login.controller;

import java.util.HashMap;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpSession;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.security.crypto.bcrypt.BCryptPasswordEncoder;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;

import com.myproject.join.vo.JoinVO;
import com.myproject.login.services.LoginService;
import com.myproject.util.SessionConfig;

@Controller
public class loginController {
	
	@Autowired
	BCryptPasswordEncoder passEncoder;
	
	@Autowired
	private LoginService loginService;
	
	@RequestMapping("/loginView.do")
	public String moveLoginView() {
		return "login/loginForm.empty";
	}
	
	@RequestMapping(value = "/login.do", method = RequestMethod.POST)
	public String doLogin(JoinVO vo, Model model, HttpServletRequest req) throws Exception{
		
		try {
			
			boolean isLock = loginService.getIsLock(vo.getId()).equals("Y") ? true : false;
			if(isLock) { // 아이디 잠금상태
				model.addAttribute("msg", "해당 아이디는 잠금상태입니다. 관리자에게 문의하세요.");
				return "login/loginForm.empty";
			}

			HashMap userInfo = loginService.loginUser(vo);
			boolean sucLogin = passEncoder.matches(vo.getPwd(), userInfo.get("PWD").toString());
			if(sucLogin) { // 로그인 성공
				
				HttpSession session = req.getSession();
				SessionConfig.getSessionidCheck("id", userInfo.get("ID").toString());
				session.setAttribute("id", userInfo.get("ID"));
				session.setAttribute("email", userInfo.get("EMAIL"));
				model.addAttribute("msg", "환영합니다. " + userInfo.get("ID") + "님");
				return "redirect:/boardHome.tiles";
				
			} else {
				
				int pwdMissCnt = Integer.parseInt(userInfo.get("PWD_MISS").toString());
				if(pwdMissCnt < 5) {
					loginService.plusPwdMiss(userInfo.get("ID").toString());
					if(pwdMissCnt == 4) {
						loginService.setIsLock(userInfo.get("ID").toString());
					}
				}
				model.addAttribute("msg", "아이디 및 비밀번호를 확인해 주세요.");
				return "login/loginForm.empty";
			}
			
		}catch(Exception e) {
			model.addAttribute("msg", "로그인 도중 오류가 발생하였습니다. 개발자에게 문의하세요.");
			return "login/loginForm.empty";
		}
	}
	
	@RequestMapping(value = "/logout.do")
	public String logOut(HttpServletRequest req) {
		
		// 세션컨피그에 저장된 세션 제거 및 세션데이터 초기화
		SessionConfig.logoutSessionid(req.getSession());
		
		return "redirect:/loginView.do";
	}
	
}
