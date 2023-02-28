package com.myproject.board.controller;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.servlet.mvc.support.RedirectAttributes;

import com.myproject.board.services.BoardService;
import com.myproject.board.vo.BoardVO;

@Controller
public class BoardController {
	
	@Autowired
	private BoardService boardService;

	@RequestMapping("/boardHome.do")
	public String moveBoardHome(Model model) {
		
		return "board/boardHome.tiles";
	}
	
	@RequestMapping("/boardRegist.view")
	public String boardRegistView(Model model) {
		
		return "board/boarRegistView.tiles";
	}
	
	@RequestMapping("/boardDetail.view")
	public String boardUpdateView(Model model) {
		
		return "board/boardDetail.tiles";
	}
	
	@RequestMapping("/boardRegist.do")
	public String boardRegist(BoardVO vo, RedirectAttributes RA) {
		
		
		return "redirect:/boardHome.do";
	}
	
	@RequestMapping("/boardUpdate.do")
	public String boardUpdate(BoardVO vo, Model model) {
		
		return "board/boardDetail.tiles";
	}
	
	@RequestMapping("/boardDelete.do")
	public String boardDelete(RedirectAttributes RA) {
		
		
		return "redirect:/boardHome.do";
	}
	
}
