package com.example.spring.controller;

import java.util.Optional;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PostMapping;
import com.example.spring.Entity.UserDetailsEntity;
import com.example.spring.Services.BankAccountService;
import com.example.spring.Services.UserServices;

import jakarta.servlet.http.HttpSession;

@Controller
public class AddBankController {
	@Autowired
	BankAccountService bankaccountservice;
	@GetMapping("/accountadd")
		public String addBankAccounts() {
			System.out.println("your  added Bank Accounts");
			return "AddBankAccount";
		}
	@PostMapping("/accountadd")
	public String addBankAccounts(HttpSession session,Model model) {
	    Long userId = (Long) session.getAttribute("userId");

	    if (userId != null) {
	        Optional<UserDetailsEntity> useraccount = bankaccountservice.findByUserId(userId);
	   
	        if (useraccount.isPresent()) {
	            UserDetailsEntity user = useraccount.get();
	            session.setAttribute("user", user); 
	            model.addAttribute("user", user);

	        }
	    }

return "dashboard";
	}
	}
