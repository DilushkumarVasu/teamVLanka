package testingServlets;


import java.sql.*;
import java.io.IOException;
import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.SQLException;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

/**
 * Servlet implementation class Testing
 */
@WebServlet("/Testing")
public class Testing extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    /**
     * @see HttpServlet#HttpServlet()
     */
    public Testing() {
        super();
        // TODO Auto-generated constructor stub
    }

	/**
	 * @see HttpServlet#doGet(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
		response.getWriter().append("Served at: ").append(request.getContextPath());
		
		try {
			Class.forName("com.mysql.jdbc.Driver");
			Connection con = DriverManager.getConnection("jdbc:mysql://remotemysql.com:3306/Df9EeGHg2O", "Df9EeGHg2O", "quVr1IL8uH");
			java.sql.Statement stmt = con.createStatement();
			String sql = "SELECT * FROM myTable";
			ResultSet rs = stmt.executeQuery(sql);
			response.getWriter().append(rs.toString());
			while(rs.next())
				response.getWriter().append("\n").append(rs.getString(2));
			
			
		} catch (SQLException | ClassNotFoundException e) {
			// TODO Auto-generated catch block
			//e.printStackTrace();
			response.getWriter().append(e.getMessage());
		}
		
		//Class.forName("com.mysql.jdbc.Driver");
		//Connection conn = DriverManager.getConnection(conString, prp);
//		try {
//			//Connection con = DriverManager.getConnection("jdbc:mysql://remotemysql.com:3306/Df9EeGHg2O");
//		} catch (SQLException e) {
//			// TODO Auto-generated catch block
//			e.printStackTrace();
//			response.getWriter().append(e.getMessage());
//		}
	}

	/**
	 * @see HttpServlet#doPost(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
		doGet(request, response);
	}

}
