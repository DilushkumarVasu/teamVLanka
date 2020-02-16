<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<%@ page import="java.sql.DriverManager"%>
<%@ page import="java.sql.ResultSet"%>
<%@ page import="java.sql.Statement"%>
<%@ page import="java.sql.Connection"%>
<!DOCTYPE html>
<html>
<head>
	<meta charset="ISO-8859-1">
	<link href="css/bootstrap.css" rel="stylesheet" type="text/css" media="all" />
	<title>Insert title here</title>
</head>
<body>
   <div class="container">
<p><br></p>
<form action="ViewUser.jsp">
	<button type="submit" class="btn btn-success">Back</button>
</form>
<div class="row">
	<div class="col-md-4">
		<h3>Landowners Details</h3>
	</div>
	<div class="col-md-4">
		<form action="" method="get">
			<input type="text" class="form-control" name="q" placeholder="search here..."/>	
		</form>
	</div>
	
</div>
<table class="table table-bordered table-striped table-hover">
	<thead>
		<tr>
			<th>Landowner_id</th>
			<th>Name</th>
			<th>Address</th>
			<th>Gender</th>
			<th>Document</th>
			<th>Land_Status</th>
			<th>Contact</th>
			<th>Email</th>
			<th>User Name</th>
			<th class="text-center">Action</th>
		</tr>
	</thead>
	<tbody>
		<%
		String host="jdbc:mysql://localhost/vlanka";
		Connection conn=null;
		Statement stat=null;
		ResultSet res=null;
		Class.forName("com.mysql.jdbc.Driver");
		conn=DriverManager.getConnection(host,"root","");
		stat=conn.createStatement();
		String query=request.getParameter("q");
		String data;
		if(query!=null){
			data="select * from landowner where l_id like '%"+query+"%' or name like '%"+query+"%' or address like '%"+query+"%' or gender like '%"+query+"%' or land_status like '%"+query+"%' or telephone like '%"+query+"%' or email like '%"+query+"%' or username like '%"+query+"%'";
		}else{
			data="select * from landowner order by l_id asc";
		}
		res=stat.executeQuery(data);
		while(res.next()){
		%>
		<tr>
			<td><%=res.getString("l_id")%></td>
			<td><%=res.getString("name")%></td>
			<td><%=res.getString("address")%></td>
			<td><%=res.getString("gender")%></td>
			<td class="text-center"><a href="#" class="btn btn-primary">Pdf</a></td>
			<td><%=res.getString("land_status")%></td>
			<td><%=res.getString("telephone")%></td>
			<td><%=res.getString("email")%></td>
			<td><%=res.getString("username")%></td>
			<td class="text-center">
				<a href='deleteLandOwn.jsp?d=<%=res.getString("l_id")%>' class="btn btn-danger">Delete</a>
			</td>
		</tr>
		<%
		}
		%>
	</tbody>
</table>
</div>
</body>

</html>