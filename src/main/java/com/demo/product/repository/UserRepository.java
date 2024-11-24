package com.demo.product.repository;

import org.springframework.data.jpa.repository.JpaRepository;
import org.springframework.data.repository.CrudRepository;

import com.demo.product.model.User;
import java.util.List;
import java.util.Optional;


public interface UserRepository extends  JpaRepository<User, Integer>{
	
	Optional<User> findByUserNameAndPassword(String userName, String password);

	
	
}
