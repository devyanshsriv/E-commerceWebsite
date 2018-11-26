<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>

<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@page session="true"%>
<html>
<head>
<!-- Latest compiled and minified CSS -->
<link rel="stylesheet"
	href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/css/bootstrap.min.css"
	integrity="sha384-BVYiiSIFeK1dGmJRAkycuHAHRg32OmUcww7on3RYdg4Va+PmSTsz/K68vbdEjh4u"
	crossorigin="anonymous">

<!-- Optional theme -->
<link rel="stylesheet"
	href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/css/bootstrap-theme.min.css"
	integrity="sha384-rHyoN1iRsVXV4nD0JutlnGaslCJuC7uwjduW9SVrLvRYooPp2bWYgmgJQIXwl/Sp"
	crossorigin="anonymous">
<script type="https://code.jquery.com/jquery-3.3.1.js"></script>
<!-- Latest compiled and minified JavaScript -->
<script
	src="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/js/bootstrap.min.js"
	integrity="sha384-Tc5IQib027qvyjSMfHjOMaLkfuWVxZxUPnCJA7l2mCWNIpG9mGCD8wGNIcPD7Txa"
	crossorigin="anonymous"></script>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1"><script>
function myFunction() {
    var x = document.getElementById("passwordinput");
    if (x.type === "password") {
        x.type = "text";
    } else {
        x.type = "password";
    }
}
</script>

</head>
<body onload='document.loginForm.username.focus();'>
	<%@include file="./Shared/Navbar.jsp"%>

	<c:if test="${not empty error}">
		<div class="error">${error}</div>
	</c:if>
	<c:if test="${not empty msg}">
		<div class="msg">${msg}</div>
	</c:if>
	<form class="form-horizontal" name='loginForm' action="perform_login"
		method='POST'>
		<fieldset>

			<!-- Form Name -->
			<legend>
				<h3>
					<center>
						<b>Login/Sign Up</b>
					</center>
				</h3>
			</legend>

			<!-- Text input-->
			<div class="form-group">
				<label class="col-md-4 control-label" for="username">E-Mail
					ID</label>
				<div class="col-md-4">
					<input id="textinput" name="username" type="text" placeholder="Enter your email as login id"
						class="form-control input-md" required="">
				</div>
			</div>

			<!-- Password input-->
			<div class="form-group">
				<label class="col-md-4 control-label" for="password">Password
				</label>
				<div class="col-md-4">
					<input id="passwordinput" name="password" type="password"
						placeholder="Enter password" class="form-control input-md">
						<input type="checkbox" onclick="myFunction()">Show Password
				</div>
			</div>
			
			
			<!-- Button -->
			<div class="form-group">
				<label class="col-md-4 control-label" for="singlebutton"></label>
				<div class="col-md-4">
					<button id="singlebutton" name="singlebutton"
						class="btn btn-primary">login</button>
					<br> <br>
					<p>
						New Customer? <a href="http://localhost:8080/Website/Register">Sign
							Up</a>
					</p>
				</div>
			</div>

		</fieldset>
	</form>
</body>
</html>