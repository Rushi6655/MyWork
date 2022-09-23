package com.example.demo.dao;

import org.springframework.data.jpa.repository.JpaRepository;

import com.example.demo.dto.Driver;

public interface DriverService extends JpaRepository<Driver , String> {

}
