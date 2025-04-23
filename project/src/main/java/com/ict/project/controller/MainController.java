package com.ict.project.controller;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.servlet.ModelAndView;

@Controller
public class MainController {
	
	@GetMapping("/start")
	public ModelAndView startProgram() {
		return new ModelAndView("MainPage/login");
	}
}
