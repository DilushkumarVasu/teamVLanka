package farmer;

import java.io.IOException;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import java.sql.DriverManager;
import java.sql.ResultSet;
import java.sql.PreparedStatement;
import java.sql.Connection;
import java.sql.*;

import userTypes.Farmer;

@WebServlet("/ques")
public class ques extends HttpServlet{
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		
		String a=request.getParameter("nic");
		String b=request.getParameter("date");
		String c=request.getParameter("question");
		Farmer f = new Farmer();
		f.question(a, b, c);
		response.sendRedirect("Question.jsp");
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
