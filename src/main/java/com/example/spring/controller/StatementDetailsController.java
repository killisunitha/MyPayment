package com.example.spring.controller;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.GetMapping;

@Controller
public class StatementDetailsController {
	@GetMapping("/statementdetails")
public String viewStatements()
{
		System.out.println("your Statement details");
		return "Statementdetails";
}
}
