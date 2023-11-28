<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Home</title>
<link
	href="https://cdn.jsdelivr.net/npm/bootstrap@5.3.2/dist/css/bootstrap.min.css"
	rel="stylesheet"
	integrity="sha384-T3c6CoIi6uLrA9TneNEoa7RxnatzjcDSCmG1MXxSR1GAsXEV/Dwwykc2MPK8M2HN"
	crossorigin="anonymous">
<style>
.nb {
	display: flex;
	gap: 20px;
	position: relative;
}

.nb a {
	text-decoration: none;
	color: black;
	padding: 10px 18px;
}

.nb a:hover {
	background-color: #2D2DB0;
	color: white;
	border-radius: 70px;
}

.nb .logout {
	background: tomato;
	color: white;
	border-radius: 70px;
}

.log {
	position: absolute;
	top: -17px;
	left: 37px;
}
</style>
</head>

<body>
	<div class="container-fluid">
		<br>
		<%-- <h1>Welcome ${name}</h1> <br> --%>
		<div class="nb">
			<img alt="logo" class="log" width="80px;" src="../../logo.jpg">
			<a style="margin-right: 400px; margin-left: 120px;" href="home">Air
				Ticket</a> <a class="link-opacity-90" href="register">Register
				Customer</a> <a class="link-opacity-90" href="profile">Customer
				Profile</a> <a class="link-opacity-90" href="searchAndBook">Searching
				and Booking</a> <a class="link-opacity-90" href="cancel">Flight
				Cancellation</a> <a class="link-opacity-90 logout" href="logout">Logout</a>
		</div>
		<br>
		<c:choose>

			<c:when test="${page eq 'home'}">
				<c:import url="landing.jsp" />
			</c:when>
			<c:when test="${page eq null}">
				<c:import url="landing.jsp" />
			</c:when>

			<c:when test="${page eq 'register'}">
				<c:import url="register.jsp" />
			</c:when>

			<c:when test="${page eq 'profile'}">
				<c:import url="profile.jsp" />
			</c:when>
			<c:when test="${page eq 'searchAndBook'}">
				<c:import url="searchAndBook.jsp" />
			</c:when>
			<c:when test="${page eq 'cancel'}">
				<c:import url="cancel.jsp" />
			</c:when>
		</c:choose>
	</div>

	<script
		src="https://cdn.jsdelivr.net/npm/bootstrap@5.3.2/dist/js/bootstrap.bundle.min.js"
		integrity="sha384-C6RzsynM9kWDrMNeT87bh95OGNyZPhcTNXj1NW7RuBCsyN/o0jlpcV8Qyq46cDfL"
		crossorigin="anonymous"></script>
</body>
</html>