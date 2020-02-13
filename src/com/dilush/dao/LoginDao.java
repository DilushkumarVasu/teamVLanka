package com.dilush.dao;

import java.nio.charset.StandardCharsets;
import java.security.MessageDigest;
import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.PreparedStatement;
import java.sql.ResultSet;

//import java.sql.*;

public class LoginDao {
	
	String sql="select * from farmer where username=? and password=?";
	String url="jdbc:mysql://localhost/vlanka";
	String username="root";//localhost username
	String password="";//localhost password
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
	
public String getEmail(String uname,String pass) {
		
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

public String getName(String uname,String pass) {
	
	try {
		Class.forName("com.mysql.jdbc.Driver");
		Connection con=DriverManager.getConnection(url,username,password);
		PreparedStatement st=con.prepareStatement(sql);
		st.setString(1, uname);
		st.setString(2, pass);
		ResultSet rs=st.executeQuery();
		if(rs.next()) {
			
			return rs.getString(2);
		}
		
	} catch (Exception e) {
		
		e.printStackTrace();
	}
	
	
	return "no customer found";
}

public String getGender(String uname,String pass) {
	
	try {
		Class.forName("com.mysql.jdbc.Driver");
		Connection con=DriverManager.getConnection(url,username,password);
		PreparedStatement st=con.prepareStatement(sql);
		st.setString(1, uname);
		st.setString(2, pass);
		ResultSet rs=st.executeQuery();
		if(rs.next()) {
			
			return rs.getString(4);
		}
		
	} catch (Exception e) {
		
		e.printStackTrace();
	}
	
	
	return "no customer found";
}


	public String getTele(String uname,String pass) {
		
		try {
			Class.forName("com.mysql.jdbc.Driver");
			Connection con=DriverManager.getConnection(url,username,password);
			PreparedStatement st=con.prepareStatement(sql);
			st.setString(1, uname);
			st.setString(2, pass);
			ResultSet rs=st.executeQuery();
			if(rs.next()) {
				
				return rs.getString(5);
			}
			
		} catch (Exception e) {
			
			e.printStackTrace();
		}
		
		
		return "no customer found";
	}
	public String getAdd(String uname,String pass) {
		
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
		

public String getId(String uname,String pass) {
	
	try {
		Class.forName("com.mysql.jdbc.Driver");
		Connection con=DriverManager.getConnection(url,username,password);
		PreparedStatement st=con.prepareStatement(sql);
		st.setString(1, uname);
		st.setString(2, pass);
		ResultSet rs=st.executeQuery();
		if(rs.next()) {
			
			return rs.getString(1);
		}
		
	} catch (Exception e) {
		
		e.printStackTrace();
	}
	
	
	return "no customer found";
}


}
