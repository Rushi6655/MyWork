package com.example.demo.dto;

import javax.persistence.Entity;
import javax.persistence.Id;

@Entity
public class Driver {
	
	@Id
	private String dmail;
	private String dname;
	private int dexp;
	private int dage;
	public String getDmail() {
		return dmail;
	}
	public void setDmail(String dmail) {
		this.dmail = dmail;
	}
	public String getDname() {
		return dname;
	}
	public void setDname(String dname) {
		this.dname = dname;
	}
	public int getDexp() {
		return dexp;
	}
	public void setDexp(int dexp) {
		this.dexp = dexp;
	}
	public int getDage() {
		return dage;
	}
	public void setDage(int dage) {
		this.dage = dage;
	}
	
	
}
