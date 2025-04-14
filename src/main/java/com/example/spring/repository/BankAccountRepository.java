package com.example.spring.repository;

import java.util.List;

import org.springframework.data.jpa.repository.JpaRepository;
import org.springframework.stereotype.Repository;

import com.example.spring.Entity.BankAccountEntity;

@Repository
<<<<<<< HEAD
public interface BankAccountRepository extends JpaRepository<BankAccountEntity,Integer>
{
	List<BankAccountEntity>findByUserUserId(int userId);
	
}
=======
	public interface BankAccountRepository extends JpaRepository<BankAccountEntity, Long> {
	List<BankAccountEntity> findByUser(UserDetailsEntity user);
	    
	}

>>>>>>> d9d97a79ce8ee72f32d1b4319f74a8545a22ba75
