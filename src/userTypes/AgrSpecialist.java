package userTypes;

import java.util.*;

import databaseConnectivity.dbConnection;

import java.util.ArrayList;
import java.util.List;

import com.mysql.cj.protocol.x.Notice;

import java.sql.DriverManager;
import java.sql.PreparedStatement;
import java.awt.print.Printable;
import java.nio.charset.StandardCharsets;
import java.security.MessageDigest;
import java.sql.Connection;
import java.sql.Statement;
import java.text.SimpleDateFormat;
import java.sql.ResultSet;
import java.sql.SQLException;

import notice.Notice;

public class AgrSpecialist {

	
	
	
	
	//function to register a new agricultural specialist in the system
	public void Register(String name, String nic, String specialty, String address, String email, String tp, String region) {
		try {
			dbConnection dbcon = new dbConnection();
			Connection con = dbcon.connect();
			
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
	
	//this function checks if credentials are valid and returns the connection if valid
	public static boolean checkCredentials(String nic, String pwd) {
		try {
			MessageDigest digest = MessageDigest.getInstance("SHA-256");
			byte[] hash = digest.digest((pwd+nic).getBytes(StandardCharsets.UTF_8));
			String pwdHashed = Base64.getEncoder().encodeToString(hash);

			
			Connection con = dbConnection.getConnection();
			
			PreparedStatement pst = con.prepareStatement("SELECT password FROM AgriculturalSpecialist WHERE nic = ?;");
			pst.setString(1,nic);
			
			
			ResultSet rs = pst.executeQuery();
			while(rs.next()) {
				System.err.println(rs.getString("password"));
				if(pwd.equals(rs.getString("password"))) //change this to hashed password later
					return true;
			}
			return false;
		}
		catch(Exception ex) {
			System.err.println(ex.getMessage());
		}
		return false;
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
	
	public static List<notice.Notice> getNotices(String nic) {
		try {
			Connection con = dbConnection.getConnection();
//			
			String sql = "SELECT title, body, time FROM Notices WHERE author = ? ORDER BY time DESC;";
			PreparedStatement pst = con.prepareStatement(sql);
			pst.setString(1, nic);
//			System.err.println(pst.toString());
			
			ResultSet rs = pst.executeQuery();
//			notice.Notice[] notices;
			List<notice.Notice> notices = new ArrayList<notice.Notice>();
//			
			int i = 0;
			while(rs.next()) {
				notices.add(new notice.Notice(rs.getString("title"), rs.getString("body"), rs.getString("time")));
			}
//			
			con.close();
			return notices;
		} 
		catch (Exception e) {
		}
		return null;
	}
	
}
 