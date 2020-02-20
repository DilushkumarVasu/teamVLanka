package userTypes;

import java.util.Properties;
import java.util.*;

import databaseConnectivity.LocalDBConnection;
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
import question.*;

public class AgrSpecialist {

	
	private static String getHashedPassword(String nic, String password) {
		try {
			MessageDigest digest = MessageDigest.getInstance("SHA-256");
			String saltedText = nic+password+"FDG54DF6G4DF65G46DF4G6DF84G6D5F4G6D5FG4"; //random salt to increase security
			byte[] hash = digest.digest(saltedText.getBytes(StandardCharsets.UTF_8));
			String encoded = Base64.getEncoder().encodeToString(hash);
	
			return encoded;
		}
		catch(Exception e) {
			return null;
		}
	}
	
	
	//function to register a new agricultural specialist in the system
	public static Boolean Register(String name, String nic, String specialty, String address, String email, String tp, String region, String password) {
		try {
			System.err.println("----------------------------");
			Connection con = LocalDBConnection.getConnection();
			
			String hashedPwd = getHashedPassword(nic, password);
			
			
			
			PreparedStatement pst = con.prepareStatement("INSERT INTO AgriculturalSpecialist (nic, password, name, specialty, address, email, region, telephone) VALUES(?, ?, ?, ?, ?, ?, ?, ?);");
			pst.setString(1, nic); 
			pst.setString(2, hashedPwd);
			pst.setString(3, name);
			pst.setString(4, specialty);
			pst.setString(5, address);
			pst.setString(6, email);
			pst.setString(7, region);
			pst.setString(8, tp);
			
			pst.execute();
			return true;
		}
		catch (Exception e) {
			return false;
		}
	}
	
	//this function checks if credentials are valid and returns the connection if valid
	public static boolean checkCredentials(String nic, String pwd) {
		try {
			/*
			 * MessageDigest digest = MessageDigest.getInstance("SHA-256"); byte[] hash =
			 * digest.digest((pwd+nic).getBytes(StandardCharsets.UTF_8)); String pwdHashed =
			 * Base64.getEncoder().encodeToString(hash);
			 */

			String hashedPwd = getHashedPassword(nic, pwd);
			
			Connection con = LocalDBConnection.getConnection();
			
			PreparedStatement pst = con.prepareStatement("SELECT password FROM AgriculturalSpecialist WHERE nic = ?;");
			pst.setString(1,nic);
			
			
			ResultSet rs = pst.executeQuery();
			while(rs.next()) {
				System.err.println(rs.getString("password"));
				if(hashedPwd.equals(rs.getString("password"))) //change this to hashed password later
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

	public static void postNotice(String nic, String title, String body) {
		String author = nic; //find a way to add author id here
		String timeStamp = new SimpleDateFormat("yyyy.MM.dd.HH.mm").format(new Date());
		System.out.println("Time: " + timeStamp);
		
		String sql = "INSERT INTO Notices(author, title, body, time) VALUES (?, ?, ?, ?);";
		
		System.out.println("QQQQQQQQQQQ");
		
		try {
			Connection con = LocalDBConnection.getConnection();

			System.out.println("WWWWWWWWWWWWWWWWWWWWWWWW");
			
			PreparedStatement stmt = con.prepareStatement(sql);
			System.out.println("EEEEEEEEEEEEEEEEEEEEEEEEEEEEEEEE");
			stmt.setString(1, author);
			stmt.setString(2, title);
			stmt.setString(3, body);
			stmt.setString(4, timeStamp);
			
			System.out.println("RRRRRRRRRRRRRRRRRRRRRRRRRRRRRRRRRRRRRRR");
			System.out.println(stmt.toString());
			
			stmt.execute();
		}
		catch(Exception e) {
			System.out.println("TTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTT");
		}
	}
	
	public static List<notice.Notice> getNotices(String nic) {
		try {
			Connection con = LocalDBConnection.getConnection();
//			
			String sql = "SELECT title, body, time FROM Notices WHERE author = ? ORDER BY time DESC;";
			PreparedStatement pst = con.prepareStatement(sql);
			pst.setString(1, nic);
//			System.err.println(pst.toString());
			
			ResultSet rs = pst.executeQuery();
//			notice.Notice[] notices;
			List<notice.Notice> notices = new ArrayList<notice.Notice>();
//			
			
			while(rs.next())
				notices.add(new notice.Notice(rs.getString("title"), rs.getString("body"), rs.getString("time")));
//			
			con.close();
			return notices;
		} 
		catch (Exception e) {
		}
		return null;
	}
	
	public static List<question.Question> getUnansweredQuestions(){
		try {
			Connection con = LocalDBConnection.getConnection();
			System.out.println("101111111111111111111111");
			String sql = "SELECT * FROM Questions LEFT JOIN Answers ON Questions.id = Answers.question WHERE Answers.question IS NULL;";
			PreparedStatement pst = con.prepareStatement(sql);
			System.out.println("0000000000000000000");
			
			ResultSet rs = pst.executeQuery();
			List<question.Question> questions = new ArrayList<question.Question>();

			System.out.println("222222222222222222222222222222222222");
			
			/*
			 * rs.last(); System.out.println(rs.getRow());
			 */
			
			while(rs.next()) {
				//questions.add(new question.Question(rs.getInt("id"), rs.getString("nic"), rs.getString("title"), rs.getString("body"), rs.getString("date")));
				question.Question q = new question.Question(rs.getInt("id"), rs.getString("nic"), rs.getString("title"), rs.getString("body"), rs.getString("time"));
				questions.add(q);
			}
			System.out.println("333333333333333333333333333333333333333333333");
			
			con.close();
			return questions;

		}
		catch(Exception e) {
			System.out.println("EEEEEEEEEEEEEEEEEEEEEEEEEEEEEEEEEEEEEEEEEEEEEEEEEEEEEEEEE");
		}
		return null;

	}
	
	public static List<question.Question> getAllQuestions(){
		try {
			Connection con = LocalDBConnection.getConnection();
			
			String sql = "SELECT * FROM questions;";
			PreparedStatement pst = con.prepareStatement(sql);
			
			ResultSet rs = pst.executeQuery();
			List<question.Question> questions = new ArrayList<question.Question>();

			while(rs.next()) {
				question.Question Q = new question.Question(rs.getInt("id"), rs.getString("nic"), rs.getString("title"), rs.getString("body"), rs.getString("time"));
				questions.add(Q);
				//questions.add(new question.Question(rs.getInt("id"), rs.getString("nic"), rs.getString("title"), rs.getString("body"), rs.getString("date")));
			}
			con.close();
			return questions;

		}
		catch(Exception e) {
			System.out.println("EEEEEEEEEEEEEEEEEEE");
		}
		return null;
	}
	
	public static void answer(int question, String body, String nic, String time) {
		try {
			Connection con = LocalDBConnection.getConnection();
			String sql = "INSERT INTO answers(question, body, nic, time) VALUES(?, ?, ?, ?);";
			PreparedStatement pst = con.prepareStatement(sql);
			
			pst.setInt(1, question);
			pst.setString(2, body);
			pst.setString(3, nic);
			pst.setString(4, time);
			
			System.out.println(pst.toString());
			pst.execute();
			
		} catch (Exception e) {
			// TODO Auto-generated catch block
		}
	}
}

 
