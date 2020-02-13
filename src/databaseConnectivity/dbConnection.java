package databaseConnectivity;

import java.sql.*;

public class dbConnection {

	private String dbName = "Df9EeGHg2O";
	private String username = "Df9EeGHg2O";
	private String password = "quVr1IL8uH";
	private String conString = "jdbc:mysql://remotemysql.com:3306/" + dbName;
	private Connection con;
	
	public Connection connect() throws SQLException, ClassNotFoundException {
		Class.forName("com.mysql.jdbc.Driver");
		Connection conn = DriverManager.getConnection(conString, username, password);
			
		return conn;
	}
	
	public void disconnect() throws SQLException {
		if(!con.isClosed())
			con.close();
	}
	
	

}
