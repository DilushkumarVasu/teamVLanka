<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>





<%@ page import="java.sql.DriverManager"%>
<%@ page import="java.sql.ResultSet"%>
<%@ page import="java.sql.Statement"%>
<%@ page import="java.sql.Connection"%>
<!doctype html>
<html lang="en">
<head>
	<meta charset="utf-8" />
	<link rel="icon" type="image/png" href="assets/img/favicon.ico">
	<meta http-equiv="X-UA-Compatible" content="IE=edge,chrome=1" />

	<title>farmer user page</title>

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
//this is the best way to remove the cache 
response.setHeader("Cache-Control","no-cache, no-store,must-revalidate");//this works on HTTP 1.1 protocol
response.setHeader("Pragma","no-cache");//this is used in older version HTTP protocol->HTTP 1.0
response.setHeader("Expires","0");//used in proxies

if(session.getAttribute("username")==null){
	response.sendRedirect("f_login.jsp");
}
%>

<%
		//String id = request.getParameter("userid");
		String driver = "com.mysql.jdbc.Driver";
		String connectionUrl = "jdbc:mysql://localhost:3306/";
		String database = "vlanka";
		String userid = "root";
		String password = "";
		try {
		Class.forName(driver);
		} catch (ClassNotFoundException e) {
		e.printStackTrace();
		}
		Connection connection = null;
		Statement statement = null;
		ResultSet resultSet = null;
%>
<div class="wrapper">
    <div class="sidebar" data-color="green" data-image="assets/img/sidebar-5.jpg">

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
                <li>
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
				
				
				<li class="active">
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
                    <a href="cancel.jsp">
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
                    <a class="navbar-brand" href="Farmer.jsp">Home</a>
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
                    <div class="col-md-12">
                        <div class="card">
							<div class="content">
                                <div class="row">
									
								<h1>Report of the field</h1>
									<%response.setIntHeader("refresh",5); %>
									<form id="form1" action="/chart">
										<img src="chart" width="600" height="400" border="0">
										<input type="button" onclick="refreshPage()" value="Refresh"/>
									</form>
								
								</div>
                                	
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
<script>
	function refreshpage(){
		document.forms.form1.submit();
}
</script>

</html>



