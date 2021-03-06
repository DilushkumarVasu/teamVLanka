<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!doctype html>
<html lang="en">
<head>
	<meta charset="utf-8" />
	<link rel="icon" type="image/png" href="assets/img/favicon.ico">
	<meta http-equiv="X-UA-Compatible" content="IE=edge,chrome=1" />

	<title>User Profile</title>

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

<link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/css/bootstrap.min.css">
    <!--     Fonts and icons     -->
    <link href="http://maxcdn.bootstrapcdn.com/font-awesome/4.2.0/css/font-awesome.min.css" rel="stylesheet">
    <link href='http://fonts.googleapis.com/css?family=Roboto:400,700,300' rel='stylesheet' type='text/css'>
    <link href="assets/css/pe-icon-7-stroke.css" rel="stylesheet" />
</head>
<body>

<% 
//this is the best way to remove the cache 
response.setHeader("Cache-Control","no-cache, no-store,must-revalidate");//this works on HTTP 1.1 protocol
response.setHeader("Pragma","no-cache");//this is used in older version HTTP protocol->HTTP 1.0
response.setHeader("Expires","0");//used in proxies

if(session.getAttribute("username")==null){
	response.sendRedirect("f_login.jsp");
}
%>

<div class="wrapper">
    <div class="sidebar" data-color="green" data-image="assets/img/sidebar-5.jpg">

    <!--   you can change the color of the sidebar using: data-color="blue | azure | green | orange | red | purple" -->


    	<div class="sidebar-wrapper">
            <div class="logo">
                <a href="http://www.creative-tim.com" class="simple-text">
                   <img alt="" src="images/logo.png" style="width:250px;height:70px;">
                </a>
            </div>

             <ul class="nav">
                <li>
                    <a href="farmer.jsp">
                        <i class="pe-7s-home"></i>
                        <p>Home</p>
                    </a>
                </li>
                <li class="active">
                    <a href="userPro.jsp">
                        <i class="pe-7s-user"></i>
                        <p>User Profile</p>
                    </a>
                </li>
                
              
				<li>
                    <a href="f_ques.jsp">
                        <i class="pe-7s-help1"></i>
                        <p>Question</p>
                    </a>
                </li>
                <li>
                    <a href="f_resource.jsp">
                        <i class="pe-7s-arc" style="font-size:30px"></i>
                        <p>Resources</p>
                    </a>
                </li>
				
				<li>
                    <a href="report.jsp">
                        <i class="pe-7s-graph"></i>
                        <p>Report</p>
                    </a>
                </li>
                <li>
                    <a href="#">
                        <i class="pe-7s-bell"></i>
                        <p>Notifications</p>
                    </a>
                </li>
                <li>
                    <a href="#">
                        <i class="pe-7s-delete-user"></i>
                        <p>Account Cancel</p>
                    </a>
                </li>
                <li>
                    <a href="field.jsp">
                        <i class="pe-7s-check"></i>
                        <p>field Update</p>
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
                    <a class="navbar-brand" href="userPro.jsp">User</a>
                </div>
                <div class="collapse navbar-collapse">

                    <ul class="nav navbar-nav navbar-right">
                        <li>
                            <a href="Logout" class="btn btn-info btn-lg">
                                <span class="glyphicon glyphicon-off"></span>Log out
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
                    <div class="col-md-8">
                        <div class="card">
                            <div class="header">
                                <h4 class="title">User Profile</h4>
                            </div>
                            <div class="content">
                                <form class = "box" action= "editProfile.jsp" method="post">
                                    <div class="row">
                                        <div class="col-md-5">
                                            <div class="form-group">
                                                <label>Full Name</label>
                                                <input type="text" name="name" class="form-control" value="${name}" readonly>
                                            </div>
                                        </div>
                                        
                                        <div class="col-md-3">
                                            <div class="form-group">
                                                <label>Username</label>
                                                <input type="text" name="uname" class="form-control"  value="${username}" readonly>
                                            </div>
                                        </div>
                                        <div class="col-md-3">
                                            <div class="form-group">
                                                <label>Gender</label>
                                                <input type="text" name="gender" class="form-control"  value="${gender}" readonly>
                                            </div>
                                        </div>
                                      </div>
                                      <div class="row">
                                        <div class="col-md-5">
                                            <div class="form-group">
                                                <label>NIC Number</label>
                                                <input type="text" name="nic" class="form-control"  value="${nic}" readonly>
                                            </div>
                                        </div>
                                        <div class="col-md-5">
                                            <div class="form-group">
                                                <label for="exampleInputEmail1">Email address</label>
                                                <input type="email" name="email" class="form-control"  value ="${email}" readonly>
                                            </div>
                                        </div>
                                    </div>

                                    <div class="row">
                                        
                                        <div class="col-md-5">
                                            <div class="form-group">
                                                <label>Telephone number</label>
                                                <input type="text" name="tel" class="form-control" value="${telephone}" readonly>
                                            </div>
                                        </div>

                             
                                        <div class="col-md-5">
                                            <div class="form-group">
                                                <label>Address</label>
                                                <input type="text" name="address" class="form-control"  value="${address}" readonly>
                                            </div>
                                        </div>
                                    </div>

                               

                                    

                                    <button type="submit" class="btn btn-info btn-fill pull-right">Edit Profile</button>
                                    <div class="clearfix"></div>
                                </form>
                            </div>
                        </div>
                    </div>
                    <div class="col-md-4">
                        <div class="card card-user">
                            <div class="image">
                                <img src="https://ununsplash.imgix.net/photo-1431578500526-4d9613015464?fit=crop&fm=jpg&h=300&q=75&w=400" alt="..."/>
                            </div>
                            <div class="content">
                                <div class="author">
                                     <a href="#">
                                    <img class="avatar border-gray" src="assets/img/faces/face-3.jpg" alt="..."/>

                                      <h4 class="title">Mike Andrew<br />
                                         <small>michael24</small>
                                      </h4>
                                    </a>
                                </div>
                                <p class="description text-center"> "Lamborghini Mercy <br>
                                                    Your chick she so thirsty <br>
                                                    I'm in that two seat Lambo"
                                </p>
                            </div>
                            <hr>
                            <div class="text-center">
                                <button href="#" class="btn btn-simple"><i class="fa fa-facebook-square"></i></button>
                                <button href="#" class="btn btn-simple"><i class="fa fa-twitter"></i></button>
                                <button href="#" class="btn btn-simple"><i class="fa fa-google-plus-square"></i></button>

                            </div>
                        </div>
                    </div>

                </div>
            </div>
        </div>


        

    </div>
</div>


</body>

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

</html>
