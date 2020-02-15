package rsrccollector.dao;


import java.io.InputStream;
import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.PreparedStatement;
import java.sql.ResultSet;

import demo.Encryption;

	public class Rregisterdao {

			String sql="insert into rsrccollector values(?,?,?,?,?,?,?,?,?)";
		// String updatesql="update rsrccollector set email = ?,land_status= ?,telephone=?,address = ?,gender=? where username = ?";
			String url="jdbc:mysql://localhost/vlanka";
			String username="root";
			String password="";
			public boolean insert(String r_id, String name,String nic,String address,String email,String telephone,String area,String uname,String pass) {
				
				try {
					
					Encryption enc=new Encryption();
					String encPass=enc.MD5(pass);
					
					
					Class.forName("com.mysql.jdbc.Driver");
					Connection con=DriverManager.getConnection(url,username,password);
					PreparedStatement st=con.prepareStatement(sql);
					st.setString(1, r_id);
					st.setString(2, name);
					st.setString(3, nic);
					st.setString(4, address);
					st.setString(5, email);
					st.setString(6, telephone);
					st.setString(7, area);
					st.setString(8, uname);
					st.setString(9, encPass);
					
					int i = st.executeUpdate();
					
					if(i>0) {
						
						return true;
					}
					
				
					
					
				} catch (Exception e) {
					
					e.printStackTrace();
				}
				
				
				return false;
			}
			
			
	/*		public boolean update(String uname,String email,String status,String tele,String address,String gender) {
				
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
					
//           		st.setString(3, address);
//					st.setString(4, gender);
//					st.setBlob(5,pdf);
//					st.setString(6, landstatus);
//					st.setString(7, telenum);
//					st.setString(8, email);
//					st.setString(9, uname);
//					st.setString(10, pass);
					
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
		
				
				*/
}
