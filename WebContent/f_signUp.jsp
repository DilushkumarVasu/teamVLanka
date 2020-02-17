<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<%@page import="java.sql.*" %>
<%@page import="javax.sql.*" %>
<%@ page import="java.sql.DriverManager"%>
<%@ page import="java.sql.ResultSet"%>
<%@ page import="java.sql.PreparedStatement"%>
<%@ page import="java.sql.Connection"%>

<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<link rel="stylesheet" type="text/css" href="css/bootstrap.css"/>
<link rel="stylesheet" type="text/css" href="css/bootstrap.js"/>
<link rel="stylesheet" type="text/css" href="css/f_sign.css"/>
<title>Farmer Registration</title>
</head>
<body>
	<div class="container">
		<div class="row">
			<div class="col-md-7">
				<h1 class="text-left">Farmers' Registration Form</h1>
				<p class="text-left">A photographer without a magazine behind him is like a farmer without fields.
				I always wanted to be a farmer. There is a tradition of that in my family.Strong communities are built around local, real food. Food we trust to nourish our bodies, the farmer and planet.
				</p>
			</div>
			<div class="col-md-5">
				<div class="row">
					<div class="col-md-6">
						<h3 class="text-left">Registration Form</h3>
					</div>
					<div class="col-md-6">
						<span class="glyphicon glyphicon-pencil"></span>
					</div>
				</div>
				<hr>
			<form action="FarmerRegistration" onsubmit="return validateForm()" method="post">
				<div class="row">
					<label class="label col-md-2 control-label">Name</label>
					<div class="col-md-10">
						<input type="text" class="form-control" name="name" placeholder="Enter Your Name" required>
					</div>
				</div>
				
				<div class="row">
					<label class="label col-md-2 control-label">NIC</label>
					<div class="col-md-10">
						<input type="text" class="form-control" name="nic" placeholder="NIC Number" required>
					</div>
				</div>
				
				<div class="row">
					<label class="label col-md-2 control-label">Address</label>
					<div class="col-md-10">
						<input type="text" class="form-control" name="add" placeholder="Enter Your Address" required>
					</div>
				</div>
				
				<div class="row">
					<label class="label col-md-2 control-label">Gender</label>
					<div class="col-md-10">
						<!--<input type="text" class="form-control" name="gender" placeholder="Male/Female/Other" required>-->
						<input type="radio" name="gender" value="male" required><small>Male</small>
						<input type="radio" name="gender" value="female" required><small>Female</small>
						<input type="radio" name="gender" value="other" required><small>Other</small>
					</div>
				</div>
				
				<div class="row">
					<label class="label col-md-2 control-label">Phone</label>
					<div class="col-md-10">
						<input type="tel" pattern='^\+?\d{10,10}' class="form-control" name="tp" placeholder="Phone Number" required>
					</div>
				</div>
				
				<div class="row">
					<label class="label col-md-2 control-label">Email</label>
					<div class="col-md-10">
						<input type="email" class="form-control" name="email" placeholder="Email Address" required>
					</div>
				</div>
				
				<div class="row">
					<label class="label col-md-2 control-label">User Name</label>
					<div class="col-md-10">
						<input type="text" class="form-control" name="uname" placeholder="Enter a User Name" required>
					</div>
				</div>
				
				<div class="row">
					<label class="label col-md-2 control-label">Password</label>
					<div class="col-md-10">
						<input type="Password" class="form-control" name="pass" placeholder="Password" id="password" required>
						<!--<input type="checkbox"><small>I agree the terms & policy</small>-->
					</div>
				</div>
				
				<div class="row">
					<label class="label col-md-2 control-label">RePassword</label>
					<div class="col-md-10">
						<input type="Password" class="form-control" name="conpass" placeholder="RePassword" id="confirm_password" required>
						<!--<input type="checkbox"><small>I agree the terms & policy</small>-->
					</div>
				</div>
				
				<!--<div class="row">
					<label class="label col-md-2 control-label">User Image</label>
					<div class="col-md-10 pt-5">
						<input type="file" class="form-control" name="pic" accept="image/*" required>
					</div>
				</div>
				-->
				<script>
				var password = document.getElementById("password")
				  , confirm_password = document.getElementById("confirm_password");

				function validatePassword(){
				  if(password.value != confirm_password.value) {
				    confirm_password.setCustomValidity("Passwords Don't Match");
				  } else {
				    confirm_password.setCustomValidity('');
				  }
				}

				password.onchange = validatePassword;
				confirm_password.onkeyup = validatePassword;
				</script>
				
				
				<button type="submit" class="btn btn-info" value="submit">Submit</button>
				<a href="f_signUp.jsp"><div class="btn btn-warning">Cancel</div></a>
			</form>
			</div>
		</div>
	</div>

</body>
</html>


