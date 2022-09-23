package DAO;

public class Driver {
	private String dID;
	private String dName;
	private int dExperience;
	private int dAge;
	private String isAvailable="yes";
	
	public String getdID() {
		return dID;
	}
	public void setdID(String dID) {
		this.dID = dID;
	}
	public String getdName() {
		return dName;
	}
	public void setdName(String dName) {
		this.dName = dName;
	}
	public int getdExperience() {
		return dExperience;
	}
	public void setdExperience(int dExperience) {
		this.dExperience = dExperience;
	}
	public int getdAge() {
		return dAge;
	}
	public void setdAge(int dAge) {
		this.dAge = dAge;
	}
	public String getIsAvailable() {
		return isAvailable;
	}
	public void setIsAvailable(String isAvailable) {
		this.isAvailable = isAvailable;
	}
	
}
