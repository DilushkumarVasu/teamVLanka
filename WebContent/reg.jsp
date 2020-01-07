<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Insert title here</title>
</head>
<body>
<%@page import="java.sql.*" %>
<%@page import="javax.sql.*" %>
<%@ page import="java.sql.DriverManager"%>
<%@ page import="java.sql.ResultSet"%>
<%@ page import="java.sql.PreparedStatement"%>
<%@ page import="java.sql.Connection"%>

<%
/*String nic=request.getParameter("nic");
String name=request.getParameter("name");
String address=request.getParameter("add");
String gender=request.getParameter("gender");
String telephone=request.getParameter("tel");
String email=request.getParameter("email");
String uname=request.getParameter("uname");
String pass=request.getParameter("pass");
Class.forName("com.mysql.jdbc.Driver");
java.sql.Connection con=DriverManager.getConnection("jdbc:mysql://localhost/vlanka","root","");
Statement st=con.createStatement();
ResultSet rs;
int i=st.executeUpdate("insert into farmer values('"+nic+"','"+name+"','"+address+"','"+gender+"','"+telephone+"','"+email+"','"+uname+"','"+pass+"')");

response.sendRedirect("login.jsp");*/




String nic=request.getParameter("nic");
String name=request.getParameter("name");
String address=request.getParameter("add");
String gender=request.getParameter("gender");
String telephone=request.getParameter("tel");
String email=request.getParameter("email");
String uname=request.getParameter("uname");
String pass=request.getParameter("pass");
String conpass=request.getParameter("conpass");
String host="jdbc:mysql://localhost/vlanka";
Connection conn=null;
PreparedStatement stat=null;
Class.forName("com.mysql.jdbc.Driver").newInstance();
if(nic!=null && name!=null && address!=null && gender!=null && telephone!=null && email!=null && uname!=null && pass!=null)
{
	conn=DriverManager.getConnection(host,"root","");
	String data="insert into farmer values(?,?,?,?,?,?,?,?) ";
	stat=conn.prepareStatement(data);
	stat.setString(1,nic);
	stat.setString(2,name);
	stat.setString(3,address);
	stat.setString(4,gender);
	stat.setString(5,telephone);
	stat.setString(6,email);
	stat.setString(7,uname);
	stat.setString(8,pass);
	stat.executeUpdate();
	
	response.sendRedirect("f_login.jsp");
}


%>

<% /*String pswrd1 = request.getParameter("pass");
   String pswrd2 = request.getParameter("conpass");
   if (pswrd1!=null && pswrd2!=null){
	   if (!pswrd1.equals(pswrd2)){
		   response.sendRedirect("error.jsp");
	   }
   }*/
%>
</body>
</html>