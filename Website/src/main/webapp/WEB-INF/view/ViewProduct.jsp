<%@taglib uri="http://www.springframework.org/tags/form" prefix="form"%>
<%@taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>

<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<!-- Latest compiled and minified CSS -->

<link rel="stylesheet"
	href="https://use.fontawesome.com/releases/v5.1.0/css/all.css"
	integrity="sha384-lKuwvrZot6UHsBSfcMvOkWwlCMgc0TaWr+30HWe3a4ltaBwTZhyTEggF5tJv8tbt"
	crossorigin="anonymous">

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
<title>Manage Product</title>

</head>
<body>

	<!-- Navigation -->
	<%@include file="./Shared/Navbar.jsp"%>


	<div class="row">
		<div class="col-lg-3">
			<fieldset>

				<!-- Multiple Checkboxes (inline) -->
				<div class="form-group">
					<label class="col-md-4 control-label">Category:</label><br>
					<div class="list-grop-item">
						<div id="filter-group3">
							<c:forEach items="${catList}" var="cat">
								<br>
								<a class="a-filter add-filter nav-link"
									href="${pageContext.request.contextPath}/viewCategory/${cat.categoryId}"
									id="cat_${cat.categoryId}">${cat.categoryName}</a>
							</c:forEach>
						</div>

					</div>

				</div>
			</fieldset>
			<fieldset>
				<div class="form-group">
					<label class="col-md-4 control-label">Price:</label><br>
				</div>
			</fieldset>
			<fieldset>

				<form class="form-inline"
					action="${pageContext.request.contextPath}/filter" method="post">

					<div class="form-group">
						<input id="textinput" name="min" type="text" style="width: 70px"
							placeholder="Min" class="form-control input-sm"> <input
							id="textinput" name="max" type="text" placeholder="Max"
							style="width: 70px" class="form-control input-sm">

						<button type="submit" id="singlebutton" name="singlebutton"
							class="btn btn-success">Go</button>
					</div>
				</form>
			</fieldset>
		</div>

		<div class="col-lg-8">
			<c:set var="count" value="0" />
			<div class="container">
				<div class="row">
					<div class="column">
						<table id="tab">
							<tr id="tablerow">
								<c:forEach items="${prodlist}" var="pro">
									<c:set var="count" value="${count+1}" />
									<td><a
										href="${pageContext.request.contextPath}/viewProduct/${pro.productid}"><img
											src="${pageContext.request.contextPath}/resources/Images/${pro.code}/1.jpg"
											height="200px" width="200px" /></a> <br>
										<h4 style="display: inline block">${pro.name}<br>
											Price: Rs.${pro.unitprice}
										</h4> <br></td>
									<c:if test="${count%4==0}">
							</tr>
							<tr id="tablerow">
								</c:if>
								</c:forEach>
						</table>
					</div>
				</div>

			</div>
		</div>
	</div>

</body>
</html>