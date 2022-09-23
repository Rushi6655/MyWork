package com.example.demo.dto;


import javax.persistence.Entity;
import javax.persistence.GeneratedValue;
import javax.persistence.GenerationType;
import javax.persistence.Id;

@Entity
public class Rides {

	@Id
	@GeneratedValue(strategy = GenerationType.AUTO)
	private int rno;
	private String umail;
	private String dmail;
	private String vid;
	private String fromlocation;
	private String tolocation;
	private int travelkm;
	private double cost;
	
	public String getUmail() {
		return umail;
	}
	public void setUmail(String umail) {
		this.umail = umail;
	}
	public String getDmail() {
		return dmail;
	}
	public void setDmail(String dmail) {
		this.dmail = dmail;
	}
	public String getVid() {
		return vid;
	}
	public void setVid(String vid) {
		this.vid = vid;
	}
	public String getFromlocation() {
		return fromlocation;
	}
	public void setFromlocation(String fromlocation) {
		this.fromlocation = fromlocation;
	}
	public String getTolocation() {
		return tolocation;
	}
	public void setTolocation(String tolocation) {
		this.tolocation = tolocation;
	}
	public int getTravelkm() {
		return travelkm;
	}
	public void setTravelkm(int travelkm) {
		this.travelkm = travelkm;
	}
	public double getCost() {
		return cost;
	}
	public void setCost(double cost) {
		this.cost = cost;
	}
	public int getRno() {
		return rno;
	}
	public void setRno(int rno) {
		this.rno = rno;
	}
	
	
	
}
