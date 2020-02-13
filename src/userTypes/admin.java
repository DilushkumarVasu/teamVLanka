package userTypes;

import java.util.Properties;
import java.util.ArrayList;
import java.util.List;
import java.sql.DriverManager;
import java.sql.PreparedStatement;
import java.awt.print.Printable;
import java.io.File;
import java.io.FileInputStream;
import java.nio.charset.StandardCharsets;
import java.security.MessageDigest;
import java.sql.Connection;
import java.sql.Statement;
import java.sql.ResultSet;
import java.sql.SQLException;

import javax.servlet.http.HttpServletResponse;

import org.omg.CORBA.portable.InputStream;

import demo.Encryption;

public class admin {
	String sql="insert into admin values(?,?,?,?,?,?,?)";
	String updatesql="update admin set name=?,address=?,gender=?,phone=?,email=? where a_id = ?";
	//String data="insert into f_ques(f_id,date,question) values(?,?,?)";
	String url="jdbc:mysql://localhost/vlanka";
	String username="root";
	String pass="";
	
	//problem is with this function
	public boolean insert(String a_id, String name, String gender, String address, String phone, String email, String password) { 
		try {
			//MessageDigest digest = MessageDigest.getInstance("SHA-256");
			//String hash = digest.digest(password.getBytes(StandardCharsets.UTF_8)).toString();
			//File image= new File(pic);
			Encryption enc=new Encryption();
			String hash=enc.MD5(password);
			Class.forName("com.mysql.jdbc.Driver");
			Connection con=DriverManager.getConnection(url,username,pass); 
			PreparedStatement stat=con.prepareStatement(sql);
				
				
				
				stat.setString(1,a_id);
				stat.setString(2,name);
				stat.setString(3,gender);
				stat.setString(4,address);
				stat.setString(5,phone);
				stat.setString(6,email);
				stat.setString(7,hash);
				/*FileInputStream fis = new FileInputStream(image);
				stat.setBinaryStream(9, fis, (int) (image.length()));
				stat.executeUpdate();//execute query*/
				
				int i = stat.executeUpdate();
				
				if(i>0) {
					
					return true;
				}
				
			}catch(Exception e) {
				e.printStackTrace();
			}
				
		return false;
		
	}
	
	
	public boolean update(String a_id,String name,String gender,String address,String phone,String email) {
		
		try {
			Class.forName("com.mysql.jdbc.Driver");
			Connection con=DriverManager.getConnection(url,username,pass);
			PreparedStatement st=con.prepareStatement(updatesql);
			st.setString(1, name);
			st.setString(2, gender);
			st.setString(3, address);
			st.setString(4, phone);
			st.setString(5, email);
			st.setString(6, a_id);
			
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

