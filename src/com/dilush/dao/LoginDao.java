package com.dilush.dao;

import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.PreparedStatement;
import java.sql.ResultSet;

//import java.sql.*;

public class LoginDao {
	
	String sql="select * from farmer where username=? and password=?";
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
}
