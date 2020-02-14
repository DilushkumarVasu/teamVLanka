package admin.dao;

import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.PreparedStatement;
import java.sql.ResultSet;

public class AdmDele {
	String sql="delete from admin where a_id=?";
	String url="jdbc:mysql://localhost/vlanka";
	String username="root";//localhost username
	String pass="";//localhost password
	public boolean delete(String a_id) {
		
		try {
			Class.forName("com.mysql.jdbc.Driver");
			Connection con=DriverManager.getConnection(url,username,pass);
			
			
			PreparedStatement st=con.prepareStatement(sql);
			st.setString(1, a_id);
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