package landOwner.dao;

import java.io.InputStream;


import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.PreparedStatement;
import java.sql.ResultSet;

	public class postAddDao {

		String sql="insert into postadd (price,details,username,tele_number,image) values(?,?,?,?,?)";
		String url="jdbc:mysql://localhost/vlanka";
		String username="root";
		String password="";
		public boolean insert(String telenum,String price,String details,String uname,InputStream inputStream) {
			
			try {
				Class.forName("com.mysql.jdbc.Driver");
				Connection con=DriverManager.getConnection(url,username,password);
				PreparedStatement st=con.prepareStatement(sql);
				st.setString(1, price);
				st.setString(2, details);
				st.setString(3, uname);
				st.setString(4,telenum);
		         if (inputStream != null) {
		                // fetches input stream of the upload file for the blob column
		                st.setBlob(5, inputStream);
		            }

				
				
				int i = st.executeUpdate();
				
				if(i>0) {
					
					return true;
				}
				
			
				
				
			} catch (Exception e) {
				
				e.printStackTrace();
			}
			
			
			return false;
		}
		
	}
