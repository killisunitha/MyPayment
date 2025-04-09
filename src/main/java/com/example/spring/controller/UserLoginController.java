package com.example.spring.controller;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestParam;

import com.example.spring.Entity.UserDetailsEntity;
import com.example.spring.Services.UserServices;

import jakarta.servlet.http.HttpSession;
@Controller
public class UserLoginController {
	@Autowired
	public UserServices userServices;
	@GetMapping("/login")
	public String showLoginPage() 
	 {
		System.out.println("logged Successfully");
		return "login";
	 }
	@PostMapping("/login")
	public String loginValidation(@RequestParam("userName") String userName,
	                              @RequestParam("password") String password,
	                              HttpSession session) {
	    UserDetailsEntity loggedInUser = userServices.autenticateUser(userName, password);

	    if (loggedInUser != null) {
	        
	        session.setAttribute("userName", loggedInUser.getUserName());

	        System.out.println("Login successful for: " + loggedInUser.getUserName());

	        return "redirect:/dashboard";
	    } else {
	        System.out.println("Login failed for username: " + userName);
	        return "login";
	    }
	}

}