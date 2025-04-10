package com.example.spring.repository;

import java.util.List;
import java.util.Optional;

import org.springframework.data.jpa.repository.JpaRepository;
import org.springframework.stereotype.Repository;

import com.example.spring.Entity.BankAccountEntity;
import com.example.spring.Entity.UserDetailsEntity;

@Repository
	public interface BankAccountRepository extends JpaRepository<BankAccountEntity, Long> {
	List<BankAccountEntity> findByUser(UserDetailsEntity user);
	    
	}

