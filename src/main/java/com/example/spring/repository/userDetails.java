package com.example.spring.repository;

import java.util.Optional;

import org.springframework.data.jpa.repository.JpaRepository;

import com.example.spring.Entity.TransactionEntity;
import com.example.spring.Entity.UserDetailsEntity;

public interface userDetails extends JpaRepository<UserDetailsEntity,Integer>{
	
	 public UserDetailsEntity findByUserNameAndPassword(String userName,String password);

	public Optional<UserDetailsEntity> findByUserName(String userName);
	//public Optional<UserDetailsEntity> findById(long userId);
<<<<<<< HEAD
=======

	public UserDetailsEntity findByUsername(String username);
>>>>>>> d9d97a79ce8ee72f32d1b4319f74a8545a22ba75

}
