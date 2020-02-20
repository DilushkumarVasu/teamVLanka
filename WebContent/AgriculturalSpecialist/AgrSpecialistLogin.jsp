<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
	<head>
		<meta charset="utf-8">
		<title>Login</title>
		<link rel="stylesheet" type="text/css" href="css/f_style.css">
	</head>
	<body>
		<%
			String msg = "";
			if(request.getAttribute("error") != null){
				msg =request.getAttribute("error").toString();
				out.print("<script> window.alert(\""+ msg +"\"); </script>");
				msg = "";
			}
		%>
		
			
		<form class="box" action="../AgriculturalSpecialistLogin" method="post">
			<h1>Agricultural Specialist Login</h1>
			<input type="text" name="nic" placeholder="NIC">
			<input type="password" name="pass" placeholder="Password">
			<input type="submit" name="submit" value="Login">
		</form>
	</body>
</html>