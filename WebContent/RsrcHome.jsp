<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<%@ page import="java.sql.DriverManager"%>
<%@ page import="java.sql.ResultSet"%>
<%@ page import="java.sql.Statement"%>
<%@ page import="java.sql.Connection"%>

		<%
		String id = request.getParameter("userid");
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
<!doctype html>
<html lang="en">
<head>
	<meta charset="utf-8" />
	<link rel="icon" type="image/png" href="assets/img/favicon.ico">
	<meta http-equiv="X-UA-Compatible" content="IE=edge,chrome=1" />

	<title>Resource Collector DashBoard</title>

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
	response.sendRedirect("RsrcCollectLogin.jsp");
%>

<div class="wrapper">
    <div class="sidebar" data-color="red" data-image="assets/img/sidebar-5.jpg">

    	<div class="sidebar-wrapper">
            <div class="logo">
                <a href="index.html" class="simple-text">
                  	<img alt="" src="images/logo.png" style="width:240px;height:100px;"> 
                </a>
            </div>

            <ul class="nav">
                <li class="active">
                    <a href="RsrcHome.jsp">
                        <i class="pe-7s-graph"></i>
                        <p>DashBoard</p>
                    </a>
                </li>
                
                <li>
                    <a href="RsrcApprove.jsp">
                        <i class="pe-7s-note2"></i>
                        <p>Approval List</p>
                    </a>
                </li>    
                <li>
                    <a href="RsrcUser.jsp">
                        <i class="pe-7s-user"></i>
                        <p>My Profile</p>
                    </a>
                </li>
                <li>	
                    <a href="RsrcCollectorDelete.jsp">
                        <i class="pe-7s-delete-user"></i>
                        <p>Cancel Account</p> 
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
                        <li>
                            <a href="#" class="dropdown-toggle" data-toggle="dropdown">
                                <i class="fa fa-dashboard"></i>
								<p class="hidden-lg hidden-md">DashBoard</p>
                            </a>
                        </li>
                        <li class="dropdown">
                              <a href="#" class="dropdown-toggle" data-toggle="dropdown">
                                    <i class="fa fa-globe"></i>
                                    <b class="caret hidden-lg hidden-md"></b>
									<p class="hidden-lg hidden-md">
										5 Notifications
										<b class="caret"></b>
									</p>
                              </a>
                              <ul class="dropdown-menu">
                                <li><a href="#">Notification 1</a></li>
                                <li><a href="#">Notification 2</a></li>
                                <li><a href="#">Notification 3</a></li>
                                <li><a href="#">Notification 4</a></li>
                                <li><a href="#">Notification 5</a></li>
                              </ul>
                        </li>
                        <li>
                           <a href="">
                                <i class="fa fa-search"></i>
								<p class="hidden-lg hidden-md">Search</p>
                            </a>
                        </li>
                    </ul>

                    <ul class="nav navbar-nav navbar-right">
                        <li>
                           <a href="RsrcUser.jsp">
                               <p>Account</p>
                            </a>
                        </li>
             
                        <li>
                            <a href="Rlogout">
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

                            <div class="header">
                                <h4 class="title">Advertisements</h4>
                                <p class="category">Posted by Landowners</p>
                            </div>
                            <div class="content">
   <table class="table table-bordered table-striped table-hover">
	<thead>
		<tr>
			<th class="text-center">Advertisement ID</th>
			<th class="text-center">User Name</th>
			<th class="text-center">Contact Number</th>
			<th class="text-center">Details</th>
			<th class="text-center">Price</th>
			<th class="text-center">View Image</th>
			<th class="text-center">Delete Ad</th>
		</tr>
	</thead>
	<tbody>
				<%
			try{
			connection = DriverManager.getConnection(connectionUrl+database, userid, password);
			statement=connection.createStatement();
			String sql ="select * from postadd where approved=1";
			resultSet = statement.executeQuery(sql);
			while(resultSet.next()){
			%>
			<tr>
			<td><%=resultSet.getString("addId") %></td>
			<td><%=resultSet.getString("username") %></td>
			<td><%=resultSet.getString("tele_number") %></td>
			<td><%=resultSet.getString("details") %></td>
			<td><%=resultSet.getString("price") %></td>
			<td class="text-center">
				<a href ='RsrcViewAdd.jsp' class="btn btn-warning">View</a>
			<td class="text-center">
				<a href ='RsrcDelAdd.jsp?d=<%=resultSet.getString("addId")%>' class="btn btn-danger">Delete</a>
				
			</td>
			</tr>
			<%
			}
			connection.close();
			} catch (Exception e) {
			e.printStackTrace();
			}
			%>

	</tbody>
</table>
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
