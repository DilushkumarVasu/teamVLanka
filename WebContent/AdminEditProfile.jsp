<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<%@ page import="java.sql.DriverManager"%>
<%@ page import="java.sql.ResultSet"%>
<%@ page import="java.sql.PreparedStatement"%>
<%@ page import="java.sql.Statement"%>
<%@ page import="java.sql.Connection"%>
<%@page import="java.sql.*" %>
<!DOCTYPE html>
<html>
<head>
	<meta charset="ISO-8859-1">
	<link href="css/bootstrap.css" rel="stylesheet" type="text/css" media="all" />
	<title>Insert title here</title>
</head>
<body>
   <div class="container">


<p><br></p>
<div class="row">
	<div class="col-md-4">
		<h3>Edit Your Details</h3>
	</div>
</div>

<form action="admEdit" method="post">
	
	
	<div class="form-group">
		<label>Admin Id</label>
		<input type="text" class="form-control" name="a_id" value="${a_id}"/>
	</div>
	<div class="form-group">
		<label>Name</label>
		<input type="text" class="form-control" name="name" value="${name}"/>
	</div>
	<div class="form-group">
		<label>Gender</label>
		<input type="text" class="form-control" name="gender" value="${gender}"/>
	</div>
	<div class="form-group">
		<label>Address</label>
		<input type="text" class="form-control" name="address" value="${address}"/>
	</div>
	<div class="form-group">
		<label>Contact Number</label>
		<input type="tel" class="form-control" name="phone" value="${phone}"/>
	</div>
	<div class="form-group">
		<label>Email</label>
		<input type="email" class="form-control" name="email" value="${email}"/>
	</div>
	
	<button type="submit" class="btn btn-warning">Update</button>
	<a href="AdminPro.jsp" class="btn btn-default">Back</a>
</form>

</div>
</body>
</html>
