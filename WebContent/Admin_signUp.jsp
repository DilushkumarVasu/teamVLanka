<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
	<script src="http://ajax.googleapis.com/ajax/libs/jquery/1.10.2/jquery.min.js"></script>
 <script src="https://cdnjs.cloudflare.com/ajax/libs/jquery-form-validator/2.3.26/jquery.form-validator.min.js"></script>
	<title>Registration system PHP and MySQL</title>
	<link rel="stylesheet" href="css/ad_style.css">
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
	<div class="input-group">
		<label>Gender</label>
		<input type="text" name="gender" Placeholder="Male/Female/Other" required >
	</div>
	<div class="input-group">
		<label>Address</label>
		<input type="text" name="address" Placeholder="Enter Your address" required>
	</div>
	<div class="input-group">
		<label>Phone</label>
		<input type="text" name="phone" Placeholder="Enter phone number" required>
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
