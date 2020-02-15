<%@page import="java.sql.PreparedStatement"%>
<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
    
<!DOCTYPE html>
<html>
<head>
<link href="//maxcdn.bootstrapcdn.com/bootstrap/4.1.1/css/bootstrap.min.css" rel="stylesheet" id="bootstrap-css">
<script src="//maxcdn.bootstrapcdn.com/bootstrap/4.1.1/js/bootstrap.min.js"></script>
<script src="//cdnjs.cloudflare.com/ajax/libs/jquery/3.2.1/jquery.min.js"></script>
<link href="css/viewQA.css" rel="stylesheet" type="text/css" media="all" />
<meta charset="ISO-8859-1">
<title>Insert title here</title>
</head>
<body>

<div class="container contact">
<form action="viewQues.jsp">
	<div class="row">
		<div class="col-md-3">
			<div class="contact-info">
				<img src="images/qes.png" style="width:100px;height:100px" alt="image"/>
				<h2>Q & A</h2>
				<h4>We would love to help you !</h4>
			</div>
		</div>
		
		<div class="col-md-9">
			<div class="contact-form">
				<div class="form-group">
				  <label class="control-label col-sm-2" for="comment">Question:</label>
				  <div class="col-sm-10">
					<textarea class="form-control" rows="3" id="comment" readonly></textarea>
				  </div>
				</div>
				<div class="form-group">
				  <label class="control-label col-sm-2" for="comment">Answer:</label>
				  <div class="col-sm-10">
					<textarea class="form-control" rows="5" id="comment" readonly></textarea>
				  </div>
				</div>
				<div class="form-group">        
				  <div class="col-sm-offset-2 col-sm-10">
					<button type="submit" class="btn btn-default">Back</button>
				  </div>
				</div>
			</div>
		</div>

	</div>
	</form>
</div>



</body>
</html>