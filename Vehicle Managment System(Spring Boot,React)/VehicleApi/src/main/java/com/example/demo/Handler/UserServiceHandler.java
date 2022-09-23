package com.example.demo.Handler;

import java.util.List;

import org.apache.catalina.connector.Response;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.web.bind.annotation.CrossOrigin;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.PutMapping;
import org.springframework.web.bind.annotation.RequestBody;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RestController;

import com.example.demo.dao.RideService;
import com.example.demo.dao.UserService;
import com.example.demo.dto.Rides;
import com.example.demo.dto.User;

@RestController
@CrossOrigin
@RequestMapping("/user")

public class UserServiceHandler {

	@Autowired
	UserService service;
	@Autowired
	RideService service2;
	
	@GetMapping("/val")
	public List<User> validateUser() {
		System.out.println("into valiadtion");
		return service.findAll();
		
	}

	@PostMapping("/signUp")
	public String signUpNewUser(@RequestBody User user) {
		service.save(user);
		System.out.println("into signup");
		return "signup Successfully!";
	}
	
	@PostMapping("/bookRide")
	public String bookRide(@RequestBody Rides rides) {
		
		System.out.println("into book ride");
		service2.save(rides);
		return "Ride Add Successfully";
	}
	@GetMapping("/getAllRides")
	public List<Rides> getAllRides(){
		
		System.out.println("into user getAll");
		return service2.findAll();
	}

}
