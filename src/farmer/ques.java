package farmer;

import java.io.IOException;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import org.omg.CORBA.UserException;

import databaseConnectivity.dbConnection;

import java.sql.*;
import java.text.SimpleDateFormat;
import java.time.LocalDateTime;
import java.time.format.DateTimeFormatter;
import java.util.*;

import userTypes.Farmer;

@WebServlet("/ques")
public class ques extends HttpServlet{
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		String username = request.getParameter("uname");
		String question = request.getParameter("question");
		
		//For debugging purposes
		//System.err.println(username);
		//System.err.println(question);
		
		try {
			Connection con = dbConnection.getConnection();
			String sql = "INSERT INTO Questions(nic, title, body, date) VALUES (?, ?, ?, ?)";
			DateTimeFormatter dtf = DateTimeFormatter.ofPattern("yyyy/MM/dd HH:mm:ss");  
			LocalDateTime now = LocalDateTime.now(); 
			String timeStamp = now.toString();

	        
	        
			PreparedStatement pst = con.prepareStatement(sql);
			pst.setString(1, username);
			pst.setString(2, question.substring(0, 10));
			pst.setString(3, question);
			pst.setString(4, timeStamp);
			
			pst.execute();
		} catch (Exception e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}
		
		
		
		/*
		String a=request.getParameter("nic");
		String b=request.getParameter("date");
		String c=request.getParameter("question");
		Farmer f = new Farmer();
		f.question(a, b, c);
		if(a!=null && b!=null && c!=null) {
			response.sendRedirect("viewQues.jsp");
		}
		*/
		
		/*String host="jdbc:mysql://localhost/vlanka";
		Connection conn=null;
		PreparedStatement stat=null;
		Class.forName("com.mysql.jdbc.Driver").newInstance();
		if(a!=null && b!=null && c!=null)
		{
			conn=DriverManager.getConnection(host,"root","");
			String data="insert into f_ques(f_id,date,question) values(?,?,?)";
			stat=conn.prepareStatement(data);
			stat.setString(1,a);
			stat.setString(2,b);
			stat.setString(3,c);
			stat.executeUpdate();
			response.sendRedirect("Question.jsp");
		}*/
	}
}
