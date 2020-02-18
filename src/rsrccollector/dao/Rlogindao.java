package rsrccollector.dao;

import java.sql.Connection;
import demo.*;
import java.sql.DriverManager;
import java.sql.PreparedStatement;
import java.sql.ResultSet;

public class Rlogindao {

		
		String sql="select * from rsrccollector where username=? and password=?";
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
		

		public String getname(String uname,String pass) {
			
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
			
			
			return "No one Found";
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
			
			
			return "No one Found";
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
					
					return rs.getString(5);
				}
				
			} catch (Exception e) {
				
				e.printStackTrace();
			}
			
			
			return "No one Found";
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
					
					return rs.getString(6);
				}
				
			} catch (Exception e) {
				
				e.printStackTrace();
			}
			
			
			return "No one Found";
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
					
					return rs.getString(4);
				}
				
			} catch (Exception e) {
				
				e.printStackTrace();
			}
			
			
			return "No one Found";
		}
			
	public String getarea(String uname,String pass) {
			
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
			
			
			return "No one Found";
		} 
			
		}

