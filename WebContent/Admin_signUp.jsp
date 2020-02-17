<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
	<script src="http://ajax.googleapis.com/ajax/libs/jquery/1.10.2/jquery.min.js"></script>
 	<script src="https://cdnjs.cloudflare.com/ajax/libs/jquery-form-validator/2.3.26/jquery.form-validator.min.js"></script>
	<title>Registration system PHP and MySQL</title>
	<link rel="stylesheet" href="css/ad_style.css">
	
	<!--<link rel="stylesheet" type="text/css" href="css/bootstrap.css"/>
	<link rel="stylesheet" type="text/css" href="css/bootstrap.js"/>
	<link rel="stylesheet" type="text/css" href="css/f_sign.css"/>-->
</head>
<body>
<div class="header">
	<h2>Admin Register</h2>
</div>
<form method="post" action="adminRegistration">
	<div class="input-group">
		<label>Admin ID</label>
		<input type="text" name="a_id" Placeholder="Enter Your Emloyee ID" required>
	</div>
	<div class="input-group">
		<label>Admin Name</label>
		<input type="text" name="name" Placeholder="Enter Your name" required>
	</div>
	<!--<div class="input-group">
		<label>Gender</label>
		<input type="text" name="gender" Placeholder="Male/Female/Other" required >
	</div>-->
	
	<div class="row">
		<label class="label col-md-2 control-label">Gender</label>
		<div class="col-md-10">
			<input type="radio" name="gender" value="male" required><small>Male</small>
			<input type="radio" name="gender" value="female" required><small>Female</small>
			<input type="radio" name="gender" value="other" required><small>Other</small>
		</div>
	</div>
	
	<div class="input-group">
		<label>Address</label>
		<input type="text" name="address" Placeholder="Enter Your address" required>
	</div>
	<div class="input-group">
		<label>Phone</label>
		<input type="tel" pattern='^\+?\d{10,10}' name="phone" Placeholder="Enter phone number" required>
	</div>
	<div class="input-group">
		<label>Email</label>
		<input type="email" name="email" Placeholder="Enter valid email" data-validation="email" data-validation-help="example@gmail.com">
	</div>
	<div class="input-group">
		<label>Password</label>
		<input type="password" name="password" Placeholder="Enter a strong password" id="password_1" required>
	</div>
	<div class="input-group">
		<label>Confirm password</label>
		<input type="password" name="conpassword" Placeholder="Confirm your password" id="password_2" required>
	</div>
	<div class="input-group">
		<button type="submit" class="btn" name="register_btn">Register</button>
	</div>
	<p>
		Already a member? <a href="Admin_login.jsp">Sign in</a>
	</p>
</form>



<!-- ------sample form ------ -->
<!--<div class="container">
		<div class="row">
			<div class="col-md-5">
				<div class="row">
					<div class="col-md-6">
						<h3 class="text-left">Admin Register</h3>
					</div>
					<div class="col-md-6">
						<span class="glyphicon glyphicon-pencil"></span>
					</div>
				</div>
				<hr>
			<form method="post" action="adminRegistration" onsubmit="return validateForm()">
			
				<div class="row">
					<label class="label col-md-2 control-label">Admin Id</label>
					<div class="col-md-10">
						<input type="text" class="form-control" name="a_id" placeholder="Enter your Employee Id" required>
					</div>
				</div>
				
				<div class="row">
					<label class="label col-md-2 control-label">Name</label>
					<div class="col-md-10">
						<input type="text" class="form-control" name="name" placeholder="Enter your name" required>
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
					<label class="label col-md-2 control-label">Address</label>
					<div class="col-md-10">
						<input type="text" class="form-control" name="address" placeholder="Enter Your Address" required>
					</div>
				</div>
				
				<div class="row">
					<label class="label col-md-2 control-label">Contact Number</label>
					<div class="col-md-10">
						<input type="tel" class="form-control" name="phone" placeholder="Your Phone Number" required>
					</div>
				</div>
				
				<div class="row">
					<label class="label col-md-2 control-label">Email</label>
					<div class="col-md-10">
						<input type="email" class="form-control" name="email" placeholder="Email Address" required>
					</div>
				</div>
				
				<div class="row">
					<label class="label col-md-2 control-label">Password</label>
					<div class="col-md-10">
						<input type="Password" class="form-control" name="password" placeholder="Enter a strong Password" id="password" required>
						
					</div>
				</div>
				
				<div class="row">
					<label class="label col-md-2 control-label">RePassword</label>
					<div class="col-md-10">
						<input type="Password" class="form-control" name="conpassword" placeholder="Confirm your Password" id="confirm_password" required>
						
					</div>
				</div>
				
				
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
				<a href="Admin_signUp.jsp"><div class="btn btn-warning">Cancel</div></a>
			</form>
			</div>
		</div>
	</div>-->












<script>
	var password = document.getElementById("password_1")
	, confirm_password = document.getElementById("password_2");

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

<script>
 $.validate({
 lang: 'en'
 });
</script>
</body>
</html>
