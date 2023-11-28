<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Landing</title>
<link
	href="https://cdn.jsdelivr.net/npm/bootstrap@5.3.2/dist/css/bootstrap.min.css"
	rel="stylesheet"
	integrity="sha384-T3c6CoIi6uLrA9TneNEoa7RxnatzjcDSCmG1MXxSR1GAsXEV/Dwwykc2MPK8M2HN"
	crossorigin="anonymous">
<style type="text/css">
.box {
	display: flex;
	flex-direction: row;
}

.btn-in {
	background-color: #2D2DB0 !important;
	color: white;
}

.btn-in:hover {
	color: black;
	background-color:white!important;
	border: 1px solid #2D2DB0;
}

.b1 {
	margin: 200px 0 200px 100px;
	padding: 10px 0px 10px 80px;
	width: 45%;
}
.b2 {
	margin-right:100px;
	
}
</style>
</head>
<body>
	<div class="box">
		<div class="b1">
			<h1>Book Domestic and International Flight Tickets</h1>
			<p>All Your Dreams Have A Destination. Book Your Flight With Air Ticket Now!</p>
			<button class="btn btn-in">Know More</button>
		</div>
		<div class="b2">
			<img alt="flight" width="580px" src="../../land.svg">
		</div>
	</div>
</body>
</html>