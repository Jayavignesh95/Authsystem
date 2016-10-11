<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Profile</title>
<link rel="stylesheet" href="bootstrap/css/bootstrap.css">
</head>
<body>
	<%
		String name = (String) session.getAttribute("rname");
	%>
	<center>
		<p>Welcome</p><%=name%><p>to Profile</p>
	</center>
	<div class=".container">
		<form class="form-horizontal" action="/add" method="post"%>
			<div class="form-group">
				<label class="col-md-4 control-label">User Name:</label>
				<div class="col-md-5">
					<input type="text" name="user" value="<%=name%>"
						class="form-control input-md" required=""><br>
				</div>
			</div>
			<div class="form-group">
				<label class="col-md-4 control-label">Enter the Full Name:</label>
				<div class="col-md-5">
					<input class="form-control input-md" required="" type="text"
						name="fname"><br>
				</div>
			</div>
			<div class="form-group">

				<label class="col-md-4 control-label">Enter the Email ID:</label>
				<div class="col-md-5">
					<input class="form-control input-md " required="" type="text"
						name="email"><br>
				</div>
			</div>
			<div class="form-group">
				<label class="col-md-4 control-label">Enter the Mobile
					Number:</label>
				<div class="col-md-5">
					<input class="form-control input-md" required="" type="text"
						name="mobile"><br>
				</div>
			</div>
			<div class="form-group">
				<label class="col-md-4 control-label">Enter the Age:</label>
				<div class="col-md-5">
					<input class="form-control input-md" type="text" name="age"><br>
				</div>
			</div>
		      <!-- Button -->
				<div class="form-group">
					<label class="col-md-4 control-label" for="singlebutton"></label>
					<div class="col-md-4">
						<button id="button" name="singlebutton" class="btn btn-primary"
							type="submit">Register</button>
					</div>
				</div>
    </form>      
</div>
</body>
</html>