package com.example.demo.dao;

import org.springframework.data.jpa.repository.JpaRepository;

import com.example.demo.dto.Rides;

public interface RideService extends JpaRepository<Rides, Integer> {
	
}
