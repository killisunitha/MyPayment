package com.example.spring.controller;

import java.util.Optional;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PostMapping;

import com.example.spring.Entity.UserDetailsEntity;
import com.example.spring.Services.UserServices;
import jakarta.servlet.http.HttpSession;

@Controller
public class DashboardController {
	@Autowired
	public UserServices userServices;
@GetMapping("/dashboard")
public String viewBankAccounts() {
	System.out.println("your Bank Accounts");
	return "AddBankAccount";
}
@PostMapping("/accountadd")
public String showDashBoardPage(HttpSession session, Model model) {
    String userName = (String) session.getAttribute("userName");

    if (userName != null) {
        Optional<UserDetailsEntity> profiledetails = userServices.getUserByuserName(userName);

        if (profiledetails.isPresent()) {
            UserDetailsEntity user = profiledetails.get();
            session.setAttribute("user", user); 
            model.addAttribute("user", user);

        }
    }

    return "dashboard";
}
}
