<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<!DOCTYPE html>
<html lang="en">
<head>
<title>SHOPOHOLICS</title>
<meta charset="utf-8">
<meta name="viewport" content="width=device-width, initial-scale=1">
<link rel="stylesheet"
	href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/css/bootstrap.min.css">
<script
	src="https://ajax.googleapis.com/ajax/libs/jquery/3.3.1/jquery.min.js"></script>
<script
	src="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/js/bootstrap.min.js"></script>
<!-- <style>
* {
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
</style> -->

<style>
/* Global Styling */
.wrapper {
	padding: 0px 100px;
	max-width: 1200px;
	text-align: center;
	margin-left: auto;
	margin-right: auto;
	margin-top: 13px;
}

.right {
	float: right !important;
}
/* Image zoom on hover + Overlay colour */
.parent {
	width: 45%;
	margin: 20px;
	height: 300px;
	border: 1px solid blue;
	overflow: hidden;
	position: relative;
	float: left;
	display: inline-block;
	cursor: pointer;
}

.child {
	height: 100%;
	width: 100%;
	background-size: cover;
	background-repeat: no-repeat;
	-webkit-transition: all .5s;
	-moz-transition: all .5s;
	-o-transition: all .5s;
	transition: all .5s;
}

a {
	display: none;
	font-size: 35px;
	color: #ffffff !important;
	font-family: sans-serif;
	text-align: center;
	margin: auto;
	position: absolute;
	top: 0;
	left: 0;
	bottom: 0;
	right: 0;
	height: 50px;
	cursor: pointer;
	/*text-decoration: none;*/
}

.parent:hover .child, .parent:focus .child {
	-ms-transform: scale(1.2);
	-moz-transform: scale(1.2);
	-webkit-transform: scale(1.2);
	-o-transform: scale(1.2);
	transform: scale(1.2);
}

.parent:hover .child:before, .parent:focus .child:before {
	display: block;
}

.parent:hover a, .parent:focus a {
	display: block;
}

.child:before {
	content: "";
	display: none;
	height: 100%;
	width: 100%;
	position: absolute;
	top: 0;
	left: 0;
	background-color: rgba(52, 73, 94, 0.75);
}

/* Media Queries */
@media screen1 and (max-width: 960px) {
	.parent {
		width: 100%;
		margin: 20px 0px
	}
	.wrapper {
		padding: 20px 20px;
	}
}
</style>

<link rel="stylesheet"
	href="https://use.fontawesome.com/releases/v5.1.0/css/all.css"
	integrity="sha384-lKuwvrZot6UHsBSfcMvOkWwlCMgc0TaWr+30HWe3a4ltaBwTZhyTEggF5tJv8tbt"
	crossorigin="anonymous">
</head>
<body>

	<!-- Navigation Bar -->
	<%@include file="./Shared/Navbar.jsp"%>

	<div id="myCarousel" class="carousel slide" data-ride="carousel">
		<!-- Indicators -->
		<ol class="carousel-indicators">
			<li data-target="#myCarousel" data-slide-to="0" class="active"></li>
			<li data-target="#myCarousel" data-slide-to="1"></li>
			<li data-target="#myCarousel" data-slide-to="2"></li>
			<li data-target="#myCarousel" data-slide-to="3"></li>
		</ol>

		<!-- Wrapper for slides -->
		<div class="carousel-inner" role="listbox">
			<div class="item active">
				<img src="<c:url value="/resources/Banner/real.jpg"/>" alt="Image">
			</div>

			<div class="item">
				<img src="<c:url value="/resources/Banner/ebooks.jpg"/>" alt="Image">
			</div>
			<div class="item">
				<img src="<c:url value="/resources/Banner/redmi.jpg"/>" alt="Image">
			</div>
			<div class="item">
				<img src="<c:url value="/resources/Banner/tv.jpg"/>" alt="Image">
			</div>

			<!-- Left and right controls -->
			<a class="left carousel-control" href="#myCarousel" role="button"
				data-slide="prev"> <span
				class="glyphicon glyphicon-chevron-left" aria-hidden="true"></span>
				<span class="sr-only">Previous</span>
			</a> <a class="right carousel-control" href="#myCarousel" role="button"
				data-slide="next"> <span
				class="glyphicon glyphicon-chevron-right" aria-hidden="true"></span>
				<span class="sr-only">Next</span>
			</a>
		</div>
	</div>
	<div class="container">
		<div class="wrapper">
			<div class="parent" onclick="">
				<div class="child">
					<a href="#">Women's Collection</a> <img
						src="<c:url value="/resources/Banner/banner-01.jpg"/>"
						alt="Forest" height="300px" width="300px" class="img-fluid">
				</div>
			</div>
			<div class="parent right" onclick="">
				<div class="child bg-two">
					<a href="#">Men's Collection</a> <img
						src="<c:url value="/resources/Banner/banner-02.jpg"/>"
						alt="Forest" height="300px" width="300px" class="img-fluid">
				</div>
			</div>
			<div clss="row">
				<div class="parent right" onclick="">
					<div class="child bg-two">
						<a href="#">Shoes</a> <img
							src="<c:url value="/resources/Banner/item1.jpg"/>"
							alt="Forest" height="300px" width="300px" class="img-fluid">
					</div>
				</div>
				<div class="parent right" onclick="">
					<div class="child bg-two">
						<a href="#">Watches</a> <img
							src="<c:url value="/resources/Banner/banner-07.jpg"/>"
							alt="Forest" height="300px" width="300px" class="img-fluid">
					</div>
				</div>
				<div class="parent right" onclick="">
					<div class="child bg-two">
						<a href="#">Bags</a> <img
							src="<c:url value="/resources/Banner/banner-08.jpg"/>"
							alt="Forest" height="300px" width="300px" class="img-fluid">
					</div>
				</div>
			</div>
		</div>
	</div>
	<br>
	


	<footer class="container-fluid">
		<p>
		<h5>Online Shopping in India</h5>
		<br> Clothes, electronics, accessories - whatever your need for
		the hour maybe, Shopoholics, your favorite online shopping site, is
		sure to spoil you with a wide range of products. You don't have to
		wait for the weekends to shop as you can shop online on your way back
		home after work. Almost all popular brands across categories sell
		their products online, thereby bringing you closer to your
		preferences. Oh, and let's not forget about the various discounts on
		these products which make them an offer that is too hard to resist.
		So, are you all set to head online and shop? Let's take a look at what
		Flipkart has in store for you, shall we?<br>

		<h5>Buy Electronics Online at Attractive Prices</h5>
		<br> Appliances have become an integral aspect of managing your
		home. Take a walk through your home and you would know the number of
		appliances we use to help with our day-to-day activities. Just like
		how Joey points out in the popular sitcom Friends, all your furniture
		in your living room would be pointed towards the television. A walk
		into the kitchen and the work area would give you a glimpse into the
		importance of having a washing machine, a refrigerator and small
		appliances, such as a microwave oven, at your disposal. You no longer
		have to head to a store as you can buy electronics from Flipkart at
		delightful prices. Choose from an enticing range of products from
		popular brands such as Sony, Samsung, Philips, Apple and Xiaomi.
		What's more? You can have these products delivered to your doorstep.
		Some of the popular appliances that you can buy online include home
		theaters from Sony, audio players from Samsung, speakers from JBL and
		video accessories from Philips. That's not all, you also get to buy
		mobile phones online at great prices. Pick from a wide selection of
		smartphones which include popular Android phones, such as the Samsung
		S9 and the Redmi Note 5 and the range of Apple iPhones. All you have
		to do is open the Flipkart page, type the product of your choice and
		hit the search button. You'll then be exposed to a wide range of
		products to choose from.<br>
		<h5>Buy Clothes and Accessories Online - Variety at Your
			Fingertips</h5>
		Jewelry, shirts, T-shirts, trousers, handbags - name it and you will
		be spoilt for choice with a wide variety as you shop for accessories
		and clothes online. Go online shopping and pick from a wide range of
		products from your favorite brands which include United Colors of
		Benetton, Roadster, Woodlands, Wildcraft, Forever 21, Nike and more.
		While the men can choose from a large collection of apparels,
		footwear, accessories, and watches, the women can shop till they drop
		from the exhaustive range of kurtis, jewelry, ethnic wear and grooming
		products online. You can find a wide collection of apparel for
		children too.


	</footer>
</body>
</html>