package com.example.demo.dao;

import java.util.List;
import java.util.Optional;

import org.springframework.data.jpa.repository.JpaRepository;

import com.example.demo.dto.User;

public interface UserService extends JpaRepository<User, String> {
	
	public User getById(String id);
}
