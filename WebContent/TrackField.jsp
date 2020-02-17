<%@ page import="java.sql.DriverManager"%>
<%@ page import="java.sql.ResultSet"%>
<%@ page import="java.sql.Statement"%>
<%@ page import="java.sql.Connection"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Insert title here</title>
<link href="css/bootstrap.css" rel="stylesheet" type="text/css" media="all" />
<link href="css/style.css" rel="stylesheet" type="text/css" media="all" />
<!-- js -->
<script type="text/javascript" src="js/jquery-2.1.4.min.js"></script>
<!-- //js -->
<link rel="stylesheet" href="css/colorbox.css" />
<!-- font-awesome-icons -->
<link href="css/font-awesome.css" rel="stylesheet"> 
<!-- //font-awesome-icons -->
<link href="//fonts.googleapis.com/css?family=Dosis:200,300,400,500,600,700,800&amp;subset=latin-ext" rel="stylesheet">
<link href='//fonts.googleapis.com/css?family=Open+Sans:400,300,300italic,400italic,600,600italic,700,700italic,800,800italic' rel='stylesheet' type='text/css'>

</head>
<body>
<%
		String id=request.getParameter("d");
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
<%
try{
	connection = DriverManager.getConnection(connectionUrl+database, userid, password);
	statement=connection.createStatement();
	String sql="select * from field where field_id='"+id+"'";
	resultSet = statement.executeQuery(sql);
	while(resultSet.next()){%>
	

<div class="services">
		<div class="container">
			<h3 class="w3l_header w3_agileits_header1">Status <span>Form</span></h3>
			<div class="w3layouts_mail_grid">
				<div class="col-md-7 agileits_mail_grid_right agileits_w3layouts_mail_grid_right">
					<div class="agileits_mail_grid_right1 agile_mail_grid_right1">
						<form action="editStatus" method="post">
							<span>
								<i>Field Id</i>
								<input type="text" name="field_id" class="form-control" style="width:450px" value="<%=resultSet.getString("field_id") %>" required="" readonly>
							</span>
							<span>
								<i>Address</i>
								<input type="text" name="address" class="form-control" style="width:450px" value="<%=resultSet.getString("address") %>" required=""  readonly>
							</span>
							<span>
								<i>Size</i>
								<input type="text" name="size" class="form-control" style="width:450px"  value="<%=resultSet.getString("size") %>" required="" readonly>
							</span>
							<span>
								<i>Owner Id</i>
								<input type="text" name="owner_nic" class="form-control" style="width:450px"  value="<%=resultSet.getString("owner_nic") %>" required="" readonly>
							</span>
							<span>
								<i> Status</i>
								<input type="text" name="status" class="form-control" style="width:450px"  value="<%=resultSet.getString("status") %>" required="">
							</span>
							<input type="submit" class="btn btn-primary" value="Update Now">
						</form>
						<form action="field.jsp">
							<input type="submit" class="btn btn-primary" style="background-color:orange" value="Back">
						</form>
					</div>
				</div>
				<div class="clearfix"> </div>
			</div>
		</div>
	</div>
</body>

<%
			}
			connection.close();
			} catch (Exception e) {
			e.printStackTrace();
			}
			%>