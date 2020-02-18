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


    <!--     Fonts and icons     -->
    <link href="http://maxcdn.bootstrapcdn.com/font-awesome/4.2.0/css/font-awesome.min.css" rel="stylesheet">
    <link href='http://fonts.googleapis.com/css?family=Roboto:400,700,300' rel='stylesheet' type='text/css'>
    <link href="assets/css/pe-icon-7-stroke.css" rel="stylesheet" />
</head>
<body>

<%
	
	response.setHeader("Cache-control","no-cache, no-store,must-revalidate");
	response.setHeader("pragma", "no-cache");
	response.setHeader("Expires", "0");
	if(session.getAttribute("username")==null)
		response.sendRedirect("l_login.jsp");
%>

<div class="wrapper">
    <div class="sidebar" data-color="#B7950B" data-image="assets/img/sidebar-5.jpg">

    <!--   you can change the color of the sidebar using: data-color="blue | azure | green | orange | red | purple" -->


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
                <li class="active">
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
                <li>
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
                    <a class="navbar-brand" href="#">Post Add</a>
                </div>
                <div class="collapse navbar-collapse">
                    <ul class="nav navbar-nav navbar-right">
                        <li>
                           <a href="landownerhome.jsp">
                               <p>Account</p>
                            </a>
                        </li>
	
                        <li>
                            <a href="lLogout">
                                <p>Log out</p>
                            </a>
                        </li>
						<li class="separator hidden-lg hidden-md"></li>
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
                                <h4 class="title">Post New Add</h4>
                            </div>
                            <div class="content">
                                <form class = "box" action= "postadd" method="post" enctype="multipart/form-data">
                                    <div class="row">
                                        <div class="col-md-5">
                                            <div class="form-group">
                                                <label>NIC</label>
                                                <input type="text" class="form-control" disabled placeholder="" value="${nic }">
                                            </div>
                                        </div>
                                        <div class="col-md-3">
                                            <div class="form-group">
                                                <label>Username</label>
                                                <input type="text" name="uname" class="form-control" placeholder="Username" value="${username}" readonly>
                                            </div>
                                        </div>
                                        <div class="col-md-4">
                                            <div class="form-group">
                                                <label for="exampleInputEmail1">Email address</label>
                                                <input type="email" name="email" class="form-control" placeholder="Email" value ="${email}" readonly>
                                            </div>
                                        </div>
                                    </div>

                                    <div class="row">
                                        <div class="col-md-6">
                                            <div class="form-group">
                                            <div class="form-group">
                                                <label>Address</label>
                                                <input type="text" name="address" class="form-control" placeholder="Home Address" value="${address}" readonly>
                                            </div>
                                            
                                    
                                            </div>
                                        </div>
                                        <div class="col-md-6">
                                            <div class="form-group">
                                                <label>Telephone number</label>
                                                <input type="text" name="tele" class="form-control" placeholder="Telephone number" value="${tele}" required="required">
                                            </div>
                                        </div>
                                    </div>

                                    <div class="row">
                                        <div class="col-md-12">
                                        <div class="form-group">
                                                <label>Price</label>
                                                <input type="text" name="price" class="form-control" placeholder="Rs." value="" required="required">
                                            </div>
                                            
                                        </div>
                                    </div>
                                    <div class="row">
                                        <div class="col-md-12">
                                            <div class="form-group">
                                                <label>Land details</label>
                                                <input type="text" name = "status" class="form-control" placeholder="Land details" value="${status}" required="required">
                                            </div>
                                        </div>
                                    </div>
                                    
				                  <div class="row">
									<label class="label col-md-0 control-label" for="file">Choose Image</label>
				                            
				                            <div class="value">
				                                <div class="input-group js-input-file">
				                                	<div class="col-md-1 pt-5">
				                                		<div class="form-control">
				                                    		<input class="input-file" type="file" name="pdf"  class="file-upload" id="file" >
				                            
				                                    	</div>
				                                    </div>
				                                </div>
				                                <div class="label--desc"><font color ="white">Upload your Image</font></div>
				                            </div>
				                  </div>
									<a href="LviewAdd.jsp" class="btn btn -success">Previous Adds</a>	
                                    <button type="submit" class="btn btn-info btn-fill pull-right">Post Add</button>
                          	
                                    <div class="clearfix"></div>
                                </form>
                                
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
