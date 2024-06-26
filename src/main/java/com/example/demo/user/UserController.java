package com.example.demo.user;

import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;

@Controller
public class UserController {

	/**
	 * sign in
	 */
	@GetMapping("/sign_in_view")
	public String signInView(Model model) {
		model.addAttribute("viewName", "user/signIn");
		return "template/layout";
	}
	
	@GetMapping("/menu")
	public String menuView(Model model) {
		model.addAttribute("viewName", "user/menu");
		return "template/layout";
	}
	
}
