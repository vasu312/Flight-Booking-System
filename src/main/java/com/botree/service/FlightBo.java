package com.botree.service;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.botree.bean.Booking;
import com.botree.bean.Cancel;
import com.botree.bean.Flightsearch;
import com.botree.bean.Invoice;
import com.botree.bean.UserDetails;
import com.botree.repository.FlightDao;

@Service
public class FlightBo {

	@Autowired
	FlightDao flightDao;

	public boolean registerCustomer(UserDetails ud) {
		return flightDao.registerCustomer(ud);
	}

	public UserDetails getCust(int id) {
		return flightDao.getCust(id);
	}

	public List<Flightsearch> searchFlight(Flightsearch fli) {
		return flightDao.searchFlight(fli);
	}

	public boolean booking(Booking bo) {
		return flightDao.booking(bo);
	}

	public List<Invoice> bookInvoice(int id) {
		return flightDao.bookInvoice(id);
	}

	public List<Cancel> selectInvoice(int id) {
		return flightDao.selectInvoice(id);
	}

	public boolean cancelBooking(int id) {
		return flightDao.cancelBooking(id);
	}

	public boolean updateCustomer(UserDetails ud) {
		return flightDao.updateCustomer(ud);
	}

}
