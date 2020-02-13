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

public class Farmer {
	String sql="insert into farmer values(?,?,?,?,?,?,?,?)";
	String updatesql="update farmer set nic=?,name=?,address=?,gender=?,telephone=?,email=? where username = ?";
	String data="insert into f_ques(f_id,date,question) values(?,?,?)";
	String url="jdbc:mysql://localhost/vlanka";
	String username="root";
	String password="";
	
	//problem is with this function
	public boolean insert(String name, String nic, String address, String gender, String tp, String email, String uname, String pass) { 
		try {
			MessageDigest digest = MessageDigest.getInstance("SHA-256");
			String hash = digest.digest(pass.getBytes(StandardCharsets.UTF_8)).toString();
			//File image= new File(pic);
			
			Class.forName("com.mysql.jdbc.Driver");
			Connection con=DriverManager.getConnection(url,username,password); 
			PreparedStatement stat=con.prepareStatement(sql);
				
				
				
				stat.setString(1,nic);
				stat.setString(2,name);
				stat.setString(3,address);
				stat.setString(4,gender);
				stat.setString(5,tp);
				stat.setString(6,email);
				stat.setString(7,uname);
				stat.setString(8,hash);
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
	
	/*public boolean insert(String nic,String name,String address,String gender,InputStream pdf,String landstatus,String telenum,String email,String uname,String pass ) {
		
		try {
			Class.forName("com.mysql.jdbc.Driver");
			Connection con=DriverManager.getConnection(url,username,password);
			PreparedStatement st=con.prepareStatement(sql);
			st.setString(1, nic);
			st.setString(2, name);
			st.setString(3, address);
			st.setString(4, gender);
			st.setBlob(5,pdf);
			st.setString(6, landstatus);
			st.setString(7, telenum);
			st.setString(8, email);
			st.setString(9, uname);
			st.setString(10, pass);
			
			int i = st.executeUpdate();
			
			if(i>0) {
				
				return true;
			}
			
		
			
			
		} catch (Exception e) {
			
			e.printStackTrace();
		}
		
		
		return false;
	}*/
	
	public boolean update(String name,String nic,String address,String gender,String tele,String email,String uname) {
		
		try {
			Class.forName("com.mysql.jdbc.Driver");
			Connection con=DriverManager.getConnection(url,username,password);
			PreparedStatement st=con.prepareStatement(updatesql);
			st.setString(1, nic);
			st.setString(2, name);
			st.setString(3, address);
			st.setString(4, gender);
			st.setString(5, tele);
			st.setString(6, email);
			st.setString(7, uname);
			
			int i = st.executeUpdate();
			
			if(i>0) {
				
				return true;
			}
			
		}catch (Exception e) {
			
			e.printStackTrace();
		}
		
		
		return false;
	}
	
	public boolean question(String nic,String date,String question)  {
		try{
		
		
			Class.forName("com.mysql.jdbc.Driver");
			Connection conn=DriverManager.getConnection(url,username,password);
			PreparedStatement stat=conn.prepareStatement(data);
			
			stat.setString(1,nic);
			stat.setString(2,date);
			stat.setString(3,question);

			int i = stat.executeUpdate();
			
			if(i>0) {
				
				return true;
			}
			
		}catch(Exception e) {
			e.printStackTrace();
		}
		return false;
	}
	


}
