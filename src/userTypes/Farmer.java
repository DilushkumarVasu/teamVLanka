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

public class Farmer {
	public Connection connect() {
		String conString="jdbc:mysql://localhost/vlanka";
		Properties prp = new Properties();
		prp.put("user", "root");
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
	public void Register(String name, String nic, String address, String gender, String tp, String email, String username, String password) { 
		try {
			MessageDigest digest = MessageDigest.getInstance("SHA-256");
			String hash = digest.digest(password.getBytes(StandardCharsets.UTF_8)).toString();
				
			Connection con = connect(); 
			PreparedStatement pst = con.prepareStatement("INSERT INTO farmer(`nic`, `name`, `address`, `gender`, `telephone`, `email`, `username`, `password`) VALUES (?, ?, ?, ?, ?, ?, ?, ?)");
				
			pst.setString(1, nic); 
			pst.setString(2, name);
			pst.setString(3, address);
			pst.setString(4, gender);
			pst.setString(5, tp);
			pst.setString(6, email);
			pst.setString(7, username);
			pst.setString(8, hash);
			
			
			pst.execute();
			
			
			
		}
		catch (Exception e) {
		}
		
	}
	
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


}
