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
		<h3>User Question Details</h3>
	</div>
</div>

<form action="#" method="post">
	
	<input type="hidden" name="id" value="">
	<div class="form-group">
		<label>Name</label>
		<input type="text" class="form-control" name="name" value=""/>
	</div>
	<div class="form-group">
		<label>NIC</label>
		<input type="text" class="form-control" name="nic" value=""/>
	</div>
	<div class="form-group">
		<label>Address</label>
		<input type="text" class="form-control" name="add" value=""/>
	</div>
	<div class="form-group">
		<label>Gender</label>
		<input type="text" class="form-control" name="gender" value=""/>
	</div>
	<div class="form-group">
		<label>Phone Number</label>
		<input type="tel" class="form-control" name="tp" value=""/>
	</div>
	<div class="form-group">
		<label>Email</label>
		<input type="email" class="form-control" name="email" value=""/>
	</div>
	<div class="form-group">
		<label>User Name</label>
		<input type="text" class="form-control" name="uname" value=""/>
	</div>
	
	<button type="submit" class="btn btn-warning">Update</button>
	<a href="userPro.jsp" class="btn btn-default">Back</a>
</form>

</div>
</body>
</html>
