package databaseConnectivity;

import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.PreparedStatement;

public class statusCheck {
	
	String updatesql="update field set status=? where field_id = ?";
	String url="jdbc:mysql://localhost/vlanka";
	String username="root";
	String password="";
	
public boolean updateStatus(String field_id,String status) {
		
		try {
			Class.forName("com.mysql.jdbc.Driver");
			Connection con=DriverManager.getConnection(url,username,password);
			PreparedStatement st=con.prepareStatement(updatesql);
			st.setString(1, status);
			st.setString(2, field_id);
						
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
