package com.example.spring.controller;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.GetMapping;

@Controller
public class BankAccountController {
	@GetMapping("/bankaccount")
	public String showBankdetails() {
		System.out.println("your Bank details");
		return "Bankaccount";
		}

}
