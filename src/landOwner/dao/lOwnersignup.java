package landOwner.dao;

import java.io.InputStream;
import demo.*;


import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.PreparedStatement;
import java.sql.ResultSet;

	public class lOwnersignup {

		String sql="insert into landowner(l_id,name,address,gender,pdf,land_status,telephone,email,username,password) values(?,?,?,?,?,?,?,?,?,?)";
		String updatesql="update landowner set email = ?,land_status= ?,telephone=?,address = ?,gender=? where username = ?";
		String url="jdbc:mysql://localhost/vlanka";
		String username="root";
		String password="";
		public boolean insert(String nic,String name,String address,String gender,InputStream inputStream,String landstatus,String telenum,String email,String uname,String pass) {
			
			try {
				
				Encryption enc = new Encryption();
				String encpass=enc.MD5(pass);
				
				Class.forName("com.mysql.jdbc.Driver");
				Connection con=DriverManager.getConnection(url,username,password);
				PreparedStatement st=con.prepareStatement(sql);
				st.setString(1, nic);
				st.setString(2, name);
				st.setString(3, address);
				st.setString(4, gender);
		         if (inputStream != null) {
		                // fetches input stream of the upload file for the blob column
		                st.setBlob(5, inputStream);
		            }
				st.setString(6, landstatus);
				st.setString(7, telenum);
				st.setString(8, email);
				st.setString(9, uname);
				st.setString(10, encpass);
				
				
				int i = st.executeUpdate();
				
				if(i>0) {
					
					return true;
				}
				
			
				
				
			} catch (Exception e) {
				
				e.printStackTrace();
			}
			
			
			return false;
		}
		
		
		public boolean update(String uname,String email,String status,String tele,String address,String gender) {
			
			try {
				Class.forName("com.mysql.jdbc.Driver");
				Connection con=DriverManager.getConnection(url,username,password);
				PreparedStatement st=con.prepareStatement(updatesql);
				st.setString(1, email);
				st.setString(2, status);
				st.setString(3, tele);
				st.setString(4, address);
				st.setString(5, gender);
				st.setString(6, uname);
				
//				st.setString(3, address);
//				st.setString(4, gender);
//				st.setBlob(5,pdf);
//				st.setString(6, landstatus);
//				st.setString(7, telenum);
//				st.setString(8, email);
//				st.setString(9, uname);
//				st.setString(10, pass);
				
				
				
				int i = st.executeUpdate();
				
				if(i>0) {
					
					return true;
				}
				
			}catch (Exception e) {
				
				e.printStackTrace();
			}
			
			
			return false;
		}
	}
	
			
			
			
			
		
		
	



