package databaseConnectivity;

import java.sql.*;

public class dbConnection {

	private static String dbName = "Df9EeGHg2O";
	private static String username = "Df9EeGHg2O";
	private static String password = "quVr1IL8uH";
	private static String conString = "jdbc:mysql://remotemysql.com:3306/" + dbName;
	
	
	public static Connection getConnection() throws SQLException, ClassNotFoundException {
		Class.forName("com.mysql.cj.jdbc.Driver");
		Connection conn = DriverManager.getConnection(conString, username, password);
		
		return conn;
	}
}
