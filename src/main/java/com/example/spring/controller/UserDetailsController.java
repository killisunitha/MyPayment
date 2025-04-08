package com.example.spring.controller;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.web.bind.annotation.RequestMapping;

import com.example.spring.Services.UserServices;

public class UserDetailsController {
		@Autowired
		private UserServices userDetails;
		@RequestMapping("/testing")
		public String viewUser() {
			
			System.out.println("user details");
			return "login";
		}
		}


