package com.example.spring.controller;

import java.util.Optional;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestParam;

import com.example.spring.Entity.BankAccountEntity;
import com.example.spring.Entity.UserDetailsEntity;
import com.example.spring.Model.BankDetailsModel;
import com.example.spring.Services.BankAccountService;
import com.example.spring.Services.UserServices;
import com.example.spring.repository.userDetails;

import jakarta.servlet.http.HttpSession;

@Controller
public class AddBankController {
	@Autowired
	BankAccountService bankaccountservice;
	@Autowired
	userDetails userRepo;
	@Autowired
	BankAccountEntity bankaccount;
	@GetMapping("/accountadd")
		public String addBankAccounts() {
			System.out.println("your  added Bank Accounts");
			return "AddBankAccount";
}


@PostMapping("/addbankaccount")
public String addBankAccount(@ModelAttribute BankDetailsModel bankaccount, @RequestParam("action") String action,
                             HttpSession session,
                             Model model) {

    String username = (String) session.getAttribute("userName");

    if (username == null) {
        model.addAttribute("error", "User not logged in");
        return "login";
    }

    UserDetailsEntity user = userRepo.findByUsername(username);
    if (user == null) {
        model.addAttribute("error", "User not found");
        return "login";
    }

    BankAccountEntity bankAccEntity = new BankAccountEntity();
    bankAccEntity.setBankAccountId(bankaccount.getBankAccountId());
    bankAccEntity.setBankName(bankaccount.getBankName());
    bankAccEntity.setBranchName(bankaccount.getBranchName());
    bankAccEntity.setIfscCode(bankaccount.getIfscCode());
    bankAccEntity.setAccountStatus(bankaccount.getAccountStatus());
    bankAccEntity.setBankBalance(bankaccount.getBankBalance());
    bankAccEntity.setUser(user);
     
    bankaccountservice.saveBankAccount(bankAccEntity);
    
    if ("saveAndClose".equals(action)) {
        return "redirect:/dashboard";
    }
    
    model.addAttribute("bankmodel", new BankDetailsModel());
    model.addAttribute("message", "Bank account added successfully.");
    return "redirect:/bankaccount/addbankaccount";

}
}




