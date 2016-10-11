<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Sign Up</title>
<link rel="stylesheet" href="/bootstrap/css/bootstrap.css">
<script src="js/script.js"></script>
</head>
<body>
	<%
		System.out.println(request.getSession().getAttribute("name"));
		if (request.getSession().getAttribute("name") != null) {
			out.println(" Session Already Present");
			System.out.println(" Session ALready Present");
			response.sendRedirect("/welcome.jsp");

		}
	%>
	<div class=".container ">
		<form id="frm" class="form-horizontal" action="register" method="post"
			onSubmit="return validateForm()">
			<fieldset>

				<!-- Form Name -->
				<legend>User Registration</legend>

				<!-- Text input-->
				<div class="form-group">
					<label class="col-md-4 control-label" for="textinput">Email
						ID</label>
					<div class="col-md-5">
						<input id="rname" name="rname" type="text"
							placeholder="you@example.com" class="form-control input-md"
							required="">

					</div>
				</div>

				<!-- Password input-->
				<div class="form-group">
					<label class="col-md-4 control-label" for="pwd">Password</label>
					<div class="col-md-5">
						<input id="rpwd" name="rpwd" type="password"
							placeholder="password" class="form-control input-md" required="">

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
	</div>

	</fieldset>
	</form>


</body>
</html>