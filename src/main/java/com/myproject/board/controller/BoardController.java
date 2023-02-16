package com.myproject.board.controller;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;

@Controller
public class BoardController {

	@RequestMapping("/boardHome.do")
	public String moveBoardHome() {
		
		return "boardHome";
	}
	
}
