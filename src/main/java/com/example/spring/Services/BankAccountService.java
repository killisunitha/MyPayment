package com.example.spring.Services;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.example.spring.Entity.BankAccountEntity;
import com.example.spring.repository.BankAccountRepository;
<<<<<<< HEAD

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

=======
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
>>>>>>> d9d97a79ce8ee72f32d1b4319f74a8545a22ba75
