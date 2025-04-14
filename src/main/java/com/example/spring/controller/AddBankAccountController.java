package com.example.spring.controller;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.PostMapping;

import com.example.spring.Entity.BankAccountEntity;
import com.example.spring.Entity.UserDetailsEntity;
import com.example.spring.Model.BankAccountDto;
import com.example.spring.Services.BankAccountService;
import com.example.spring.Services.UserServices;

import jakarta.servlet.http.HttpSession;

@Controller
public class AddBankAccountController {
	@Autowired
	BankAccountService bankService;
	@Autowired
	UserServices userService;

	@GetMapping("/addnewbankaccount")
	public String showAdddBankAccountForm() {
		return "addBankAccount";
	}
	@PostMapping("/addnewbankaccount")
	public String addingBankAccount(@ModelAttribute BankAccountDto bankAccDto, HttpSession session) {
		BankAccountEntity bankAccEntity = new BankAccountEntity();
		bankAccEntity.setAccountNumber(bankAccDto.getAccountNumber());
		bankAccEntity.setBankName(bankAccDto.getBankName());
	
		bankAccEntity.setBalance(bankAccDto.getBalance());
		bankAccEntity.setIfscCode(bankAccDto.getIfscCode());
		bankAccEntity.setBranchLocation(bankAccDto.getBranchLocation());
		bankAccEntity.setIsActive(bankAccDto.getIsActive());
		

		int userId=(int) session.getAttribute("userId");
		UserDetailsEntity loggedInUser = userService.getUserById(userId);

		if (loggedInUser!=null) {
		
			bankAccEntity.setUser(loggedInUser);

			bankService.addBankAccount(bankAccEntity);

		}

		return "redirect:/dashboard";
	}
	

}