<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
    <!-- Required meta tags-->
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1, shrink-to-fit=no">
    <meta name="description" content="Colorlib Templates">
    <meta name="author" content="Colorlib">
    <meta name="keywords" content="Colorlib Templates">

    <!-- Title Page-->
    <title>Land OwnerRegistration</title>

    <!-- Font special for pages-->
    <link href="https://fonts.googleapis.com/css?family=Open+Sans:300,300i,400,400i,600,600i,700,700i,800,800i" rel="stylesheet">

    <!-- Main CSS-->
    <link href="css/l.css" rel="stylesheet" media="all">
</head>
<meta charset="ISO-8859-1">
<title>Insert title here</title>

<body>
    <div class="page-wrapper bg-dark p-t-100 p-b-50">
        <div class="wrapper wrapper--w900">
            <div class="card card-6">
                <div class="card-heading">
                    <h2 class="title">Land Owner Registration</h2>
                </div>
                <div class="card-body">
                    <form action="lSignup" method="POST">
                        <div class="form-row">
                            <div class="name">Full name</div>
                            <div class="value">
                                <input class="input--style-6" type="text" name="name" required="">
                            </div>
                        </div>
                        <div class="form-row">
                            <div class="name">NIC number</div>
                            <div class="value">
                                <input class="input--style-6" type="text" name="nic" required="">
                            </div>
                        </div>
                        
                        <div class="form-row">
                            <div class="name">Address</div>
                            <div class="value">
                                <input class="input--style-6" type="text" name="address" required="">
                            </div>
                        </div>
                        
                        <div class="form-row">
                            <div class="name">Email address</div>
                            <div class="value">
                                <div class="input-group">
                                    <input class="input--style-6" type="email" name="email" placeholder="example@email.com" required="">
                                </div>
                            </div>
                        </div>
                        
                        <div class="form-row">
                            <div class="name">Gender</div>
                            <div class="value">
                                <input class="input--style-6" type="text" name="gender" placeholder="Male/Female/Other" required="">
                            </div>
                        </div>
                        
                        <div class="form-row">
                            <div class="name">Land Status</div>
                            <div class="value">
                                <input class="input--style-6" type="text" name="status" placeholder="Available/Not Available" required="">
                            </div>
                        </div>
                        
                        <div class="form-row">
                            <div class="name">Telephone number</div>
                            <div class="value">
                                <input class="input--style-6" type="text" name="telenum" placeholder="077711122" required="">
                            </div>
                        </div>
                        
                        <!--<div class="form-row">
                            <div class="name">Upload CV</div>
                            <div class="value">
                                <div class="input-group js-input-file">
                                    <input class="input-file" type="file" name="file_cv"  class="file-upload" id="file" >
                                    <label class="label--file" for="file">Choose file</label>
                                    <span class="input-file__info">No file chosen</span>
                                </div>
                                <div class="label--desc">Upload your scanned land document in a pdf form or any other relevant file. Max file size 50 MB</div>
                            </div>
                        </div>-->
                    <script>$('.file-upload').file_upload();</script>
                        
                        <div class="form-row">
 <!-- 					<div class="name">Land Document</div>
                        	<div class="file-upload-wrapper">
				    			<div class="col-md-10">
  									<input type="file" id="input-file-max-fs" class="file-upload" data-max-file-size="50M" required="" />
  									
  								</div>
  								<div class="label--desc">Upload your scanned land document in a pdf form or any other relevant file. Max file size 50 MB</div>
							</div>
						</div>  -->                     
						
						<div class="form-row">
                            <div class="name">User Name</div>
                            <div class="value">
                                <input class="input--style-6" type="text" name="uname" required="">
                            </div>
                        </div>
                        
                        <div class="form-row">
                            <div class="name">Password</div>
                            <div class="value">
                                <input class="input--style-6" type="password" name="pass" id="password" required="">
                            </div>
                        </div>
                        
                        <div class="form-row">
                            <div class="name">Confirm Password</div>
                            <div class="value">
                                <input class="input--style-6" type="password" name="conpass" id="confirm_password" required="">
                            </div>
                        </div>
						
						
						<div class="card-footer">
                    		<button class="btn btn--radius-2 btn--blue-2" type="submit">Submit</button>
                    		<a href="l_signUp.jsp"><div class="btn btn-warning">Cancel</div></a>
                		</div>
				
                    </form>
                </div>
                
            </div>
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

    <!-- Jquery JS-->
    <script src="vendor/jquery/jquery.min.js"></script>


    <!-- Main JS-->
    <script src="js/global.js"></script>

</body>
</html>

