package com.botree.bean;

public class Invoice {
	private int bookingId;
	private String CustomerName;
	private String AirlineName;
	private String Leavingfrom;
	private String GoingTo;
	private String DateOfJourney;
	private String DepartureTime;
	private String BookingDate;
	private String TotalPrice;
	private String Seatstobook;
	public Invoice(int bookingId, String customerName, String airlineName, String leavingfrom, String goingTo,
			String dateOfJourney, String departureTime, String bookingDate, String totalPrice, String seatstobook) {
		super();
		this.bookingId = bookingId;
		CustomerName = customerName;
		AirlineName = airlineName;
		Leavingfrom = leavingfrom;
		GoingTo = goingTo;
		DateOfJourney = dateOfJourney;
		DepartureTime = departureTime;
		BookingDate = bookingDate;
		TotalPrice = totalPrice;
		Seatstobook = seatstobook;
	}

	public Invoice() {
		super();
	}
	
	public int getBookingId() {
		return bookingId;
	}
	public void setBookingId(int bookingId) {
		this.bookingId = bookingId;
	}
	public String getCustomerName() {
		return CustomerName;
	}
	public void setCustomerName(String customerName) {
		CustomerName = customerName;
	}
	public String getAirlineName() {
		return AirlineName;
	}
	public void setAirlineName(String airlineName) {
		AirlineName = airlineName;
	}
	public String getLeavingfrom() {
		return Leavingfrom;
	}
	public void setLeavingfrom(String leavingfrom) {
		Leavingfrom = leavingfrom;
	}
	public String getGoingTo() {
		return GoingTo;
	}
	public void setGoingTo(String goingTo) {
		GoingTo = goingTo;
	}
	public String getDateOfJourney() {
		return DateOfJourney;
	}
	public void setDateOfJourney(String dateOfJourney) {
		DateOfJourney = dateOfJourney;
	}
	public String getDepartureTime() {
		return DepartureTime;
	}
	public void setDepartureTime(String departureTime) {
		DepartureTime = departureTime;
	}
	public String getBookingDate() {
		return BookingDate;
	}
	public void setBookingDate(String bookingDate) {
		BookingDate = bookingDate;
	}
	public String getTotalPrice() {
		return TotalPrice;
	}
	public void setTotalPrice(String totalPrice) {
		TotalPrice = totalPrice;
	}
	public String getSeatstobook() {
		return Seatstobook;
	}
	public void setSeatstobook(String seatstobook) {
		Seatstobook = seatstobook;
	}
	
}
