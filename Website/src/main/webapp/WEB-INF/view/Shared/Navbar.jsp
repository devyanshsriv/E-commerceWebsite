<%@taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<html>
<head>
<meta charset="utf-8">
<meta name="viewport" content="width=device-width, initial-scale=1">
<link rel="stylesheet"
	href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/css/bootstrap.min.css">
<script
	src="https://ajax.googleapis.com/ajax/libs/jquery/3.3.1/jquery.min.js"></script>
<script
	src="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/js/bootstrap.min.js"></script>
<meta name="viewport" content="width=device-width, initial-scale=1">
<link rel="stylesheet"
	href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/4.7.0/css/font-awesome.min.css">
<style>

{
	box-sizing: border-box;
}

.col-md-2 {
	width: 18.66666667%;
}

.column {
	float: left;
	width: 16.33%;
	padding: 5px;
}

/* Clearfix (clear floats) */
.row::after {
	content: "";
	clear: both;
	display: table;
}

element.style {
	display: inline-block;
}

body {
	font-family: "Lato", sans-serif;
}

.navbar {
    position: relative;
    min-height: 50px;
    margin-bottom: 1px;
    border: 1px solid transparent;
}

.sidenav {
	height: 100%;
	width: 0;
	position: fixed;
	z-index: 1;
	top: 0;
	left: 0;
	background-color: #111;
	overflow-x: hidden;
	transition: 0.5s;
	padding-top: 60px;
}

.sidenav a {
	padding: 8px 8px 8px 32px;
	text-decoration: none;
	font-size: 25px;
	color: #818181;
	display: block;
	transition: 0.3s;
}

.sidenav a:hover {
	color: #f1f1f1;
}

.sidenav .closebtn {
	position: absolute;
	top: 0;
	right: 25px;
	font-size: 36px;
	margin-left: 50px;
}

@media screen and (max-height: 450px) {
	.sidenav {
		padding-top: 15px;
	}
	.sidenav a {
		font-size: 18px;
	}
}

body {
	font-family: Arial;
}

* {
	box-sizing: border-box;
}

form.example input[type=text] {
	padding: 10px;
	font-size: 17px;
	border: 1px solid grey;
	float: left;
	width: 70%;
	background: #f1f1f1;
}

form.example button {
	float: left;
	width: 5%;
	padding: 10px;
	background: #2196F3;
	color: white;
	font-size: 17px;
	border: 1px solid grey;
	border-left: none;
	cursor: pointer;
}

form.example button:hover {
	background: #0b7dda;
}

form.example::after {
	content: "";
	clear: both;
	display: table;
}
</style>

</head>
<nav class="navbar navbar-inverse">
	<div class="container-fluid">
		<div class="navbar-header">
			<button type="button" class="navbar-toggle" data-toggle="collapse"
				data-target="#myNavbar">
				<span class="icon-bar"></span> <span class="icon-bar"></span> <span
					class="icon-bar"></span>
			</button>
			<a class="navbar-brand"
				href="${pageContext.request.contextPath}/index">SHOPOHOLICS</a>
		</div>

		<div class="collapse navbar-collapse" id="myNavbar">

			<ul class="nav navbar-nav">
				<%-- <li><a href="${pageContext.request.contextPath}/index">Home</a></li> --%>
				<%-- <li><a href="${pageContext.request.contextPath}/About">About</a></li>
				<li><a href="${pageContext.request.contextPath}/Deals">Deals</a></li>
				<li><a href="${pageContext.request.contextPath}/Contactus">Contact
						Us</a></li> --%>
				<li><a href="${pageContext.request.contextPath}/ViewProduct">View
						Products</a></li>
				<li><a href="${pageContext.request.contextPath}/New">New</a></li>

				<c:if test="${user.role=='ROLE_ADMIN'}">
					<li><a
						href="${pageContext.request.contextPath}/manageProduct/ProductRegister">Manage</a></li>
				</c:if>
				<c:if test="${user.role=='ROLE_USER'}">
					<li><a href="ShoppingCart"><span
							class="fas fa-cart-arrow-down" aria-hidden="true"> ${size}</span></a></li>
				</c:if>
			</ul>

			<div class="container">
				<div class="dropdown">
					<ul class="nav navbar-nav navbar-right">

						<c:if test="${user.name==null}">

							<li><a href="${pageContext.request.contextPath}/login"><span
									class="glyphicon glyphicon-log-in"></span> Login</a></li>
							<li><a href="${pageContext.request.contextPath}/Register"><span></span>
									Register</a></li>
						</c:if>


						<c:if test="${user.name!=null}">

							<li class="dropdown"><a class=" dropdown-toggle"
								type="button" data-toggle="dropdown" href="#">Welcome
									${user.name} <span class="caret"></span>
							</a>
								<ul class="dropdown-menu">

									<li><a href="logout"><span class="fas fa-sign-out-alt"></span>
											Logout</a></li>
								</ul></li>
						</c:if>
					</ul>
				</div>
			</div>

		</div>



		<!-- Search Bar -->
		<div class="row">
			<div class="col-lg-2">
				<span style="font-size: 30px; color: white; cursor: pointer"
					onclick="openNav()">&#9776;</span>

			</div>
			<div id="mySidenav" class="sidenav">
				<a href="javascript:void(0)" class="closebtn" onclick="closeNav()">&times;</a>
				<a href="#">Today's Deals</a> 
				<a href="#">About Us</a> 
				<a href="#">Clients</a>
				<a href="#">Contact Us</a>
			</div>


			<script>
				function openNav() {
					document.getElementById("mySidenav").style.width = "250px";
				}

				function closeNav() {
					document.getElementById("mySidenav").style.width = "0";
				}
			</script>

			<div class="col-lg-10">
				<div class="collapse navbar-collapse" id="myNavbar">
					<form class="example"
						action="${pageContext.request.contextPath}/search">
						<input type="text" placeholder="Search.." name="keyword">
						<button type="submit">
							<i class="fa fa-search"></i>
						</button>
					</form>
				</div>
			</div>
		</div>
	</div>
</nav>
</html>