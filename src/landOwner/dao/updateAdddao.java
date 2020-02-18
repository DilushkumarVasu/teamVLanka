package landOwner.dao;

import java.io.InputStream;


import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.PreparedStatement;
import java.sql.ResultSet;

	public class updateAdddao {

		String sql="update postadd set price=?,details=?,tele_number=? where addId =?";
		String url="jdbc:mysql://localhost/vlanka";
		String username="root";
		String password="";
		public boolean update(String telenum,String price,String details,String addid) {
			
			try {
				Class.forName("com.mysql.jdbc.Driver");
				Connection con=DriverManager.getConnection(url,username,password);
				PreparedStatement st=con.prepareStatement(sql);
				st.setString(1, price);
				st.setString(2, details);
				st.setString(3, telenum);
				st.setString(4, addid);
			
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
