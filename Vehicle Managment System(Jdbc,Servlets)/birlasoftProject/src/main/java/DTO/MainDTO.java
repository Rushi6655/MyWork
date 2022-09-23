package DTO;

import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.PreparedStatement;
import java.sql.ResultSet;

import DAO.Driver;
import DAO.Vehicles;
import Servlets.bookride;

public class MainDTO {
	
	//To Establish the connection
	
	public static Connection getConnection() throws Exception {
		Class.forName("com.mysql.cj.jdbc.Driver");
		Connection connection = DriverManager.getConnection("jdbc:mysql://localhost:3306/vehiclemanagmentsystem",
				"root", "root");
		return connection;
	}
	
	
	//**********************************************************************************************
	
						//All Validation Methods To Validate between
						//Entered Data and present Data in DB.
	
	//***********************************************************************************************

	public static boolean isUserValid(String uid,String pass) throws Exception {
		Connection con = getConnection();
		PreparedStatement ps1 = con.prepareStatement("Select uid,upass from user");
		ResultSet rs1 = ps1.executeQuery();
		while (rs1.next()) {
			if (rs1.getString(1).equals(uid) && rs1.getString(2).equals(pass)) {
				return true;
			}
		}
		return false;
	}
	
	public static boolean isdriverValid(String did) throws Exception {
		Connection con = getConnection();
		PreparedStatement ps1 = con.prepareStatement("Select did from driver");
		ResultSet rs1 = ps1.executeQuery();
		while (rs1.next()) {
			if (rs1.getString(1).equals(did)) {
				
				return true;
			}
		}
		return false;
	}

	public static int isVehicleValid(int vid) throws Exception {
		Connection con = getConnection();
		PreparedStatement ps1 = con.prepareStatement("Select * from vehicle");
		ResultSet rs1 = ps1.executeQuery();
		while (rs1.next()) {
			if (rs1.getInt(1)==vid) {
				return rs1.getInt(3);
			}
		}
		return 0;
	}
	
	//**********************************************************************************************
	
						//Display Methods For Every database We Created In this Project
	
	//***********************************************************************************************
	
	public ResultSet displayVehicles() throws Exception {
		Connection con1=getConnection();
		PreparedStatement ps1=con1.prepareStatement("Select * from vehicle");
		ResultSet rs1=ps1.executeQuery();
		return rs1;
	}
	public ResultSet displayAvailableDrivers() throws Exception {
		Connection con1=getConnection();
		PreparedStatement ps1=con1.prepareStatement("Select * from driver where isAvailable =?");
		ps1.setString(1, "yes");
		ResultSet rs1=ps1.executeQuery();
		return rs1;
	}
	public void displayDrivers() throws Exception {
		Connection con1=getConnection();
		PreparedStatement ps1=con1.prepareStatement("Select * from driver");
		ResultSet rs1=ps1.executeQuery();
		System.out.println("DriverId      DriverName        DriverExperience       DriverAge       AvailableStatus");
		while (rs1.next()) {
			System.out.println("_______________________________________________________");
			System.out.println(rs1.getString(1)+"	"+rs1.getString(2)+"		 		"+rs1.getString(3)+"				"+rs1.getString(4)+"				"+rs1.getString(5));
		}
		System.out.println("______________________________________________________");
	}
	
	
	public ResultSet displayAllRides(String uid) throws Exception {
		Connection con1=getConnection();
		PreparedStatement ps1=con1.prepareStatement("Select * from ridedetails where uid=?");
		ps1.setString(1,uid);
		ResultSet rs1=ps1.executeQuery();
		return rs1;
	}
	public ResultSet displayAllRides() throws Exception {
		Connection con1=getConnection();
		PreparedStatement ps1=con1.prepareStatement("Select * from ridedetails");
		ResultSet rs1=ps1.executeQuery();
		return rs1;
	}
	
	
	//**********************************************************************************************
	
						//All Insert methods To add our data into databse
	
	//***********************************************************************************************
	public boolean AddRide(String uid,String did,int vid,int km) throws Exception {
		boolean done=false;
		Connection con1=getConnection();
		PreparedStatement ps1=con1.prepareStatement("Insert into ridedetails (uid,did,vid,km) values(?,?,?,?)");
		ps1.setString(1, uid);
		ps1.setString(2,did );
		ps1.setInt(3,vid );
		ps1.setInt(4, km);
		ps1.executeUpdate();
		System.out.println("************** Ride Booked Successfully ***************");
		done=true;
		return done;
	}
	public void AddUser(String uid,String pass,String uname) throws Exception {
		Connection con1=getConnection();
		PreparedStatement ps1=con1.prepareStatement("Insert into user values(?,?,?)");
		ps1.setString(1, uid);
		ps1.setString(2,pass );
		ps1.setString(3, uname);
		ps1.executeUpdate();
		System.out.println("************** User SignUp Successfully ***************");
	}
	
	//************************************************************************************************
	
	public String AddDriver(Driver driver) throws Exception {
		Connection con1=getConnection();
		if(!isdriverValid(driver.getdID())) {
			PreparedStatement ps1=con1.prepareStatement("Insert into driver values(?,?,?,?,?)");
			ps1.setString(1, driver.getdID());
			ps1.setString(2, driver.getdName());
			ps1.setInt(3, driver.getdExperience());
			ps1.setInt(4, driver.getdAge());
			ps1.setString(5, driver.getIsAvailable());
			ps1.executeUpdate();
			return "yes";
		}
		else {
			return "no";
		}
	}
	public String AddVehicle(Vehicles v) throws Exception {
		Connection con1=getConnection();
		if(isVehicleValid(v.getvID())==0) {
			PreparedStatement ps1=con1.prepareStatement("Insert into vehicle values(?,?,?)");
			ps1.setInt(1,v.getvID());
			ps1.setString(2, v.getvName());
			ps1.setInt(3, v.getCostPerKM());
			ps1.executeUpdate();
			return "yes";
		}
		else {
			return "no";
		}
	}
}
