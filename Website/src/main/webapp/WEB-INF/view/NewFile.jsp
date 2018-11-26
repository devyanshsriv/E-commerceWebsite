<%-- <%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
	<%@taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>

<meta name="viewport" content="width=device-width, initial-scale=1">
<title>Bootstrap tutorial for begineers</title>
<link href="bootstrap/css/bootstrap.min.css" rel="stylesheet">
<link href="CustomStyles.css" rel="stylesheet" />

<meta charset="utf-8">
<meta name="viewport" content="width=device-width, initial-scale=1">
<link rel="stylesheet"
	href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/css/bootstrap.min.css">
<script
	src="https://ajax.googleapis.com/ajax/libs/jquery/3.3.1/jquery.min.js"></script>
<script
	src="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/js/bootstrap.min.js"></script>

<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Insert title here</title>
</head>
<body>

	<br />
	<div class="container">
		<div class="row">
			<div class="col-xs-12">

				<div id="imageCarousel" class="carousel slide" data-interval="2000"
					data-ride="carousel" data-pause="hover" data-wrap="true">

					<ol class="carousel-indicators">
						<li data-target="#imageCarousel" data-slide-to="0" class="active"></li>
						<li data-target="#imageCarousel" data-slide-to="1"></li>
						<li data-target="#imageCarousel" data-slide-to="2"></li>
					</ol>

					<div class="carousel-inner">
						<div class="item active">
							<div class="row">
								<div class="col-xs-4">
									<img src="<c:url value="/resources/Banner/watch.jpg"/>"
										alt="Snow" class="img-fluid">
									<div class="carousel-caption">
										<h3>Desert</h3>
										<p>Desert Image Description</p>
									</div>
								</div>
								<div class="col-xs-4">
									<img src="<c:url value="/resources/Banner/watch.jpg"/>"
										alt="Snow" class="img-fluid">
									<div class="carousel-caption">
										<h3>Jellyfish</h3>
										<p>Jellyfish Image Description</p>
									</div>
								</div>
								<div class="col-xs-4">
									<img src="<c:url value="/resources/Banner/watch.jpg"/>"
										alt="Snow" class="img-fluid">
									<div class="carousel-caption">
										<h3>Penguins</h3>
										<p>Penguins Image Description</p>
									</div>
								</div>
							</div>
						</div>
						<div class="item">
							<div class="row">
								<div class="col-xs-4">
									<img src="<c:url value="/resources/Banner/watch.jpg"/>"
										alt="Snow" class="img-fluid">
									<div class="carousel-caption">
										<h3>Lighthouse</h3>
										<p>Lighthouse Image Description</p>
									</div>
								</div>
								<div class="col-xs-4">
									<img src="<c:url value="/resources/Banner/watch.jpg"/>"
										alt="Snow" class="img-fluid">
									<div class="carousel-caption">
										<h3>Hydrangeas</h3>
										<p>Hydrangeas Image Description</p>
									</div>
								</div>
								<div class="col-xs-4">
									<img src="<c:url value="/resources/Banner/watch.jpg"/>"
										alt="Snow" class="img-fluid">
									<div class="carousel-caption">
										<h3>Koala</h3>
										<p>Koala Image Description</p>
									</div>
								</div>
							</div>
						</div>

						<div class="item">
							<div class="row">
								<div class="col-xs-4">
									<img src="<c:url value="/resources/Banner/watch.jpg"/>"
										alt="Snow" class="img-fluid">
									<div class="carousel-caption">
										<h3>Tulips</h3>
										<p>Tulips Image Description</p>
									</div>
								</div>
								<div class="col-xs-4">
									<img src="<c:url value="/resources/Banner/watch.jpg"/>"
										alt="Snow" class="img-fluid">
									<div class="carousel-caption">
										<h3>Chrysanthemum</h3>
										<p>Chrysanthemum Image Description</p>
									</div>
								</div>
								<div class="col-xs-4">
									<img src="<c:url value="/resources/Banner/watch.jpg"/>"
										alt="Snow" class="img-fluid">
									<div class="carousel-caption">
										<h3>Stripes</h3>
										<p>Stripes Image Description</p>
									</div>
								</div>
							</div>
						</div>
					</div>

					<a href="#imageCarousel" class="carousel-control left"
						data-slide="prev"> <span
						class="glyphicon glyphicon-chevron-left"></span>
					</a> <a href="#imageCarousel" class="carousel-control right"
						data-slide="next"> <span
						class="glyphicon glyphicon-chevron-right"></span>
					</a>
				</div>

			</div>
		</div>
	</div>

	<script
		src="https://ajax.googleapis.com/ajax/libs/jquery/1.11.3/jquery.min.js">
		
	</script>
	<script src="bootstrap/js/bootstrap.min.js"></script>

</body>
</html> --%>











<%-- <%@taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<html>
<head>

<link href="//netdna.bootstrapcdn.com/bootstrap/3.1.0/css/bootstrap.min.css" rel="stylesheet" id="bootstrap-css">
<script src="//netdna.bootstrapcdn.com/bootstrap/3.1.0/js/bootstrap.min.js"></script>
<script src="//code.jquery.com/jquery-1.11.1.min.js"></script>
<!------ Include the above in your HEAD tag ---------->
<style>

.mag {
    width:200px;
    margin: 0 auto;
    float: none;
}
    
.mag img {
    max-width: 100%;
}
        
  

.magnify {
    position: relative;
    cursor: none
}

.magnify-large {
    position: absolute;
    display: none;
    width: 175px;
    height: 175px;

    -webkit-box-shadow: 0 0 0 7px rgba(255, 255, 255, 0.85), 0 0 7px 7px rgba(0, 0, 0, 0.25), inset 0 0 40px 2px rgba(0, 0, 0, 0.25);
       -moz-box-shadow: 0 0 0 7px rgba(255, 255, 255, 0.85), 0 0 7px 7px rgba(0, 0, 0, 0.25), inset 0 0 40px 2px rgba(0, 0, 0, 0.25);
            box-shadow: 0 0 0 7px rgba(255, 255, 255, 0.85), 0 0 7px 7px rgba(0, 0, 0, 0.25), inset 0 0 40px 2px rgba(0, 0, 0, 0.25);
    
    -webkit-border-radius: 100%;
       -moz-border-radius: 100%;
             border-radius: 100%
}

</style>
</head>
<body>
<div class="container">

    <div class="row">
    
        <div class="col-md-4">
            <div class="mag">
                Watch<br>
                <img data-toggle="magnify" src="<c:url value="/resources/Banner/watch.jpg"/>" alt="">
            </div>
            <div class="mag">
                Trimmer<br>
                <img data-toggle="magnify" src="<c:url value="/resources/Banner/trimmers.jpg"/>" alt="">
            </div>
        </div><!--/span-->

    </div><!--/row-->
    <hr>
    <br>
 </div> <!-- / .container -->
 <script>
 
 !function ($) {

	    "use strict"; // jshint ;_;


	    /* MAGNIFY PUBLIC CLASS DEFINITION
	     * =============================== */

	    var Magnify = function (element, options) {
	        this.init('magnify', element, options)
	    }

	    Magnify.prototype = {

	        constructor: Magnify

	        , init: function (type, element, options) {
	            var event = 'mousemove'
	                , eventOut = 'mouseleave';

	            this.type = type
	            this.$element = $(element)
	            this.options = this.getOptions(options)
	            this.nativeWidth = 0
	            this.nativeHeight = 0

	            this.$element.wrap('<div class="magnify" \>');
	            this.$element.parent('.magnify').append('<div class="magnify-large" \>');
	            this.$element.siblings(".magnify-large").css("background","url('" + this.$element.attr("src") + "') no-repeat");

	            this.$element.parent('.magnify').on(event + '.' + this.type, $.proxy(this.check, this));
	            this.$element.parent('.magnify').on(eventOut + '.' + this.type, $.proxy(this.check, this));
	        }

	        , getOptions: function (options) {
	            options = $.extend({}, $.fn[this.type].defaults, options, this.$element.data())

	            if (options.delay && typeof options.delay == 'number') {
	                options.delay = {
	                    show: options.delay
	                    , hide: options.delay
	                }
	            }

	            return options
	        }

	        , check: function (e) {
	            var container = $(e.currentTarget);
	            var self = container.children('img');
	            var mag = container.children(".magnify-large");

	            // Get the native dimensions of the image
	            if(!this.nativeWidth && !this.nativeHeight) {
	                var image = new Image();
	                image.src = self.attr("src");

	                this.nativeWidth = image.width;
	                this.nativeHeight = image.height;

	            } else {

	                var magnifyOffset = container.offset();
	                var mx = e.pageX - magnifyOffset.left;
	                var my = e.pageY - magnifyOffset.top;

	                if (mx < container.width() && my < container.height() && mx > 0 && my > 0) {
	                    mag.fadeIn(100);
	                } else {
	                    mag.fadeOut(100);
	                }

	                if(mag.is(":visible"))
	                {
	                    var rx = Math.round(mx/container.width()*this.nativeWidth - mag.width()/2)*-1;
	                    var ry = Math.round(my/container.height()*this.nativeHeight - mag.height()/2)*-1;
	                    var bgp = rx + "px " + ry + "px";

	                    var px = mx - mag.width()/2;
	                    var py = my - mag.height()/2;

	                    mag.css({left: px, top: py, backgroundPosition: bgp});
	                }
	            }

	        }
	    }


	    /* MAGNIFY PLUGIN DEFINITION
	     * ========================= */

	    $.fn.magnify = function ( option ) {
	        return this.each(function () {
	            var $this = $(this)
	                , data = $this.data('magnify')
	                , options = typeof option == 'object' && option
	            if (!data) $this.data('tooltip', (data = new Magnify(this, options)))
	            if (typeof option == 'string') data[option]()
	        })
	    }

	    $.fn.magnify.Constructor = Magnify

	    $.fn.magnify.defaults = {
	        delay: 0
	    }


	    /* MAGNIFY DATA-API
	     * ================ */

	    $(window).on('load', function () {
	        $('[data-toggle="magnify"]').each(function () {
	            var $mag = $(this);
	            $mag.magnify()
	        })
	    })

	} ( window.jQuery );
 
 </script>
 </body>
 </html> --%>







<%-- <%@taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>>
 <html>
 <head>
 <style>
 
 /**THE SAME CSS IS USED IN ALL 3 DEMOS**/    
 /**gallery margins**/  
 ul.gallery{    
 margin-left: 3vw;     
 margin-right:3vw;  
 }    

 .zoom {      
 -webkit-transition: all 0.35s ease-in-out;    
 -moz-transition: all 0.35s ease-in-out;    
 transition: all 0.35s ease-in-out;     
 cursor: -webkit-zoom-in;      
 cursor: -moz-zoom-in;      
 cursor: zoom-in;  
 }     

 .zoom:hover,  
 .zoom:active,   
 .zoom:focus {
 /**adjust scale to desired size, 
 add browser prefixes**/
 -ms-transform: scale(2.5);    
 -moz-transform: scale(2.5);  
 -webkit-transform: scale(2.5);  
 -o-transform: scale(2.5);  
 transform: scale(2.5);    
 position:relative;      
 z-index:100;  
 }

 /**To keep upscaled images visible on mobile, 
 increase left & right margins a bit**/  
 @media only screen and (max-width: 768px) {   
 ul.gallery {      
 margin-left: 15vw;       
 margin-right: 15vw;
 }

 /**TIP: Easy escape for touch screens,
 give gallery's parent container a cursor: pointer.**/
 .DivName {cursor: pointer}
 }
 
 </style>
 </head>
 <body>

<ul class="list-inline gallery">    
<li><img class="thumbnail zoom" src="<c:url value="/resources/Banner/watch.jpg"/>"></li>    
<li><img class="thumbnail zoom" src="<c:url value="/resources/Banner/trimmers.jpg"/>"></li>    
<li><img class="thumbnail zoom" src="<c:url value="/resources/Banner/shirt.jpg"/>"></li>    
</ul>
 
 </body>
 </html>  --%>













<!-- <link
	href="//maxcdn.bootstrapcdn.com/bootstrap/4.0.0/css/bootstrap.min.css"
	rel="stylesheet" id="bootstrap-css">
<script
	src="//maxcdn.bootstrapcdn.com/bootstrap/4.0.0/js/bootstrap.min.js"></script>
<script
	src="//cdnjs.cloudflare.com/ajax/libs/jquery/3.2.1/jquery.min.js"></script>
---- Include the above in your HEAD tag --------

<link rel="stylesheet"
	href="https://use.fontawesome.com/releases/v5.0.8/css/all.css">


<div class="container">
	<br>
	<div class="row"> -->
<!-- 	<aside class="col-sm-6">
<p>Payment form1</p>

<article class="card">
<div class="card-body p-5">
<p> <img src="http://bootstrap-ecommerce.com/main/images/icons/pay-visa.png"> 
	<img src="http://bootstrap-ecommerce.com/main/images/icons/pay-mastercard.png"> 
   <img src="http://bootstrap-ecommerce.com/main/images/icons/pay-american-ex.png">
</p>
<p class="alert alert-success">Some text success or error</p>

<form role="form">
<div class="form-group">
<label for="username">Full name (on the card)</label>
<div class="input-group">
	<div class="input-group-prepend">
		<span class="input-group-text"><i class="fa fa-user"></i></span>
	</div>
	<input type="text" class="form-control" name="username" placeholder="" required="">
</div> input-group.//
</div> form-group.//

<div class="form-group">
<label for="cardNumber">Card number</label>
<div class="input-group">
	<div class="input-group-prepend">
		<span class="input-group-text"><i class="fa fa-credit-card"></i></span>
	</div>
	<input type="text" class="form-control" name="cardNumber" placeholder="">
</div> input-group.//
</div> form-group.//

<div class="row">
    <div class="col-sm-8">
        <div class="form-group">
            <label><span class="hidden-xs">Expiration</span> </label>
        	<div class="form-inline">
        		<select class="form-control" style="width:45%">
				  <option>MM</option>
				  <option>01 - Janiary</option>
				  <option>02 - February</option>
				  <option>03 - February</option>
				</select>
	            <span style="width:10%; text-align: center"> / </span>
	            <select class="form-control" style="width:45%">
				  <option>YY</option>
				  <option>2018</option>
				  <option>2019</option>
				</select>
        	</div>
        </div>
    </div>
    <div class="col-sm-4">
        <div class="form-group">
            <label data-toggle="tooltip" title="" data-original-title="3 digits code on back side of the card">CVV <i class="fa fa-question-circle"></i></label>
            <input class="form-control" required="" type="text">
        </div> form-group.//
    </div>
</div> row.//
<button class="subscribe btn btn-primary btn-block" type="button"> Confirm  </button>
</form>
</div> card-body.//
</article> card.//


	</aside> col.//
	<aside class="col-sm-6"> -->




<!-- <article class="card">
<div class="card-body p-5">

<ul class="nav bg-light nav-pills rounded nav-fill mb-3" role="tablist">
	<li class="nav-item">
		<a class="nav-link active" data-toggle="pill" href="#nav-tab-card">
		<i class="fa fa-credit-card"></i> Credit Card</a></li>
	<li class="nav-item">
		<a class="nav-link" data-toggle="pill" href="#nav-tab-paypal">
		<i class="fab fa-paypal"></i>  Paypal</a></li>
	<li class="nav-item">
		<a class="nav-link" data-toggle="pill" href="#nav-tab-bank">
		<i class="fa fa-university"></i>  Bank Transfer</a></li>
</ul>

<div class="tab-content">
<div class="tab-pane fade show active" id="nav-tab-card">
	<p class="alert alert-success">Some text success or error</p>
	<form role="form">
	<div class="form-group">
		<label for="username">Full name (on the card)</label>
		<input type="text" class="form-control" name="username" placeholder="" required="">
	</div> form-group.//

	<div class="form-group">
		<label for="cardNumber">Card number</label>
		<div class="input-group">
			<input type="text" class="form-control" name="cardNumber" placeholder="">
			<div class="input-group-append">
				<span class="input-group-text text-muted">
					<i class="fab fa-cc-visa"></i>   <i class="fab fa-cc-amex"></i>   
					<i class="fab fa-cc-mastercard"></i> 
				</span>
			</div>
		</div>
	</div> form-group.//

	<div class="row">
	    <div class="col-sm-8">
	        <div class="form-group">
	            <label><span class="hidden-xs">Expiration</span> </label>
	        	<div class="input-group">
	        		<input type="number" class="form-control" placeholder="MM" name="">
		            <input type="number" class="form-control" placeholder="YY" name="">
	        	</div>
	        </div>
	    </div>
	    <div class="col-sm-4">
	        <div class="form-group">
	            <label data-toggle="tooltip" title="" data-original-title="3 digits code on back side of the card">CVV <i class="fa fa-question-circle"></i></label>
	            <input type="number" class="form-control" required="">
	        </div> form-group.//
	    </div>
	</div> row.//
	<button class="subscribe btn btn-primary btn-block" type="button"> Confirm  </button>
	</form>
</div> tab-pane.//
<div class="tab-pane fade" id="nav-tab-paypal">
<p>Paypal is easiest way to pay online</p>
<p>
<button type="button" class="btn btn-primary"> <i class="fab fa-paypal"></i> Log in my Paypal </button>
</p>
<p><strong>Note:</strong> Lorem ipsum dolor sit amet, consectetur adipisicing elit, sed do eiusmod
tempor incididunt ut labore et dolore magna aliqua. </p>
</div>
<div class="tab-pane fade" id="nav-tab-bank">
<p>Bank accaunt details</p>
<dl class="param">
  <dt>BANK: </dt>
  <dd> THE WORLD BANK</dd>
</dl>
<dl class="param">
  <dt>Accaunt number: </dt>
  <dd> 12345678912345</dd>
</dl>
<dl class="param">
  <dt>IBAN: </dt>
  <dd> 123456789</dd>
</dl>
<p><strong>Note:</strong> Lorem ipsum dolor sit amet, consectetur adipisicing elit, sed do eiusmod
tempor incididunt ut labore et dolore magna aliqua. </p>
</div> tab-pane.//
</div> tab-content .//

</div> card-body.//
</article> card.//


	</aside> col.//
</div> row.//

</div> 
container end.//

<br><br>
<article class="bg-secondary mb-3">  
<div class="card-body text-center">

    <h3 class="text-white mt-3">Bootstrap 4 UI KIT</h3>
<p class="h5 text-white">Components and templates  <br> for Ecommerce, marketplace, booking websites 
and product landing pages</p>   <br>
<p><a class="btn btn-warning" target="_blank" href="http://bootstrap-ecommerce.com/"> Bootstrap-ecommerce.com  
 <i class="fa fa-window-restore "></i></a></p>
</div>
<br><br>
</article> -->




<!-- <html>
<head>
<style>
/* Style the Image Used to Trigger the Modal */
#myImg {
    border-radius: 5px;
    cursor: pointer;
    transition: 0.3s;
}

#myImg:hover {opacity: 0.7;}

/* The Modal (background) */
.modal {
    display: none; /* Hidden by default */
    position: fixed; /* Stay in place */
    z-index: 1; /* Sit on top */
    padding-top: 100px; /* Location of the box */
    left: 0;
    top: 0;
    width: 100%; /* Full width */
    height: 100%; /* Full height */
    overflow: auto; /* Enable scroll if needed */
    background-color: rgb(0,0,0); /* Fallback color */
    background-color: rgba(0,0,0,0.9); /* Black w/ opacity */
}

/* Modal Content (Image) */
.modal-content {
    margin: auto;
    display: block;
    width: 80%;
    max-width: 700px;
}

/* Caption of Modal Image (Image Text) - Same Width as the Image */
#caption {
    margin: auto;
    display: block;
    width: 80%;
    max-width: 700px;
    text-align: center;
    color: #ccc;
    padding: 10px 0;
    height: 150px;
}

/* Add Animation - Zoom in the Modal */
.modal-content, #caption { 
    animation-name: zoom;
    animation-duration: 0.6s;
}

@keyframes zoom {
    from {transform:scale(0)} 
    to {transform:scale(1)}
}

/* The Close Button */
.close {
    position: absolute;
    top: 15px;
    right: 35px;
    color: #f1f1f1;
    font-size: 40px;
    font-weight: bold;
    transition: 0.3s;
}

.close:hover,
.close:focus {
    color: #bbb;
    text-decoration: none;
    cursor: pointer;
}

/* 100% Image Width on Smaller Screens */
@media only screen and (max-width: 700px){
    .modal-content {
        width: 100%;
    }
}
</style>
</head>
<body>
	Trigger the Modal
<img id="myImg" src="resources/Banner/11.jpg" alt="Snow" style="width:100%;max-width:300px">

The Modal
<div id="myModal" class="modal">

  The Close Button
  <span class="close">&times;</span>

  Modal Content (The Image)
  <img class="modal-content" id="img01">

  Modal Caption (Image Text)
  <div id="caption"></div>
</div>

<script>
// Get the modal
var modal = document.getElementById('myModal');

// Get the image and insert it inside the modal - use its "alt" text as a caption
var img = document.getElementById('myImg');
var modalImg = document.getElementById("img01");
var captionText = document.getElementById("caption");
img.onclick = function(){
    modal.style.display = "block";
    modalImg.src = this.src;
    captionText.innerHTML = this.alt;
}

// Get the <span> element that closes the modal
var span = document.getElementsByClassName("close")[0];

// When the user clicks on <span> (x), close the modal
span.onclick = function() { 
    modal.style.display = "none";
}
</script>

</body>

</html> -->




<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
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
<style>
<style>
/* Global Styling */

nav {
	background-color: #34495e;
	height: 80px;
	position: fixed;
	width: 100vw;
	top: 0;
	z-index: 999;
}

#logo {
	height: 80px;
	margin-left: 20px;
}

.wrapper {
	padding: 50px 50px;
	max-width: 1200px;
	text-align: center;
	margin-left: auto;
	margin-right: auto;
	margin-top: 80px;
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
@media screen and (max-width: 960px) {
	.parent {
		width: 100%;
		margin: 20px 0px
	}
	.wrapper {
		padding: 20px 20px;
	}
}
</style>
</head>
<body>
	<script
		src="https://ajax.googleapis.com/ajax/libs/jquery/3.1.0/jquery.min.js"></script>

	<div class="wrapper">
		<div class="parent" onclick="">
			<div class="child bg-one">
				<a href="#">Los Angeles</a> <img
					src="<c:url value="/resources/Banner/11.jpg"/>" alt="Forest"
					height="250px" width="250px" class="img-fluid">
			</div>
		</div>

		<div class="parent right" onclick="">
			<div class="child bg-two">
				<a href="#">London</a> <img
					src="<c:url value="/resources/Banner/11.jpg"/>" alt="Forest"
					height="250px" width="250px" class="img-fluid">
			</div>
		</div>

		<div class="parent" onclick="">
			<div class="child bg-three">
				<a href="#">New York</a> <img
					src="<c:url value="/resources/Banner/11.jpg"/>" alt="Forest"
					height="250px" width="250px" class="img-fluid">
			</div>
		</div>

		<div class="parent right" onclick="">
			<div class="child bg-four">
				<a href="#">Hollywood</a> <img
					src="<c:url value="/resources/Banner/11.jpg"/>" alt="Forest"
					height="250px" width="250px" class="img-fluid">
			</div>
		</div>

		<div class="parent" onclick="">
			<div class="child bg-five">
				<a href="#">Dubai</a><img
					src="<c:url value="/resources/Banner/11.jpg"/>" alt="Forest"
					height="250px" width="250px" class="img-fluid">
			</div>
		</div>

		<div class="parent right" onclick="">
			<div class="child bg-six">
				<a href="#">San Francisco</a><img
					src="<c:url value="/resources/Banner/11.jpg"/>" alt="Forest"
					height="250px" width="250px" class="img-fluid">
			</div>
		</div>
	</div>
</body>
</html>