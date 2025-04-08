package com.example.spring.controller;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;

@Controller
public class AddBankController {
	@RequestMapping("/Bank")
		public String viewBankAccounts() {
			System.out.println("your Bank Accounts");
			return "AddBankAccount";
		}
	}


