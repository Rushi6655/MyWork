package com.example.demo.dto;

import javax.persistence.Entity;
import javax.persistence.Id;

@Entity
public class Vehicle {

	@Id
	private int vid;
	private String vname;
	private int cpkm;
	public int getVid() {
		return vid;
	}
	public void setVid(int vid) {
		this.vid = vid;
	}
	public String getVname() {
		return vname;
	}
	public void setVname(String vname) {
		this.vname = vname;
	}
	public int getCpkm() {
		return cpkm;
	}
	public void setCpkm(int cpkm) {
		this.cpkm = cpkm;
	}
	
	
}
