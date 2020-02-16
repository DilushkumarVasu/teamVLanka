<%@ page import="java.sql.DriverManager"%>
<%@ page import="java.sql.Statement"%>
<%@ page import="java.sql.Connection"%>

<%
String id=request.getParameter("d");
String host="jdbc:mysql://localhost/vlanka";
Connection conn=null;

Class.forName("com.mysql.jdbc.Driver").newInstance();
conn=DriverManager.getConnection(host,"root","");
Statement stat=conn.createStatement();
String sql="update from userad where adver_id='"+id+"'";
stat.executeUpdate(sql);
response.sendRedirect("RsrcHome.jsp");
%>
