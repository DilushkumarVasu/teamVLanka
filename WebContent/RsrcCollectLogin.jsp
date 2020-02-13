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
		<form class="box" action="Rlogin" method="post">
			<h1>Resource Collector</h1>
			<input type="text" name="uname" placeholder="Username" required>
			<input type="password" name="pass" placeholder="Password" required>
			<input type="submit" name="submit" value="Login">
			<a href="ForgetPass.jsp">Forget Password?</a>
		</form>
	</body>
</html>