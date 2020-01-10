package com.dilush.dao;

import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.PreparedStatement;
import java.sql.ResultSet;

public class SignupDao {

	String sql="select * from farmer where nic=?,name=? and email=?";
	String url="jdbc:mysql://localhost/vlanka";
	String username="root";
	String password="";
	public boolean check(String nic,String name,String email) {
		
		try {
			Class.forName("com.mysql.jdbc.Driver");
			Connection con=DriverManager.getConnection(url,username,password);
			PreparedStatement st=con.prepareStatement(sql);
			st.setString(1, nic);
			st.setString(2, name);
			st.setString(2, email);
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
