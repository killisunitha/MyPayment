package com.example.spring.repository;

import java.util.List;

import org.springframework.data.jpa.repository.JpaRepository;
import org.springframework.stereotype.Repository;

import com.example.spring.Entity.BankAccountEntity;

@Repository
public interface BankAccountRepository extends JpaRepository<BankAccountEntity,Integer>
{
	List<BankAccountEntity>findByUserUserId(int userId);
	
}