<%@taglib uri="http://www.springframework.org/tags/form" prefix="form"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
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
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>User Registration</title>
</head>
<body>

	<form:form class="form-horizontal" modelAttribute="shop"
		action="${pageContext.request.contextPath}/updateShop" method="post">
		<fieldset>
			<form:hidden path="userid" />
			<!-- Form Name -->
			<legend>Registration Form</legend>

			<!-- Text input-->
			<div class="form-group">
				<label class="col-md-4 control-label" for="Name">User Name</label>
				<div class="col-md-8">
					<form:input id="Name" name="Name" path="name" type="text"
						placeholder="name" class="form-control input-md" required="" />
					<span class="help-block">Please enter full name</span>
				</div>
			</div>

			<!-- Text input-->
			<div class="form-group">
				<label class="col-md-4 control-label" for="Address">User
					Address</label>
				<div class="col-md-8">
					<form:input id="Address" name="Address" path="address" type="text"
						placeholder="address" class="form-control input-md" required="" />
					<span class="help-block">Enter full address</span>
				</div>
			</div>

			<!-- Text input-->
			<div class="form-group">
				<label class="col-md-4 control-label" for="Mobile">User
					Mobile</label>
				<div class="col-md-8">
					<form:input id="Mobile" name="Mobile" path="mobile" type="text"
						placeholder="mobile" class="form-control input-md" required="" />
					<span class="help-block">Enter mobile number</span>
				</div>
			</div>

			<!-- Text input-->
			<div class="form-group">
				<label class="col-md-4 control-label" for="Email">Email</label>
				<div class="col-md-8">
					<input id="Email" name="Email" type="text" placeholder="email"
						class="form-control input-md" required=""> <span
						class="help-block">enter your email id</span>
				</div>
			</div>

			<!-- Button (Double) -->
			<div class="form-group">
				<label class="col-md-4 control-label" for="Submit"></label>
				<div class="col-md-8">
					<button id="Submit" name="Submit" type="submit"
						class="btn btn-primary">Submit</button>
					<button id="Cancel" name="Cancel" class="btn btn-danger">Cancel</button>
				</div>
			</div>

			<!-- Button -->
			<div class="form-group">
				<label class="col-md-4 control-label" for="singlebutton"></label>
				<div class="col-md-4">
					<a href="Showall" class="btn btn-info" role="button">Show
						Records</a>
				</div>
			</div>


		</fieldset>
	</form:form>
</body>
</html>