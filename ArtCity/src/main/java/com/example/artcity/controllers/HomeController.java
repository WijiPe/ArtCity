package com.example.artcity.controllers;

import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;

@Controller
public class HomeController {
	
	@GetMapping("/art-city")
	public String welcome(Model model) {


		return "welcome.jsp";
	}

}
