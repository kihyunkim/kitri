package com.mywatch.project.controller;

import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;

@Controller
public class MainController {
	public MainController() {
	}

	@RequestMapping(value = "main.do", method = RequestMethod.GET)
	public String main_page(Model model) throws Exception {
		model.addAttribute("member");
		return "common/main";
	}
}
