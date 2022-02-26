package com.example.artcity.controllers;

import javax.servlet.http.HttpSession;
import javax.validation.Valid;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.validation.BindingResult;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.PostMapping;

import com.example.artcity.models.LoginUser;
import com.example.artcity.models.User;
import com.example.artcity.services.UserService;

@Controller
public class UserController {
	
	@Autowired
	private UserService userService;
	
	@GetMapping("/")
	public String login(HttpSession session, Model model) {
		if (session.getAttribute("user_id") != null) {
				return "redirect: /welcome";
	}
		model.addAttribute("newUser", new User());
		model.addAttribute("newLogin", LoginUser());
		return "login.jsp";
	
	@PostMapping("/register")
	public String register(@Valid @ModelAttribute("newUser") User newUser, BindingResult result, Model model, HttpSession session) {
		userService.register(newUser, result);
		if ( result.hasErrors()) {
			model.addAttribute("newlogin", new LoginUser());
			return "register.jsp";
		}
			session.setAttribute("user", newUser);
			return "redirect:/welcome";
	}
	@PostMapping("/login")
	public String login(@Valid @ModelAttribute("newlogin") LoginUser newLogin, BindingResuilt result, Model model, HttpSession session) {
		User user = userService.login(newLogin, result);
		
	if (result.hasErrors()) {
		model.addAttribute("newUser", new User());
		return "login.jsp";
	}
	}
}
		


