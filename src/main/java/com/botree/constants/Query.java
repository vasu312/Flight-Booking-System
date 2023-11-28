package com.botree.constants;

public class Query {

//	Login

	public static final String LOGIN = """
			select * from users where username=:username
			""";
//	Customer

	public static final String INSERT_USER_DETAILS = """
			insert into userDetails values(:cId,:name,:email,:password,
			:reTypePassword,:dateOfBirth,:address,:gender,:phone,:SSNType,:SSNNumber)
			""";
	public static final String GET__USER_DETAILS = """
			select * from userDetails where CustomerId=:id
			""";
	public static final String UPDATE_USER_DETAILS = """
			update userDetails set name=:name,Email =:email,Password =:password,Date_of_Birth =:dateOfBirth,
			Address=:address,Gender =:gender,Phone =:phone,SSN_Number=:SSNNumber where CustomerId=:cId
			""";

//	Flight

	public static final String SEARCH_FLIGHT = """
			select *  from Flights where LeavingFrom = :from and GoingTo = :to and DepartureDate = :date
			and DepartureTime = :time and AvailableSeats > :seat
			""";
	public static final String BOOKING_INSERT = """
			INSERT INTO Bookings VALUES (:bookid,:cId, :flightid, :date, :price, :seat);
			""";

//	Booking

	public static final String BOOK_INVOICE = """
			select BookingID,name, AirlineName,LeavingFrom, GoingTo, DepartureDate,
			DepartureTime,BookingDate,TotalPrice,SeatsToBook from userDetails u join Bookings b
			on u.CustomerId=b.CId join Flights f on b.FlightID = f.FlightID where BookingID=:id;
			""";
	public static final String GET_INVOICE = """
			select BookingID,BookingDate,DepartureDate,LeavingFrom,GoingTo,SeatsToBook,TotalPrice
			from Bookings b join Flights f on b.FlightID = f.FlightID where BookingID =:id;
			""";
	public static final String CANCEL_BOOKING = """
			delete from Bookings where BookingID=:id
			""";

}
