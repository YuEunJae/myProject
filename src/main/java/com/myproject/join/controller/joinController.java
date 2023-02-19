package com.myproject.join.controller;

import java.nio.charset.Charset;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.http.HttpHeaders;
import org.springframework.http.HttpStatus;
import org.springframework.http.MediaType;
import org.springframework.http.ResponseEntity;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.CrossOrigin;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.annotation.ResponseBody;

import com.myproject.join.services.JoinService;

@Controller
public class joinController {

	@Autowired
	private JoinService joinService;

	@RequestMapping("/joinView.do")
	public String moveJoinView() {
		return "/join/joinForm";
	}

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

	@RequestMapping("/join.do")
	public String doJoin() {

		return "/login/loginView.do";
	}
}
