<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!doctype html>
<html lang="en">
<head>
<meta charset="utf-8">
<meta name="viewport" content="width=device-width, initial-scale=1">
<title>Bootstrap demo</title>
<link
	href="https://cdn.jsdelivr.net/npm/bootstrap@5.3.2/dist/css/bootstrap.min.css"
	rel="stylesheet"
	integrity="sha384-T3c6CoIi6uLrA9TneNEoa7RxnatzjcDSCmG1MXxSR1GAsXEV/Dwwykc2MPK8M2HN"
	crossorigin="anonymous">
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
	<br>
		<h3 class="head">Booking Invoice</h3>
		<h6 class="head text-success">${suc}</h6>
		<table class="table">
			<tr>
				<th>Name</th>
				<th>Value</th>
			</tr>
			<tr>
				<th>Booking ID</th>
				<th>${invoice.getBookingId()}</th>
			</tr>
			<tr>
				<td>Customer Name</td>
				<td>${invoice.getCustomerName()}</td>
			</tr>
			<tr>
				<td>Airline Name</td>
				<td>${invoice.getAirlineName()}</td>
			</tr>
			<tr>
				<td>Leaving from</td>
				<td>${invoice.getLeavingfrom()}</td>
			</tr>
			<tr>
				<td>Going To</td>
				<td>${invoice.getGoingTo()}</td>
			</tr>
			<tr>
				<td>Date Of Journey</td>
				<td>${invoice.getDateOfJourney()}</td>
			</tr>
			<tr>
				<td>Departure Time</td>
				<td>${invoice.getDepartureTime()}</td>
			</tr>
			<tr>
				<td>Booking Date</td>
				<td>${invoice.getBookingDate()}</td>
			</tr>
			<tr>
				<td>Total Price</td>
				<td>${invoice.getTotalPrice()}</td>
			</tr>
			<tr>
				<td>Seats to book</td>
				<td>${invoice.getSeatstobook()}</td>
			</tr>
		</table>
		<button class="btn btn-success" onclick="printPage()">Download
			Invoice</button>

		<a class="link-opacity-90" href="home"> <input type="button"
			value="Home" class="btn btn-danger" /></a>
	</div>
	<script
		src="https://cdn.jsdelivr.net/npm/bootstrap@5.3.2/dist/js/bootstrap.bundle.min.js"
		integrity="sha384-C6RzsynM9kWDrMNeT87bh95OGNyZPhcTNXj1NW7RuBCsyN/o0jlpcV8Qyq46cDfL"
		crossorigin="anonymous"></script>
	<script>
		function printPage() {
			window.print();
		}
	</script>

</body>
</html>