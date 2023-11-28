<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
<style type="text/css">
.btn {
	padding: 4px 20px;
}

.head {
	padding: 5px 10px
}
</style>
</head>
<body>
	<div class="container">
		<h3 class="head">Customer Profile</h3>
		<table class="table">
			<form:form action="update" method="post" modelAttribute="userDetails">
				<tr>
					<td>Customer ID</td>
					<td><form:input path="cId" value="${customer.getcId()}"
							readonly="true" /></td>
				</tr>
				<tr>
					<td>Customer Name</td>
					<td><form:input path="name" value="${customer.getName()}" />
						<form:errors path="name" class="text text-danger" /></td>
				</tr>
				<tr>
					<td>Email</td>
					<td><form:input path="email" value="${customer.getEmail()}" />
						<form:errors path="email" class="text text-danger" /></td>
				</tr>
				<tr>
					<td>Password</td>
					<td><form:input path="password"
							value="${customer.getPassword()}" /> <form:errors
							path="password" class="text text-danger" /></td>
				</tr>
				<tr>
					<td>Date Of Birth</td>
					<td><form:input path="dateOfBirth"
							value="${customer.getDateOfBirth()}" /> <form:errors
							path="dateOfBirth" class="text text-danger" /></td>
				</tr>
				<tr>
					<td>Phone Number</td>
					<td><form:input path="phone" value="${customer.getPhone()}" />
						<form:errors path="phone" class="text text-danger" /></td>
				</tr>
				<tr>
					<td>Address</td>
					<td><form:input path="address"
							value="${customer.getAddress()}" /> <form:errors path="address"
							class="text text-danger" /></td>
				</tr>
				<tr>
					<td>Gender</td>
					<td><form:input path="gender" value="${customer.getGender()}" />
						<form:errors path="gender" class="text text-danger" /></td>
				</tr>
				<tr>
					<td>SSN Number</td>
					<td><form:input path="SSNNumber"
							value="${customer.getSSNNumber()}" /> <form:errors
							path="SSNNumber" class="text text-danger" /></td>
				</tr>
				<tr>
					<td><input type="submit" value="Update Profile"
						class="btn btn-secondary"></td>
				</tr>
			</form:form>
		</table>
				<div style="padding: 5px 0px;">
		<h5 class="text text-success">${success}</h5>
		<h5 class="text text-danger">${fail}</h5>
		</div>
	</div>
</body>
</html>