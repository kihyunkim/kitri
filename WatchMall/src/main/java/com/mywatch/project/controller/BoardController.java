package com.mywatch.project.controller;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;

import com.mywatch.project.dao.BoardDao;
import com.mywatch.project.dto.Board;

@Controller
public class BoardController {
	public BoardController() {
	}
	
	@Autowired
	BoardDao dao;
	
	public void setDao(BoardDao dao) {
		this.dao = dao;
	}
	
	@RequestMapping(value = "list_board.do", method=RequestMethod.GET)
	public String list_page(Model model, Board board) {
		List<Board> list = dao.board_list(board);
		
		model.addAttribute("list", list);
		
		System.out.println("123123123123123");
		
		return "board/list";
	}
}
