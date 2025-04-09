package com.example.spring.repository;

import org.springframework.data.jpa.repository.JpaRepository;

import com.example.spring.Entity.UserProfile;

public interface UserProfileRepository extends JpaRepository<UserProfile, Integer> {
  
}
 


