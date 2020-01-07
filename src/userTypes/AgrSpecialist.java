package userTypes;

import java.util.Properties;
import java.util.ArrayList;
import java.util.List;
import java.sql.DriverManager;
import java.sql.PreparedStatement;
import java.awt.print.Printable;
import java.sql.Connection;
import java.sql.Statement;
import java.sql.ResultSet;

public class AgrSpecialist {
	
	public Connection connect() {
		String conString = "jdbc:mysql://localhost:3306/vlanka";
		Properties prp = new Properties();
		prp.put("user", "root");

		try {
			Class.forName("com.mysql.jdbc.Driver");
			Connection conn = DriverManager.getConnection(conString, prp);
			
			return conn;
		}
		
		catch(Exception e){
			return null;
		}
	}
	
	//function to register a new agricultural specialist in the system
	public void Register(String name, String nic, String speciality, String address, String email, String tp, String region) {
//		final String query = "INSERT INTO agricultural_specialist(`nic`, `name`, `speciality`, `address`, `email`, `region`, `telephone`) VALUES ('" + nic + "', '" + name +  "', '" + speciality + "', '" + address + "', '" + email + "', '" + region + "', '" + tp + "'";
		
		try {
			Connection con = connect();
			
			PreparedStatement pst = con.prepareStatement("INSERT INTO agricultural_specialist(`nic`, `name`, `speciality`, `address`, `email`, `region`, `telephone`) VALUES (?, ?, ?, ?, ?, ?, ?)");
			
			pst.setString(1, nic); 
			pst.setString(2, name);
			pst.setString(3, speciality);
			pst.setString(4, address);
			pst.setString(5, email);
			pst.setString(6, region);
			pst.setString(7, tp);
			
			pst.execute();
		}
		catch (Exception e) {
		}
		
	}
	
	public ResultSet getReports() {
		final String query = "SELECT farmer.nic, farmer.name, reports.message, reports.date, farmer.address FROM farmer INNER JOIN reports ON farmer.nic = reports.nic ORDER BY reports.date DESC";
		
		
		Connection con = connect();
		
		try {
			ResultSet rs = con.createStatement().executeQuery(query); 
			return rs;
		}
		catch(Exception e) {
			return null;
		}
	}
	
	public ResultSet getNotifications() {
		Connection con = connect();
		
		try {
			ResultSet rs = con.createStatement().executeQuery("SELECT * FROM `reports` WHERE status != 'read' ORDER BY date DESC");
			return rs;
		}
		catch(Exception e) {
			return null;
		}
	}

	
	
//	public static String fun() {
//		ResultSet rs = null;
//		String retString = null;
//		
//		try {
//			
//		
//			Statement stmt = conn.createStatement();
//			rs = stmt.executeQuery("SELECT * FROM test");
//			
//			rs.next();
//			retString = rs.getString(2);
//		}
//		catch(Exception e) {
//			retString = e.toString();
//		}
//		
//		return retString;
//	}
	
	
	
}
 