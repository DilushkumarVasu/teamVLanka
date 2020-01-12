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

<!-- Meta tag Keywords -->
	<meta name="viewport" content="width=device-width, initial-scale=1">
	<meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
	<meta name="keywords" content="Simple Signin Form Responsive Widget,Login form widgets, Sign up Web forms , Login signup Responsive web form,Flat Pricing table,Flat Drop downs,Registration Forms,News letter Forms,Elements"
	/>
	<script>
		addEventListener("load", function () {
			setTimeout(hideURLbar, 0);
		}, false);

		function hideURLbar() {
			window.scrollTo(0, 1);
		}
	</script>
	<!-- Meta tag Keywords -->
	<!-- css files -->
	<link rel="stylesheet" href="css/l_style.css" type="text/css" media="all" />
	<!-- Style-CSS -->
	<link rel="stylesheet" href="css/l_font-awesome.css">
	<!-- Font-Awesome-Icons-CSS -->
	<!-- //css files -->
	<!-- web-fonts -->
	<link href="//fonts.googleapis.com/css?family=Play:400,700" rel="stylesheet">
	<link href="//fonts.googleapis.com/css?family=Open+Sans:300,300i,400,400i,600,600i,700,700i,800,800i" rel="stylesheet">
	<!-- //web-fonts -->
<title>Farmer Registration</title>
</head>
<body>
	<!--<div class="container">
		<div class="row">
			<div class="col-md-7">
				<h1 class="text-left">Landowners' Registration Form</h1>
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
						
						<input type="radio" name="gender" value="male" required><small>Male</small>
						<input type="radio" name="gender" value="female" required><small>Female</small>
						<input type="radio" name="gender" value="other" required><small>Other</small>
					</div>
				</div>
				
				<div class="row">
					<label class="label col-md-2 control-label">Land Status</label>
					<div class="col-md-10">
						<input type="text" class="form-control" name="status" placeholder="Enter the land status" required>
					</div>
				</div>
				
				<div class="row">
					<label class="label col-md-2 control-label">Phone</label>
					<div class="col-md-10">
						<input type="tel" class="form-control" name="tp" placeholder="Phone Number" required>
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
						
					</div>
				</div>
				
				
				<div class="row">
					<label class="label col-md-2 control-label">RePassword</label>
					<div class="col-md-10">
						<input type="Password" class="form-control" name="conpass" placeholder="RePassword" id="confirm_password" required>
						
					</div>
				</div>
				
				<div class="row">
				<div class="file-upload-wrapper">
				    <label class="label col-md-2 control-label">Land Document</label>
				    <div class="col-md-10">
  						<input type="file" id="input-file-max-fs" class="file-upload" data-max-file-size="100M" />
  					</div>
				</div>
				</div>
				
				<script>$('.file-upload').file_upload();</script>
				
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
	</div>-->
	<!--Author: W3layouts
Author URL: http://w3layouts.com
License: Creative Commons Attribution 3.0 Unported
License URL: http://creativecommons.org/licenses/by/3.0/
-->


	<!--header-->
	<div class="header-w3l">
		<h1>
			<span>Land Owner Login</span>
		</h1>
	</div>
	<!--//header-->
	<div class="main-content-agile">
		<div class="sub-main-w3">
			<h2>Log In Now</h2>
			<form action="lLogin" method="post">
				<label>Username</label>
				<div class="pom-agile">
					<span class="fa fa-user-o" aria-hidden="true"></span>
					<input placeholder="Username" name="uname" class="user" type="text" required="">
				</div>
				<label>Password</label>
				<div class="pom-agile">
					<span class="fa fa-key" aria-hidden="true"></span>
					<input placeholder="Password" name="pass" class="pass" type="password" required="">
				</div>
				<div class="sub-w3l">
					<div class="sub-agile">
						<input type="checkbox" id="brand1" value="">
						<label for="brand1">
							<span></span>Keep me Signed in</label>
					</div>
					<a href="#">Forgot Password?</a>
					<div class="clear"></div>
				</div>
				<div class="right-w3l">
					<input type="submit" value="Login">
				</div>
			</form>
		</div>
	</div>
	<!--//main-->
	


</body>
</html>

