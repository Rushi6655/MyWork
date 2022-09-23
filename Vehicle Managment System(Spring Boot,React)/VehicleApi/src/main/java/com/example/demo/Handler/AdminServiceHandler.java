package com.example.demo.Handler;

import java.util.List;

import javax.websocket.server.PathParam;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.web.bind.annotation.CrossOrigin;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestBody;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.annotation.ResponseBody;
import org.springframework.web.bind.annotation.RestController;

import com.example.demo.dao.DriverService;
import com.example.demo.dao.RideService;
import com.example.demo.dao.VehicleService;
import com.example.demo.dto.Driver;
import com.example.demo.dto.Rides;
import com.example.demo.dto.Vehicle;

@RestController
@CrossOrigin
@RequestMapping("/admin")
public class AdminServiceHandler {
	
	@Autowired
	DriverService service;
	@Autowired
	VehicleService service2;
	
	@Autowired
	RideService service3;
	
	@PostMapping("/addDriver")
	public String addDriver(@RequestBody Driver driver) {
		System.out.println("into add Driver method");
		service.save(driver);
		return "Driver Add Successfully";
	}
	@GetMapping("/getAllDrivers")
	public List<Driver> getAllDrivers(){
		return service.findAll();
	}
	
	@PostMapping("/addVehicle")
	public String addVehicle(@RequestBody Vehicle vehicle ) {
		System.out.println("into add Vehicle");
		
		service2.save(vehicle);
		return "vehicle Add Successfully";
	}
	@GetMapping("/getAllVehicles")
	public List<Vehicle> getAllVehicles(){
		
		System.out.println("into vehicles");
		return service2.findAll();
	}
	@GetMapping("/{vid}")
	public Vehicle getAllVehicles(@PathVariable int vid){
		
		System.out.println("into id vehicle");
		return service2.getById(vid);
	}
	
	@GetMapping("/getAllRides")
	public List<Rides> getAllRides(){
		return service3.findAll();
	}



}
