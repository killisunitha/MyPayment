package com.example.spring.repository;

import java.util.List;
import java.util.Optional;

import org.springframework.data.jpa.repository.JpaRepository;
import org.springframework.stereotype.Repository;

import com.example.spring.Entity.BankAccountEntity;
import com.example.spring.Entity.UserDetailsEntity;

@Repository
	public interface BankAccountRepository extends JpaRepository<BankAccountEntity, Long> {
	    
	    // Custom query to get all bank accounts for a specific user
	    List<BankAccountEntity> findByUser(UserDetailsEntity user);
	    Optional<UserDetailsEntity> findByUser_Username(Long userId);


	}

