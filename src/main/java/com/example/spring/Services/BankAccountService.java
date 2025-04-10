package com.example.spring.Services;

import java.util.List;
import java.util.Optional;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.example.spring.Entity.BankAccountEntity;
import com.example.spring.Entity.UserDetailsEntity;
import com.example.spring.repository.BankAccountRepository;
@Service
public class BankAccountService {
	@Autowired      //update bank_account
	BankAccountRepository bankaccountRepository;
	public BankAccountEntity saveBankAccount(BankAccountEntity bankaccount) {
        return bankaccountRepository.save(bankaccount);
}
	 public List<BankAccountEntity> getBankAccountsByUser(UserDetailsEntity user) {
	        return bankaccountRepository.findByUser(user);
	    }
}