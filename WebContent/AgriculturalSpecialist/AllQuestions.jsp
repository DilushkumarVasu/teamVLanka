<!DOCTYPE html>
<%@page import="question.Question"%>
<%@page import="com.sun.glass.ui.Size"%>
<%@page import="userTypes.AgrSpecialist"%>
<%@page import="notice.*"%>
<%@page import="htmlBlocks.AgriculturalSpecialistHTML"%>
<%@page import="java.util.ArrayList"%>
<%@page import="java.util.List"%>

<html lang="en">
<head>
	<meta charset="utf-8" />
	<link rel="icon" type="image/png" href="assets/img/favicon.ico">
	<meta http-equiv="X-UA-Compatible" content="IE=edge,chrome=1" />

	<title>Unanswered Question</title>

	<meta content='width=device-width, initial-scale=1.0, maximum-scale=1.0, user-scalable=0' name='viewport' />
    <meta name="viewport" content="width=device-width" />

	<link href="css/QuestionsSectionCss" rel="stylesheet" />

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

<div class="wrapper">
    <div class="sidebar" data-color="green" data-image="assets/img/sidebar-5.jpg">

    <!--

        Tip 1: you can change the color of the sidebar using: data-color="blue | azure | green | orange | red | purple"
        Tip 2: you can also add an image using data-image tag

    -->

    	<div class="sidebar-wrapper">
            <div class="logo">
                <a href="http://www.creative-tim.com" class="simple-text">
                    Unanswered Question
                </a>
            </div>

            <ul class="nav">
                <li>
                    <a href="AgrSpecialistDashboard.jsp">
                        <i class="pe-7s-graph"></i>
                        <p>Dashboard</p>
                    </a>
                </li>
                <li>
                    <a href="Notices.jsp">
                        <i class="pe-7s-note2"></i>
                        <p>Notices</p>
                    </a>
                </li>
                <li>
                    <a href="AgrSpecialistUnansweredQuestions.jsp">
                        <i class="pe-7s-user"></i>
                        <p>Unanswered Questions</p>
                    </a>
                </li>
                
                <li class="active">
                    <a href="AllQuestions.jsp">
                        <i class="pe-7s-user"></i>
                        <p>All question</p>
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
                        <li class="dropdown">
                              <a href="#" class="dropdown-toggle" data-toggle="dropdown">
                                    <i class="fa fa-globe"></i>
                                    <b class="caret hidden-lg hidden-md"></b>
									<p class="hidden-lg hidden-md">
									<%
										List<question.Question> questions = AgrSpecialist.getUnansweredQuestions();
										int nQuestions = questions.size();
									%>
										<b class="caret"></b>
									</p>
                              </a>
                              <ul class="dropdown-menu">
                                <%
                              		if(nQuestions == 0)
                              			out.print("<li><a href=\"#\">No new notifications</a></li>");
                              		else{
                              			for(question.Question q : questions)
                              				out.print("<li><a href=\"#\">New question: " + q.getTitle() +"</a></li>");
                              		}
                              %>
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
                           <a href="">
                               <p>Account</p>
                            </a>
                        </li>
                        <li>
                            <a href="#">
                                <p>Log out</p>
                            </a>
                        </li>
						<li class="separator hidden-lg"></li>
                    </ul>
                </div>
            </div>
        </nav>
        
        
        
        <!-- This thing scrolls seperately -->
        
        <div class="content">
            <div class="container-fluid">
            	<div class="panel-group">
            
        <% 	Cookie cookies[] = request.getCookies();
        	String nic = "";
        	for(Cookie c : cookies){
        		if(c.getName().equals("login"))
        			nic = c.getValue();
        	}
        	
        	System.err.println(nic);
        	
        	//Code to show questions goes here
        	//out.print(AgriculturalSpecialistHTML.displayQuestions(1, "Hello", "545416546849684198", "2019 01 02"));
        	//List<question.Question> questions = AgrSpecialist.getUnansweredQuestions();
        	//System.err.println(questions.size());
        	
        	List<question.Question> allQuestions = AgrSpecialist.getAllQuestions();
        	for(question.Question q : allQuestions)
        		out.print(AgriculturalSpecialistHTML.displayAllQuestions(q.getID(), q.getTitle(), q.getBody(), q.getDate()));
			
        %>
        
        
        
		
				</div>
				
				
		  	
		  	
		  	
		  	
		</div>
		       
       
       
       </div>
       
       
       
       
        
		
			</div>
		</div>
		
		
		
		
		
        <footer class="footer">
            <div class="container-fluid">
                <nav class="pull-left">
                    <ul>
                        <li>
                            <a href="#">
                                Home
                            </a>
                        </li>
                        <li>
                            <a href="#">
                                Company
                            </a>
                        </li>
                        <li>
                            <a href="#">
                                Portfolio
                            </a>
                        </li>
                        <li>
                            <a href="#">
                               Blog
                            </a>
                        </li>
                    </ul>
                </nav>
                <p class="copyright pull-right">
                    &copy; <script>document.write(new Date().getFullYear())</script> <a href="http://www.creative-tim.com">Creative Tim</a>, made with love for a better web
                </p>
            </div>
        </footer>

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
</html>