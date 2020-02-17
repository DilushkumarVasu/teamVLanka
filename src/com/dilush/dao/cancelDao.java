package com.dilush.dao;

import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.PreparedStatement;

import demo.Encryption;

public class cancelDao {
	String sql="insert into cancel values(?,?,?,?)";
	String url="jdbc:mysql://localhost/vlanka";
	String username="root";
	String password="";
	
	public boolean insert(String user_id, String date, String type,String request) { 
		try {
			
			
			Class.forName("com.mysql.jdbc.Driver");
			Connection con=DriverManager.getConnection(url,username,password); 
			PreparedStatement stat=con.prepareStatement(sql);
				
				
				
				stat.setString(1,user_id);
				stat.setString(2,date);
				stat.setString(3,type);
				stat.setString(4,request);
				
				
				int i = stat.executeUpdate();
				
				if(i>0) {
					
					return true;
				}
				
			}catch(Exception e) {
				e.printStackTrace();
			}
				
		return false;
		
	}
	
}
