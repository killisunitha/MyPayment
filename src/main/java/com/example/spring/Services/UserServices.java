package com.example.spring.Services;

import java.util.List;
import java.util.Optional;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import com.example.spring.Entity.UserDetailsEntity;
import com.example.spring.repository.userDetails;
@Service
public class UserServices {
	@Autowired
	private userDetails userRepo;
	public void saveUser(UserDetailsEntity user) {
		userRepo.save(user);
	}
	public UserDetailsEntity autenticateUser(String userName ,String password) {
			return userRepo.findByUserNameAndPassword(userName, password);		
		}
	public Optional<UserDetailsEntity> getUserByuserName(String userName) {
		return userRepo.findByUserName(userName);
	}
<<<<<<< HEAD
	public UserDetailsEntity getUserById(int userId) {
		// TODO Auto-generated method stub
		return null;
	}
=======
	
	//public UserDetailsEntity getUserByuserName(String userName) {
		//return userRepo.findByUserName(userName);
	//}
>>>>>>> d9d97a79ce8ee72f32d1b4319f74a8545a22ba75

}
	
	


