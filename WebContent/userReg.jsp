<%@ page import="java.sql.DriverManager"%>
<%@ page import="java.sql.ResultSet"%>
<%@ page import="java.sql.Statement"%>
<%@ page import="java.sql.Connection"%>
<!DOCTYPE html>
<html lang="en">
<head>
	<meta charset="utf-8" />
	<link rel="icon" type="image/png" href="assets/img/favicon.ico">
	<meta http-equiv="X-UA-Compatible" content="IE=edge,chrome=1" />

	<title>Admin Page</title>

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
if(session.getAttribute("a_id")==null){
	response.sendRedirect("Admin_login.jsp");
}%>

<%
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
                <a href="#" class="simple-text">
                    <img alt="" src="images/logo.png" style="width:250px;height:70px;">
                </a>
            </div>

            <ul class="nav">
                <li>
                    <a href="Admin.jsp">
                        <i class="pe-7s-home"></i>
                        <p>Home</p>
                    </a>
                </li>
                <li>
                    <a href="AdminPro.jsp">
                        <i class="pe-7s-user"></i>
                        <p>Admin Profile</p>
                    </a>
                </li>
                
                <li class="active">
                    <a href="userReg.jsp">
                        <i class="pe-7s-id"></i>
                        <p>Users' Registration</p>
                    </a>
                </li>
                
                 <li>
                    <a href="ViewUser.jsp">
                        <i class="pe-7s-search"></i>
                        <p>Users' Details</p>
                    </a>
                </li>
                
               <!--<li class="dropdown menu__item">
					<a href="#" class="dropdown-toggle menu__link" data-toggle="dropdown">
					<i class="pe-7s-note2"></i>
					<b class="caret"></b>
					<p>Activities</p></a>
					<ul class="dropdown-menu agile_short_dropdown">
						<li><a href="#">User Registration</a></li>
						<li><a href="#">User Details</a></li>
						<li><a href="RsrcCollectRegister.jsp">Add a Resource Collector</a></li>
					</ul>
								
				</li>-->
				
				
                <li>
                    <a href="maps.html">
                        <i class="pe-7s-map-marker"></i>
                        <p>Maps</p>
                    </a>
                </li>
                <li>
                    <a href="#">
                        <i class="pe-7s-bell"></i>
                        <p>Notifications</p>
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
                    <a class="navbar-brand" href="Admin.jsp">Admin</a>
                </div>
                <div class="collapse navbar-collapse">
                   
                    <ul class="nav navbar-nav navbar-right">
                       
                        <li>
                            <a href="AdminLogout" class="btn btn-info btn-lg">
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
								<div class="col-md-4">
									<h3>Users' Registration Page</h3>
								</div>
								
								</div>
                                	<table style="font-size:20px" class="table table-bordered table-striped table-hover">
										<thead>
											<tr>
											<th class="text-center" style="font-size:20px">User Type</th>
											<th class="text-center" style="font-size:20px">Count Of Users</th>
											<th class="text-center" style="font-size:20px">Action</th>
											</tr>
										</thead>
										
										<tbody>
										<%
										connection = DriverManager.getConnection(connectionUrl+database, userid, password);
										statement=connection.createStatement();
										String sql;
										sql="select * from cntfarmer"; 
										resultSet = statement.executeQuery(sql);
										while(resultSet.next()){
										%>
										
										<tr class="text-center">
											<td>Farmer</td>
											<td><%=resultSet.getString("Farmer") %></td>
											<td class="text-center">
												<a href="f_signUp.jsp" class="btn btn-primary">Register</a>
											</td>
										</tr>
										<%} %>
										</tbody>
										<tbody>
										<%
										connection = DriverManager.getConnection(connectionUrl+database, userid, password);
										statement=connection.createStatement();
										String data;
										data="select * from cntland"; 
										resultSet = statement.executeQuery(data);
										while(resultSet.next()){
										%>
										<tr class="text-center">
											<td>Landowner</td>
											<td><%=resultSet.getString("Land") %></td>
											<td class="text-center">
												<a href="l_signUp.jsp" class="btn btn-primary">Register</a>
											</td>
										</tr>
										<%} %>
										</tbody>
										
										<tbody>
										<%
										connection = DriverManager.getConnection(connectionUrl+database, userid, password);
										statement=connection.createStatement();
										String data2;
										data2="select * from cntagri"; 
										resultSet = statement.executeQuery(data2);
										while(resultSet.next()){
										%>
										<tr class="text-center">
											<td>Agricultural Specialist</td>
											<td><%=resultSet.getString("Agri") %></td>
											<td class="text-center">
												<a href="AgrSpecialistRegister.jsp" class="btn btn-primary">Register</a>
											</td>
										</tr>
										<%} %>
										</tbody>
										<tbody>
										<%
										connection = DriverManager.getConnection(connectionUrl+database, userid, password);
										statement=connection.createStatement();
										String data3;
										data3="select * from cntres"; 
										resultSet = statement.executeQuery(data3);
										while(resultSet.next()){
										%>
										<tr class="text-center">
											<td>Resource Collector</td>
											<td><%=resultSet.getString("Resource") %></td>
											<td class="text-center">
												<a href="RsrcCollectRegister.jsp" class="btn btn-primary">Register</a>
											</td>
										</tr>
										<%} %>
										</tbody>
							</table>
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

</html>
