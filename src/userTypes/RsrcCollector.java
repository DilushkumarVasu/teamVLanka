package userTypes;

import java.util.Properties;
import java.util.ArrayList;
import java.util.List;
import java.sql.DriverManager;
import java.sql.PreparedStatement;
import java.awt.print.Printable;
import java.nio.charset.StandardCharsets;
import java.security.MessageDigest;
import java.sql.Connection;
import java.sql.Statement;
import java.sql.ResultSet;
import java.sql.SQLException;

import javax.servlet.http.HttpServletResponse;

public class RsrcCollector {
	public Connection connect() {
		String conString="jdbc:mysql://localhost/vlanka";
		Properties prp = new Properties();
		prp.put("user", "root");
		prp.put("password","");
		/*String username="root";
		String password="";*/
		
		try {
			Class.forName("com.mysql.jdbc.Driver");
			Connection conn = DriverManager.getConnection(conString, prp);
			/*Class.forName("com.mysql.jdbc.Driver");
			Connection conn=DriverManager.getConnection(conString,username,password);*/
			
			return conn;
		}
		
		catch(Exception e){
			return null;
		}
	}
	
	//problem is with this function
	public void Register(String name, String nic, String address, String email, String telephone, String area, String username, String password) { 
		try {
			MessageDigest digest = MessageDigest.getInstance("SHA-256");
			String hash = digest.digest(password.getBytes(StandardCharsets.UTF_8)).toString();
				
			Connection con = connect(); 
			PreparedStatement stat=null;
			if(nic!=null && name!=null && address!=null && email!=null && telephone!=null && area!=null && username!=null && password!=null)
			{
				
				String data="insert into rsrccollector values(?,?,?,?,?,?,?,?) ";
				stat=con.prepareStatement(data);
				stat.setString(1,nic);
				stat.setString(2,name);
				stat.setString(3,address);
				stat.setString(4,email);
				stat.setString(5,telephone);
				stat.setString(6,area);
				stat.setString(7,username);
				stat.setString(8,password);
				stat.executeUpdate();
				
			}
			}catch(Exception e) {
				
			}
				
			/*pst.setString(1, nic); 
			pst.setString(2, name);
			pst.setString(3, address);
			pst.setString(4, email);
			pst.setString(5, telephone);
			pst.setString(6, area);
			pst.setString(7, username);
			pst.setString(8, password);
			
			
			pst.execute();
			
			
			
		}
		catch (Exception e) {
		}*/
		
	}
/*	
	public void question(String nic,String date,String question)  {
		try{
		Connection conn=connect();
		PreparedStatement stat=null;
		if(nic!=null && date!=null && question!=null)
		{
			
			String data="insert into f_ques(f_id,date,question) values(?,?,?)";
			stat=conn.prepareStatement(data);
			stat.setString(1,nic);
			stat.setString(2,date);
			stat.setString(3,question);
			stat.executeUpdate();
			
		}
		}catch(Exception e) {
			
		}
	}
*/

}
