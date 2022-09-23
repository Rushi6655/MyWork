package Database;

import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;

public class Database {

	public Connection getConnection() throws ClassNotFoundException, SQLException {
		Class.forName("com.mysql.cj.jdbc.Driver");
		Connection connection = DriverManager.getConnection("jdbc:mysql://localhost:3306/travel", "root", "root");
		return connection;
	}

	public String addPack(String fname, String id, String loc, Double price) throws Exception {
		System.out.println("inside try");
		Connection connection = getConnection();
		PreparedStatement stmt = connection
				.prepareStatement("insert into tours(pid,imgname,loc,price) values(?,?,?,?)");
		stmt.setString(1, id);
		stmt.setString(2, fname);
		stmt.setString(3, loc);
		stmt.setDouble(4, price);
		int row = stmt.executeUpdate(); // it returns no of rows affected.
		if (row > 0) {
			System.out.println("Image added into database successfully.");
			return "inserted";
		}

		else {
			System.out.println("Failed to upload image.");
			return "fail";
		}
	}

	public boolean isUserValid(String umail, String upass) throws Exception {
		Connection con = getConnection();
		PreparedStatement ps1 = con.prepareStatement("Select umail,upass from user");
		ResultSet rs1 = ps1.executeQuery();
		while (rs1.next()) {
			if (rs1.getString(1).equals(umail) && rs1.getString(2).equals(upass)) {
				return true;
			}
		}
		return false;
	}

	public ResultSet getAllPacks() throws Exception {

		Connection con1 = getConnection();
		PreparedStatement ps1 = con1.prepareStatement("Select * from tours");
		ResultSet rs1 = ps1.executeQuery();
		return rs1;

	}

	public ResultSet getAllReq() throws Exception {

		Connection con1 = getConnection();
		PreparedStatement ps1 = con1.prepareStatement("Select * from bookingreq");
		ResultSet rs1 = ps1.executeQuery();
		return rs1;

	}
	public ResultSet getAllBookings() throws Exception {

		Connection con1 = getConnection();
		PreparedStatement ps1 = con1.prepareStatement("Select * from bookings");
		ResultSet rs1 = ps1.executeQuery();
		return rs1;

	}

	public boolean AddUser(String umail, String upass, String uname) throws Exception {
		Connection con1 = getConnection();
		if (!isUserValid(umail, upass)) {
			PreparedStatement ps1 = con1.prepareStatement("Insert into user values(?,?,?)");
			ps1.setString(1, umail);
			ps1.setString(2, uname);
			ps1.setString(3, upass);
			ps1.executeUpdate();
			return true;
		} else {
			return false;
		}

	}

	public boolean reqBooking(String umail, String location, String price, String pid,String date) throws Exception {
		Connection con1 = getConnection();
		PreparedStatement ps1 = con1
				.prepareStatement("Insert into bookingreq (umail,location,price,pid,date) values(?,?,?,?,?)");
		ps1.setString(1, umail);
		ps1.setString(2, location);
		ps1.setString(3, price);
		ps1.setString(4, pid);
		ps1.setString(5, date);

		ps1.executeUpdate();

		return true;
	}

	public boolean isReqValid(int rid) throws Exception {
		Connection con = getConnection();
		PreparedStatement ps1 = con.prepareStatement("Select *from bookingreq where rid=?");
		ps1.setInt(1, rid);
		ResultSet rs1 = ps1.executeQuery();
		if (rs1.next()) {
			return true;
		}
		return false;
	}

	public boolean confirmBooking(int rid, String umail, String location, String price, String pid,String date) throws Exception {

		if (isReqValid(rid)) {
			Connection con1 = getConnection();
			PreparedStatement ps1 = con1
					.prepareStatement("Insert into bookings (umail,location,price,pid,date) values(?,?,?,?,?)");
			ps1.setString(1, umail);
			ps1.setString(2, location);
			ps1.setString(3, price);
			ps1.setString(4, pid);
			ps1.setString(5, date);
			int r = ps1.executeUpdate();

			PreparedStatement ps2 = con1.prepareStatement("delete from bookingreq where rid=?");
			ps2.setInt(1, rid);
			ps2.executeUpdate();
			return true;

		} else {
			return false;
		}

	}
	
	public boolean deleteReq(int rid) throws Exception{
		Connection con1 = getConnection();
		PreparedStatement ps2 = con1.prepareStatement("delete from bookingreq where rid=?");
		ps2.setInt(1, rid);
		ps2.executeUpdate();
		return true;
	}

}
