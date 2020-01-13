package landOwner.dao;



import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.PreparedStatement;
import java.sql.ResultSet;

	public class lOwnersignup {

		String sql="insert into landowner values(?,?,?,?,?,?,?,?,?)";
		String url="jdbc:mysql://localhost/vlanka";
		String username="root";
		String password="";
		public boolean insert(String nic,String name,String address,String gender,String landstatus,String telenum,String email,String uname,String pass ) {
			
			try {
				Class.forName("com.mysql.jdbc.Driver");
				Connection con=DriverManager.getConnection(url,username,password);
				PreparedStatement st=con.prepareStatement(sql);
				st.setString(1, nic);
				st.setString(2, name);
				st.setString(3, address);
				st.setString(4, gender);
				st.setString(5, landstatus);
				st.setString(6, telenum);
				st.setString(7, email);
				st.setString(8, uname);
				st.setString(9, pass);
				
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



