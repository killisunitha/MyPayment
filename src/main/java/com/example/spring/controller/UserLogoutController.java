package com.example.spring.controller;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.GetMapping;

@Controller
public class UserLogoutController {
@GetMapping("/logout")
	public String userLogout() {
		
		System.out.println("logout Successfully");
		return "logout";
	}
	
}

