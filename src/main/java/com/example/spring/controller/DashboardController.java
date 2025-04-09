package com.example.spring.controller;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.GetMapping;

@Controller
public class DashboardController {
@GetMapping("/dashboard")
public String userDashboard() {
	System.out.println("your dasboard");
	return "dashboard";
}
}
