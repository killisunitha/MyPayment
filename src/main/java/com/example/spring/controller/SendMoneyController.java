package com.example.spring.controller;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.GetMapping;

@Controller
public class SendMoneyController {
	@GetMapping("/sendmoney")
	public String sendMoney() {
		System.out.println("user send money");
		return "sendmoney";
	}

}
