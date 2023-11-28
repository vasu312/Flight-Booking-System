<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/functions" prefix="fn"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
<style type="text/css">
.btn {
	padding: 4px 20px;
	margin-left: 10px;
}

.form-d input, input[tye="date"], input[tye="time"] {
	padding: 5px 10px 5px;
	margin: 10px;
	width: 400px;
}

.form-d {
	display: flex;
	flex-direction: column;
	gap: 15px;
	width: 700px;
}

.head {
	padding: 5px 10px
}
</style>
</head>
<body>

	<div class="container">
		<h3 class="head">Search Flights</h3>
		<div class="form-d">
			<form:form action="searchFlight" method="post"
				modelAttribute="flightsearch">
				<form:input path="from" placeholder="Enter Leaving From" />
				<form:errors path="from" class="text text-danger" />
				<form:input path="to" placeholder="Enter Going to" />
				<form:errors path="to" class="text text-danger" />
				<form:input path="date" placeholder="Enter Depature Date"
					type="date" />
				<form:errors path="date" class="text text-danger" />

				<form:input path="time" placeholder="Enter Depature Time"
					type="time" />
				<form:errors path="time" class="text text-danger" />
				<form:input path="seat" placeholder="Enter No of Seats to book"
					min='1' max='20' />
				<form:errors path="seat" class="text text-danger" />
		</div>
		<br> <input type="submit" value="Show Flight"
			class="btn btn-outline-secondary btn btn sm"> &nbsp; <input
			type="reset" value="Clear" class="btn btn-danger btn btn sm">
		</form:form>
			<br> <br>
		<c:if test="${fn:length(flight) > 0}">
			<h4>Flight Details</h4>
			<h6 class="text-primary">Customer ID: ${sessionScope.cid}</h6>
			<table class="table">
				<tr>
					<th>Flight Id</th>
					<th>Departure Airport</th>
					<th>Destination Airport</th>
					<th>Departure Date</th>
					<th>Departure time</th>
					<th>Seats to be booked</th>
					<th>Airline Name</th>
					<th>Book</th>
				</tr>

				<c:forEach items="${flight}" var="e">

					<tr>
						<form:form action="bookflight" method="post"
							modelAttribute="flightsearch">
							<td><form:input path="flightid" class="form-control"
									value="${e.getFlightid()}" readonly="true" /></td>
							<td><form:input path="from" class="form-control"
									value="${e.getFrom()}" readonly="true" /></td>
							<td><form:input path="to" class="form-control"
									value="${e.getTo()}" readonly="true" /></td>
							<td><form:input path="date" class="form-control"
									value="${e.getDate()}" readonly="true" /></td>
							<td><form:input path="time" class="form-control"
									value="${e.getTime()}" readonly="true" /></td>
							<td><form:input path="seat" class="form-control"
									value="${e.getSeat()}" /></td>
							<td><form:input path="airlineName" class="form-control"
									value="${e.getAirlineName()}" readonly="true" /></td>
							<td><input type="submit" value="Book"
								class="btn btn-success btn btn sm"></td>
						</form:form>
					</tr>

				</c:forEach>
			</table>
		</c:if>
		<div style="padding: 8px 3px;">
			<h3 class="text">${fail}</h3>
		</div>
	</div>

</body>
</html>