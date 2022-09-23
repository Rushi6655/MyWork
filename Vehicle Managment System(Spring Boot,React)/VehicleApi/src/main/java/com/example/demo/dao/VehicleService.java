package com.example.demo.dao;

import org.springframework.data.jpa.repository.JpaRepository;

import com.example.demo.dto.Vehicle;

public interface VehicleService extends JpaRepository<Vehicle, Integer> {
	public Vehicle getById(int vid);
}
