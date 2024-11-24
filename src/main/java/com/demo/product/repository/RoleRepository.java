package com.demo.product.repository;

import org.springframework.data.jpa.repository.JpaRepository;

import com.demo.product.model.Role;

public interface RoleRepository extends JpaRepository<Role, Integer> {

}
