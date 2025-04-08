package com.example.spring.controller;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;

@Controller
public class ViewBankDetailsController {
@RequestMapping("/BankDetails")
public String bankdetails() {
	System.out.println("your BankDetails");
	return "BankDetails";
}
}
