package databaseConnectivity;

import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.SQLException;

public class LocalDBConnection{
	private static String dbName = "vlanka";
	private static String username = "root";
	private static String password = "";
	private static String conString = "jdbc:mysql://localhost:3306/" + dbName;
	
	
	public static Connection getConnection() throws SQLException, ClassNotFoundException {
		Class.forName("com.mysql.cj.jdbc.Driver");
		Connection conn = DriverManager.getConnection(conString, username, password);
		
		return conn;
	}

}