package com.myproject.board.controller;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;

import com.myproject.board.services.BoardService;

@Controller
public class BoardController {
	
	@Autowired
	private BoardService boardService;

	@RequestMapping("/boardHome.do")
	public String moveBoardHome(Model model) {
		
		return "board/boardHome.tiles";
	}
	
}
