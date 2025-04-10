package com.example.spring.repository;

import java.util.Optional;

import org.springframework.data.jpa.repository.JpaRepository;

import com.example.spring.Entity.TransactionEntity;
import com.example.spring.Entity.UserDetailsEntity;

public interface userDetails extends JpaRepository<UserDetailsEntity,Long>{
	
	 public UserDetailsEntity findByUserNameAndPassword(String userName,String password);

	public Optional<UserDetailsEntity> findByUserName(String userName);
	//public Optional<UserDetailsEntity> findById(long userId);

	public UserDetailsEntity findByUsername(String username);

}
