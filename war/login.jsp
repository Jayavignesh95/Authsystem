<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Welcome Page</title>
<link rel="stylesheet" href="/bootstrap/css/bootstrap.css">
<script src="js/script.js"></script>
<body>
<%
System.out.println(request.getSession().getAttribute("name"));
       if(request.getSession().getAttribute("name")!=null)
       {
    	   out.println(" Session Already Present");
    	   System.out.println(" Session ALready Present");
    	   response.sendRedirect("/welcome.jsp"); 
    	   
       }
    	   
     %>
	<div class=".container ">
		<h1>Welcome</h1>
		<form name="frm" action="Login" method="post" onSubmit="return validateForm()">
			<label> User Name</label> <input type="text" name="loginid"></br> 
			<label>Password</label> <input type="password" name="pwd"></br> <input
				type="submit" value="Login">

		</form>
	</div>
</body>
</html>