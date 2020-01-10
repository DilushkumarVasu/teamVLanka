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
<div class="row">
	<div class="col-md-4">
		<h3>User Question Details</h3>
	</div>
	<div class="col-md-4">
		<form action="" method="get">
			<input type="text" class="form-control" name="q" placeholder="search here..."/>	
		</form>
	</div>
	<div class="col-md-4 text-right">
		<a href=Question.jsp class="btn btn-primary">Add New Question</a>
	</div>
</div>
<table class="table table-bordered table-striped table-hover">
	<thead>
		<tr>
			<th>Question_id</th>
			<th>NIC</th>
			<th>date</th>
			<th>Question</th>
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
			data="select * from f_ques where f_id like '%"+query+"%' or date like '%"+query+"%' or question like '%"+query+"%'";
		}else{
			data="select * from f_ques order by q_id asc";
		}
		res=stat.executeQuery(data);
		while(res.next()){
		%>
		<tr>
			<td><%=res.getString("q_id")%></td>
			<td><%=res.getString("f_id")%></td>
			<td><%=res.getString("date")%></td>
			<td><%=res.getString("question")%></td>
			<td class="text-center">
				<a href='edit.jsp?u=<%=res.getString("q_id")%>' class="btn btn-warning">View Q&A</a>
				<!--<a href='delete.jsp?d=<%=res.getString("q_id")%>' class="btn btn-danger">Delete</a>-->
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