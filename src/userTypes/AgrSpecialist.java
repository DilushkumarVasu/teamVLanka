package userTypes;

import java.util.Properties;

import databaseConnectivity.dbConnection;

import java.util.ArrayList;
import java.util.List;
import java.sql.DriverManager;
import java.sql.PreparedStatement;
import java.awt.print.Printable;
import java.sql.Connection;
import java.sql.Statement;
import java.text.SimpleDateFormat;
import java.sql.ResultSet;
import java.sql.SQLException;

public class AgrSpecialist {

	
	
	
	
	//function to register a new agricultural specialist in the system
	public void Register(String name, String nic, String specialty, String address, String email, String tp, String region) {
		try {
			Connection con = connect();
			
			PreparedStatement pst = con.prepareStatement("INSERT INTO `AgriculturalSpecialist` (`nic`, `name`, `specialty`, `address`, `email`, `region`, `telephone`) VALUES (?, ?, ?, ?, ?, ?, ?)");
			pst.setString(1, nic); 
			pst.setString(2, name);
			pst.setString(3, specialty);
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

	public void postNotice(String title, String body) {
		String author = null; //find a way to add author id here
		String timestamp = new SimpleDateFormat("yyyy.MM.dd.HH.mm").toString();
		
		String sql = "INSERT INTO `Notices` (`author`, `title`, `body`, `time`) VALUES (?, ?, ?, ?);";
		
		try {
			dbConnection dbc = new dbConnection();
			Connection con = dbc.connect();
			
			PreparedStatement stmt = con.prepareStatement(sql);
			stmt.setString(1, author);
			stmt.setString(2, title);
			stmt.setString(3, body);
			stmt.setString(2, timestamp);
			
			stmt.execute();
			
			dbc.disconnect();
		}
		catch(Exception e) {
			
		}
	}
	
	
	
}
 