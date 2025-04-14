package com.example.spring.Services;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.example.spring.Entity.BankAccountEntity;
import com.example.spring.repository.BankAccountRepository;

@Service
public class BankAccountService {
	
	    @Autowired
	       BankAccountRepository bankRepo;
			public List<BankAccountEntity> getAccountsByUserId(int userId) {
			    return bankRepo.findByUserUserId(userId);
			}
			
			public void addBankAccount(BankAccountEntity bankAccEntity) {
				bankRepo.save(bankAccEntity);
				// TODO Auto-generated method stub
				
			}

		}

