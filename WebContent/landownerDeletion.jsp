
<!doctype html>
<html lang="en">
<head>
	<meta charset="utf-8" />
	<link rel="icon" type="image/png" href="assets/img/favicon.ico">
	<meta http-equiv="X-UA-Compatible" content="IE=edge,chrome=1" />
	<link href="css/cancel.css" rel="stylesheet" type="text/css" media="all" />
	<title>Landowner user page</title>

	<meta content='width=device-width, initial-scale=1.0, maximum-scale=1.0, user-scalable=0' name='viewport' />
    <meta name="viewport" content="width=device-width" />

    
    <!-- Bootstrap core CSS     -->
    <link href="assets/css/bootstrap.min.css" rel="stylesheet" />

    <!-- Animation library for notifications   -->
    <link href="assets/css/animate.min.css" rel="stylesheet"/>

    <!--  Light Bootstrap Table core CSS    -->
    <link href="assets/css/light-bootstrap-dashboard.css?v=1.4.0" rel="stylesheet"/>


    <!--  CSS for Demo Purpose, don't include it in your project     -->
    <link href="assets/css/demo.css" rel="stylesheet" />


    <!--     Fonts and icons     -->
    <link href="http://maxcdn.bootstrapcdn.com/font-awesome/4.2.0/css/font-awesome.min.css" rel="stylesheet">
    <link href='http://fonts.googleapis.com/css?family=Roboto:400,700,300' rel='stylesheet' type='text/css'>
    <link href="assets/css/pe-icon-7-stroke.css" rel="stylesheet" />

</head>
<body>
<% response.setHeader("Cache-Control","no-cache, no-store,must-revalidate");
response.setHeader("pragma","no-cache");
response.setHeader("Expires","0");
if(session.getAttribute("username")==null){
	response.sendRedirect("f_login.jsp");
}

%>

<div class="wrapper">
     <div class="sidebar" data-color="#B7950B" data-image="assets/img/sidebar-5.jpg">

    	<div class="sidebar-wrapper">
            <div class="logo">
                <a href="index.html" class="simple-text">
                  	<img alt="" src="images/logo.png" style="width:250px;height:70px;"> 
                </a>
            </div>

             <ul class="nav">
                <li>
                    <a href="landownerhome.jsp">
                        <i class="pe-7s-graph"></i>
                        <p>Dashboard</p>
                    </a>
                </li>
                <li>
                    <a href="user.jsp">
                        <i class="pe-7s-user"></i>
                        <p>User Profile</p>
                    </a>
                </li>
                <li>
                    <a href="postAdd.jsp">
                        <i class="pe-7s-note2"></i>
                        <p>Post New Add</p>
                    </a>
                </li>
                 <li>
                    <a href="LviewAdd.jsp">
                        <i class="pe-7s-bell"></i>
                        <p>Posted Adds</p>
                    </a>
                </li>
                <li class="active">
                    <a href="landownerDeletion.jsp">
                        <i class="pe-7s-delete-user"></i>
                        <p>Delete Account</p>
                    </a>
                </li>

            </ul>
    	</div>
    </div>

     <div class="main-panel">
        <nav class="navbar navbar-default navbar-fixed">
            <div class="container-fluid">
                <div class="navbar-header">
                    <button type="button" class="navbar-toggle" data-toggle="collapse" data-target="#navigation-example-2">
                        <span class="sr-only">Toggle navigation</span>
                        <span class="icon-bar"></span>
                        <span class="icon-bar"></span>
                        <span class="icon-bar"></span>
                    </button>
                    <a class="navbar-brand" href="#">Dashboard</a>
                </div>
                <div class="collapse navbar-collapse">
                    <ul class="nav navbar-nav navbar-left">

                    </ul>

                    <ul class="nav navbar-nav navbar-right">
                        <li>
                           <a href="">
                               <p>Account</p>
                            </a>
                        </li>

                        <li>
                            <a href="lLogout">
                                <p>Log out</p>
                            </a>
                        </li>
						<li class="separator hidden-lg"></li>
                    </ul>
                </div>
            </div>
        </nav>

        <div class="content">
            <div class="container-fluid">
                <div class="row">
                    <div class="col-md-12">
                        <div class="card">
							<div class="content">
                               <!-- <div class="row">-->
									<!----- form starting point ------>
									<h3>Resignation Form</h3>


										<form action="remove" method="post">
										  <label for="user_id">User NIC</label>
										  <input type="text" id="username" name="user_id" value="${nic}" readonly>
										
										  <label for="date">Date</label>
										  <input type="text" id="date" name="date" value="<%= (new java.util.Date()).toLocaleString()%>" readonly >
										
										  <label for="type">User Type</label>
										  <input type="text" id="type" name="type" value="landowner" readonly >
										
										  <label for="request">Reason for deletion</label>
										  <input type="text" id="request" name="request" value="Cancel my user account due to " required>
										  
										  
										
										  <input type="submit" value="Submit">
										</form>
										

									<!-- --------------------------- -->
								
                                	
                               </div>
								
                                
                            </div>
                        </div>
                    </div>

                    
                </div>

            </div>
        </div>

    </div>




</body>
	
    <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/css/bootstrap.min.css">
    <!--   Core JS Files   -->
    <!--   Core JS Files   -->
    <script src="assets/js/jquery.3.2.1.min.js" type="text/javascript"></script>
	<script src="assets/js/bootstrap.min.js" type="text/javascript"></script>

	<!--  Charts Plugin -->
	<script src="assets/js/chartist.min.js"></script>

    <!--  Notifications Plugin    -->
    <script src="assets/js/bootstrap-notify.js"></script>

    <!--  Google Maps Plugin    -->
    <script type="text/javascript" src="https://maps.googleapis.com/maps/api/js?key=YOUR_KEY_HERE"></script>

    <!-- Light Bootstrap Table Core javascript and methods for Demo purpose -->
	<script src="assets/js/light-bootstrap-dashboard.js?v=1.4.0"></script>

	<!-- Light Bootstrap Table DEMO methods, don't include it in your project! -->
	<script src="assets/js/demo.js"></script>

	<!-- <script type="text/javascript">
    	$(document).ready(function(){

        	demo.initChartist();

        	$.notify({
            	icon: 'pe-7s-gift',
            	message: "Welcome to <b>Light Bootstrap Dashboard</b> - a beautiful freebie for every web developer."

            },{
                type: 'info',
                timer: 4000
            });

    	});
	</script> -->
	
	<!--<script>
		alert("You are succesfully logged in to VLanka! Press OK to continue");  // display string message
    </script>-->

</html>


