package com.myproject.join.controller;

import java.nio.charset.Charset;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.http.HttpHeaders;
import org.springframework.http.HttpStatus;
import org.springframework.http.MediaType;
import org.springframework.http.ResponseEntity;
import org.springframework.security.crypto.bcrypt.BCryptPasswordEncoder;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.CrossOrigin;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.annotation.ResponseBody;
import org.springframework.web.servlet.mvc.support.RedirectAttributes;

import com.myproject.join.services.JoinService;
import com.myproject.join.vo.JoinVO;

@Controller
public class joinController {
	
	@Autowired
	BCryptPasswordEncoder passEncoder;

	@Autowired(required=false)
	private JoinService joinService;

	@RequestMapping("/joinView.do")
	public String moveJoinView() {
		return "/join/joinForm.empty";
	}

	// id 중복체크
	@CrossOrigin(origins = "*")
	@GetMapping(value = "/idCheck.do")
	@ResponseBody
	public ResponseEntity<?> idCheck(@RequestParam("id") String id) throws Exception {

		try {
			String dupId = joinService.idCheck(id);
			
			HttpHeaders header = new HttpHeaders(); 
			header.setContentType(new MediaType("application", "json", Charset.forName("UTF-8")));
			
			return new ResponseEntity<>(dupId, header, HttpStatus.OK);
		} catch(Exception e) {
			return new ResponseEntity<>(null, new HttpHeaders(), HttpStatus.EXPECTATION_FAILED);
		}

	}

	// 회원가입
	@RequestMapping("/join.do")
	public String doJoin(JoinVO vo, RedirectAttributes RA) throws Exception {
		
		try  {
			vo.setPwd(passEncoder.encode(vo.getPwd()));
			boolean sucJoin = joinService.joinUser(vo) > 0 ? true : false;
			if(sucJoin) {
				RA.addFlashAttribute("msg", "회원가입에 성공하였습니다. 로그인화면으로 이동합니다.");
			} else {
				RA.addFlashAttribute("msg", "회원가입에 실패하였습니다. 잠시 후 다시 시도해 주세요.");
			}
						
		} catch(Exception e) {
			RA.addFlashAttribute("msg", "회원가입에 실패하였습니다. 개발자에게 문의하세요.");
		}

		return "redirect:/loginView.do";
	}
}
