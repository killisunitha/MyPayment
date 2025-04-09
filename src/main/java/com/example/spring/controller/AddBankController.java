package com.example.spring.controller;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.RequestMapping;

@Controller
public class AddBankController {
	@GetMapping("/bankaccount")
		public String viewBankAccounts() {
			System.out.println("your Bank Accounts");
			return "AddBankAccount";
		}
	}


