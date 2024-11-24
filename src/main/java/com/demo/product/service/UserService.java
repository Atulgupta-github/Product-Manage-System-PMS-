package com.demo.product.service;

import com.demo.product.model.User;
import com.demo.product.repository.UserRepository;

import jakarta.transaction.Transactional;

import java.util.List;
import java.util.Optional;

import org.springframework.beans.factory.annotation.Autowired;


import org.springframework.stereotype.Service;


@Transactional
@Service
public class UserService {

    @Autowired
    private UserRepository userRepository;

    public boolean saveUser(User user) {
    	boolean status =false;
    	try {
    		
    		userRepository.save(user);
    		status=true;
    	}catch (Exception e) {
			e.printStackTrace();
		}
    	
    	return status;
        
    }
    
    public boolean authenticateUser(String userName, String password) {
    	boolean ispresent=false;
    	try {
    		ispresent=userRepository.findByUserNameAndPassword(userName, password).isPresent();
    		System.out.println(ispresent);
    		
    	}catch (Exception e) {
			e.printStackTrace();
		}
        return ispresent;
    }
   
    



}
