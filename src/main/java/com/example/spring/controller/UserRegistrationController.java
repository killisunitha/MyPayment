package com.example.spring.controller;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.PostMapping;

import com.example.spring.Entity.UserDetailsEntity;
import com.example.spring.Model.UserRegistrationModel;
import com.example.spring.Services.UserServices;

@Controller
public class UserRegistrationController {
	@Autowired
	UserServices userservice;
	@GetMapping("/register")
	public String showform(Model model)
	{
		model.addAttribute("user",new UserDetailsEntity());
	   return "Registration";
	}
	
	@PostMapping("/register")
    public String registerUser(@ModelAttribute UserRegistrationModel userregmodel)
	{
		 UserDetailsEntity userentity=new UserDetailsEntity();
		 userentity.setFullName(userregmodel.getFullName());
	       userentity.setPhoneNumber(userregmodel.getPhoneNumber());
	       userentity.setEmail(userregmodel.getEmail());
	       userentity.setAddress(userregmodel.getAddress());
	       userentity.setUserName(userregmodel.getUserName());
	       userentity.setPassword(userregmodel.getPassword());
	       userentity.setConfirmPassword(userregmodel.getConfirmPassword());
	       
       userservice.saveUser(userentity);
        return "login"; 
    } 
	
}