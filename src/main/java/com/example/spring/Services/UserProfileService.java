package com.example.spring.Services;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.example.spring.Entity.UserProfile;
import com.example.spring.repository.UserProfileRepository;

@Service
public class UserProfileService {
    @Autowired
    private UserProfileRepository userprofileRepository;

    public boolean updateUser(UserProfile user) {
        try {
            userprofileRepository.save(user); // save() automatically updates if ID exists
            return true;
        } catch (Exception e) {
            e.printStackTrace();
            return false;
        }
    }
}

