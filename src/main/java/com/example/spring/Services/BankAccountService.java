package com.example.spring.Services;

import java.util.List;
import java.util.Optional;

import org.springframework.beans.factory.annotation.Autowired;

import com.example.spring.Entity.BankAccountEntity;
import com.example.spring.Entity.UserDetailsEntity;
import com.example.spring.repository.BankAccountRepository;

public class BankAccountService {

    @Autowired
    private BankAccountRepository bankAccountsRepository;

    // Save or update a bank account
    public BankAccountEntity saveBankAccount(BankAccountEntity account) {
        return bankAccountsRepository.save(account);
    }

    // Get all bank accounts for a user
    public List<BankAccountEntity> getBankAccountsByUser(UserDetailsEntity user) {
        return bankAccountsRepository.findByUser(user);
    }

	public Optional<UserDetailsEntity> findByUser_Username( String userName) {
		return bankAccountsRepository.findByUser(userName);
	}
}
