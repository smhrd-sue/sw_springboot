package com.lgdx.controller;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestParam;

import com.lgdx.entity.Board;
import com.lgdx.service.BoardService;

@Controller
public class BoardController {
	
	@Autowired
	private BoardService service;

	@GetMapping("/boardList.do")
	public String boardList(Model model) {
		List<Board> list = service.boardList();
		System.out.println(list.toString());
		model.addAttribute("list", list);
		return "boardList";
	}
	
	@GetMapping("/boardContents.do")
	public String boardContents(@RequestParam("idx") Long idx, Model model) {
		service.boardCount(idx);
		Board vo = service.boardContents(idx);
		model.addAttribute("vo", vo);
		model.addAttribute("ln", "\n");
		return "boardContents";
	}
	
	@GetMapping("/boardInsert.do")
	public String boardInsert() {
		return "boardInsert";
	}
	
	@PostMapping("/boardInsert.do")
	public String boardInsert(Board vo) {
		service.boardInsert(vo);
		return "redirect:/boardList.do";
	}
	
	@GetMapping("/boardDelete.do")
	public String boardDelete(@RequestParam("idx") Long idx) {
		service.boardDelete(idx);
		return "redirect:/boardList.do";
	}
	
	@GetMapping("/boardUpdate.do")
	public String boardUpdate(@RequestParam("idx") Long idx, Model model) {
		Board vo = service.boardContents(idx);
		model.addAttribute("vo", vo);
		return "boardUpdate";
	}
	
	@PostMapping("/boardUpdate.do")
	public String boardUpdate(Board vo) {
		service.boardUpdate(vo);
		return "redirect:/boardList.do";
	}
	
	
	
}











