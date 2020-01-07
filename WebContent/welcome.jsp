<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Insert title here</title>
</head>
<body>

	<%
		//this is the best way to remove the cache 
		response.setHeader("Cache-Control","no-cache, no-store,must-revalidate");//this works on HTTP 1.1 protocol
		
		response.setHeader("Pragma","no-cache");//this is used in older version HTTP protocol->HTTP 1.0
		
		response.setHeader("Expires","0");//used in proxies
	
		if(session.getAttribute("username")==null){
			response.sendRedirect("f_login.jsp");
		}
	
	%>
	
	Welcome ${username}
	
	
	
	<form action="Logout">
		<input type="submit" value="Logout">
	</form>
  
</body>
</html>