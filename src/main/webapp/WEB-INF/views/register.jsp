<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@page import="java.util.*"%>
<html lang="en">
<head>
<meta charset="utf-8">
<meta name="viewport" content="width=device-width, initial-scale=1">
<title>Register</title>
<link
	href="https://cdn.jsdelivr.net/npm/bootstrap@5.3.2/dist/css/bootstrap.min.css"
	rel="stylesheet"
	integrity="sha384-T3c6CoIi6uLrA9TneNEoa7RxnatzjcDSCmG1MXxSR1GAsXEV/Dwwykc2MPK8M2HN"
	crossorigin="anonymous">
<style type="text/css">
.form-d {
	display: flex;
	flex-direction: column;
	gap: 15px;
	width: 400px;
}

.btn {padding: 4px 20px;}
.head{padding: 5px 10px}

input, select ,option{
	padding: 3px 5px 2px;
	margin: 2px;
}
</style>
</head>
<body>
	<%
	Random random = new Random();
	int n = random.nextInt(90000);
	%>
	<div class="container">
		<h3 class="head">Register Customer</h3>
		<form:form action="registerCustomer" method="post"
			modelAttribute="userDetails">
			<div class="form-d">
				<form:input path="cId" type="hidden" value="<%=n%>" />
				<form:input path="name" placeholder="Enter Name" />
				<form:errors path="name" class="text text-danger" />
				<form:input path="email" placeholder="Enter Mail" type="text" />
				<form:errors path="email" class="text text-danger" />
				<form:input path="password" placeholder="Enter Password" />
				<form:errors path="password" class="text text-danger" />
				<form:input path="reTypePassword" placeholder="Confirm Password" />
				<form:errors path="reTypePassword" class="text text-danger" />
				<form:input path="dateOfBirth" placeholder="Enter Date Of Birth"
					type="date" />
				<form:errors path="dateOfBirth" class="text text-danger" />
				<form:input path="address" placeholder="Enter Address" />
				<form:errors path="address" class="text text-danger" />
				<form:select path="gender">
					<form:option value="Male">Male</form:option>
					<form:option value="female">Female</form:option>
				</form:select>
				<form:errors path="gender" class="text text-danger" />
				<form:input path="phone" placeholder="Enter Phone No." type="text" />
				<form:errors path="phone" class="text text-danger" />
				<form:input path="SSNType" placeholder="Enter SSN Type" type="text" />
				<form:errors path="SSNType" class="text text-danger" />
				<form:input path="SSNNumber" placeholder="Enter SSN Number" />
				<form:errors path="SSNNumber" class="text text-danger" />
			</div>
			<br>
			<div>
				<input type="submit" value="Register"
					class="btn btn-success btn btn sm"> &nbsp; <input
					type="reset" value="Clear" class="btn btn-danger btn btn sm">
			</div>
<div style="padding: 5px 0px;">
			<h5 class="text text-success">${success}</h5>
			<h5 class="text text-danger">${fail}</h5>

</div>
		</form:form>
	</div>
</body>
</html>