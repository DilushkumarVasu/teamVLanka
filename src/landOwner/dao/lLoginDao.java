package landOwner.dao;

import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.PreparedStatement;
import java.sql.ResultSet;

//import java.sql.*;

public class lLoginDao {
	
	String sql="select * from landowner where username=? and password=?";
	String url="jdbc:mysql://localhost/vlanka";
	String username="root";
	String password="";
	public boolean check(String uname,String pass) {
		
		try {
			Class.forName("com.mysql.jdbc.Driver");
			Connection con=DriverManager.getConnection(url,username,password);
			PreparedStatement st=con.prepareStatement(sql);
			st.setString(1, uname);
			st.setString(2, pass);
			ResultSet rs=st.executeQuery();
			if(rs.next()) {
				
				return true;
			}
			
		} catch (Exception e) {
			
			e.printStackTrace();
		}
		
		
		return false;
	}
	
	public String getemail(String uname,String pass) {
		
		try {
			Class.forName("com.mysql.jdbc.Driver");
			Connection con=DriverManager.getConnection(url,username,password);
			PreparedStatement st=con.prepareStatement(sql);
			st.setString(1, uname);
			st.setString(2, pass);
			ResultSet rs=st.executeQuery();
			if(rs.next()) {
				
				return rs.getString(8);
			}
			
		} catch (Exception e) {
			
			e.printStackTrace();
		}
		
		
		return "no customer found";
	}


	public String gettele(String uname,String pass) {
		
		try {
			Class.forName("com.mysql.jdbc.Driver");
			Connection con=DriverManager.getConnection(url,username,password);
			PreparedStatement st=con.prepareStatement(sql);
			st.setString(1, uname);
			st.setString(2, pass);
			ResultSet rs=st.executeQuery();
			if(rs.next()) {
				
				return rs.getString(7);
			}
			
		} catch (Exception e) {
			
			e.printStackTrace();
		}
		
		
		return "no customer found";
	}
	public String getadd(String uname,String pass) {
		
		try {
			Class.forName("com.mysql.jdbc.Driver");
			Connection con=DriverManager.getConnection(url,username,password);
			PreparedStatement st=con.prepareStatement(sql);
			st.setString(1, uname);
			st.setString(2, pass);
			ResultSet rs=st.executeQuery();
			if(rs.next()) {
				
				return rs.getString(3);
			}
			
		} catch (Exception e) {
			
			e.printStackTrace();
		}
		
		
		return "no customer found";
	}
		
public String getstatus(String uname,String pass) {
		
		try {
			Class.forName("com.mysql.jdbc.Driver");
			Connection con=DriverManager.getConnection(url,username,password);
			PreparedStatement st=con.prepareStatement(sql);
			st.setString(1, uname);
			st.setString(2, pass);
			ResultSet rs=st.executeQuery();
			if(rs.next()) {
				
				return rs.getString(6);
			}
			
		} catch (Exception e) {
			
			e.printStackTrace();
		}
		
		
		return "no customer found";
	}
		
	}

