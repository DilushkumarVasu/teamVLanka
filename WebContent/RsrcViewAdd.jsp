<%@ page import="java.io.*"%>
<%@ page import="java.sql.DriverManager"%>
<%@ page import="java.sql.ResultSet"%>
<%@ page import="java.sql.Statement"%>
<%@ page import="java.sql.Connection"%>
<%@ page import="java.sql.*"%>

<% Blob image = null;
	String id=request.getParameter("d");
	String host="jdbc:mysql://localhost/vlanka";
	Connection conn=null;
	byte[ ] imgData = null ;
	Statement stmt = null;
	ResultSet rs = null;

		try {

			Class.forName("com.mysql.jdbc.Driver").newInstance();
			conn=DriverManager.getConnection(host,"root","");
			Statement stat=conn.createStatement();
			rs = stmt.executeQuery("select content from userad adver_id='"+id+"'");

				if (rs.next()) {
					image = rs.getBlob(1);
					imgData = image.getBytes(1,(int)image.length());
				} 				
				else {
					out.println("Display Blob Example");
					out.println("image not found for given id>");
					return;
				}

// display the image

				response.setContentType("image/pdf");
				OutputStream o = response.getOutputStream();
				o.write(imgData);
				o.flush();
				o.close();

	}		
			catch (Exception e) {
				out.println("Unable To Display image");
				out.println("Image Display Error=" + e.getMessage());
				return;

			}
			finally {

				try {
					rs.close();
					stmt.close();
					conn.close();
				} 				

				catch (SQLException e) {
     			e.printStackTrace();

			}

}

%>