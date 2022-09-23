package DAO;

public class Vehicles {
	private int vID;
	private String vName;
	private int costPerKM;
	
	public int getvID() {
		return vID;
	}
	public void setvID(int vID) {
		this.vID = vID;
	}
	public String getvName() {
		return vName;
	}
	public void setvName(String vName) {
		this.vName = vName;
	}
	public int getCostPerKM() {
		return costPerKM;
	}
	public void setCostPerKM(int costPerKM) {
		this.costPerKM = costPerKM;
	}
	
}
