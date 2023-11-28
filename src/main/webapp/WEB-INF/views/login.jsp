<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Login</title>
<link
	href="https://cdn.jsdelivr.net/npm/bootstrap@5.3.2/dist/css/bootstrap.min.css"
	rel="stylesheet"
	integrity="sha384-T3c6CoIi6uLrA9TneNEoa7RxnatzjcDSCmG1MXxSR1GAsXEV/Dwwykc2MPK8M2HN"
	crossorigin="anonymous">
<style type="text/css">
.container {
	display: flex;
	flex-direction: column;
	justify-content: center;
	align-items: center;
}

.content {
	background: rgba(0, 0, 0, 0.7);
	padding: 80px 25px;
	border-radius: 10px;
}

body {
	background-image:
		url("https://i.pinimg.com/736x/d8/c1/6a/d8c16a55b3b04489dbc3cf16e34e3291.jpg");
	background-size: cover;
}

input {
	width: 400px !important;
	margin: 20px;
	padding: 10px;
}
</style>
</head>

<body>
	<div class="container" style="text-align: center; margin-top: 170px;">
		<div class="content">

			<h2 class="text-white">Login Page</h2>
			<form:form action="validate" method="post" modelAttribute="user">
				<h5 class="text-danger">${error }</h5>
				<p class="text-white">${exp}</p>
				<div>
					<form:input path="username" class="form-control"
						placeholder="Enter Username" />
					<form:errors path="username" class="text-danger" />
				</div>
				<div>
					<form:password path="password" class="form-control"
						placeholder="Enter Password" />
					<form:errors path="password" class="text-danger" />
				</div>
				<input value="Login" type="submit" class="btn btn-success" />
			</form:form>
		</div>
		<br>

	</div>

	<script
		src="https://cdn.jsdelivr.net/npm/bootstrap@5.3.2/dist/js/bootstrap.bundle.min.js"
		integrity="sha384-C6RzsynM9kWDrMNeT87bh95OGNyZPhcTNXj1NW7RuBCsyN/o0jlpcV8Qyq46cDfL"
		crossorigin="anonymous"></script>
</body>
</html>