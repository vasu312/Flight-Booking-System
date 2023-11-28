package com.botree.repository;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.jdbc.core.namedparam.BeanPropertySqlParameterSource;
import org.springframework.jdbc.core.namedparam.MapSqlParameterSource;
import org.springframework.jdbc.core.namedparam.NamedParameterJdbcTemplate;
import org.springframework.stereotype.Repository;
import org.springframework.transaction.annotation.Transactional;

import com.botree.bean.Booking;
import com.botree.bean.Cancel;
import com.botree.bean.Flightsearch;
import com.botree.bean.Invoice;
import com.botree.bean.UserDetails;
import com.botree.constants.Query;

@Repository
@Transactional
public class FlightDao {

	@Autowired
	NamedParameterJdbcTemplate jdbcTemplate;

	public boolean registerCustomer(UserDetails ud) {
		try {
			jdbcTemplate.update(Query.INSERT_USER_DETAILS, new BeanPropertySqlParameterSource(ud));
			return true;
		} catch (Exception e) {
			e.printStackTrace();
			return false;
		}
	}

	public UserDetails getCust(int id) {
		try {
			List<UserDetails> uli = jdbcTemplate.query(Query.GET__USER_DETAILS, new MapSqlParameterSource("id", id),
					(rs, r) -> new UserDetails(rs.getString(1), rs.getString(2), rs.getString(3), rs.getString(4),
							rs.getString(5), rs.getString(6), rs.getString(7), rs.getString(8), rs.getString(9),
							rs.getString(10), rs.getInt(11)));
			return uli.get(0);
		} catch (Exception e) {
			e.printStackTrace();
			return null;
		}
	}

	public boolean updateCustomer(UserDetails ud) {
		try {
			int i = jdbcTemplate.update(Query.UPDATE_USER_DETAILS,
					new MapSqlParameterSource("name", ud.getName()).addValue("email", ud.getEmail())
							.addValue("password", ud.getPassword()).addValue("dateOfBirth", ud.getDateOfBirth())
							.addValue("address", ud.getAddress()).addValue("gender", ud.getGender())
							.addValue("phone", ud.getPhone()).addValue("SSNNumber", ud.getSSNNumber())
							.addValue("cId", ud.getcId()));
			System.out.println(i);
			if (i > 0) {
				return true;
			} else {
				return false;
			}
		} catch (Exception e) {
			e.printStackTrace();
			return false;
		}
	}

	public List<Flightsearch> searchFlight(Flightsearch fli) {
		try {
			List<Flightsearch> flili = jdbcTemplate.query(Query.SEARCH_FLIGHT,
					new MapSqlParameterSource("from", fli.getFrom()).addValue("to", fli.getTo())
							.addValue("date", fli.getDate()).addValue("time", fli.getTime())
							.addValue("seat", fli.getSeat()),
					(rs, r) -> new Flightsearch(rs.getInt(1), rs.getString(2), rs.getString(3), rs.getString(4),
							rs.getString(5), rs.getInt(6), rs.getString(7)));
			return flili;
		} catch (Exception e) {
			e.printStackTrace();
			return null;
		}
	}

	public boolean booking(Booking bo) {
		try {
			int i = jdbcTemplate.update(Query.BOOKING_INSERT, new BeanPropertySqlParameterSource(bo));
			if (i > 0) {
				return true;
			} else {
				return false;
			}
		} catch (Exception e) {
			e.printStackTrace();
			return false;
		}
	}

	public List<Invoice> bookInvoice(int id) {
		try {
			List<Invoice> invo = jdbcTemplate.query(Query.BOOK_INVOICE, new MapSqlParameterSource("id", id),
					(rs, r) -> new Invoice(rs.getInt(1), rs.getString(2), rs.getString(3), rs.getString(4),
							rs.getString(5), rs.getString(6), rs.getString(7), rs.getString(8), rs.getString(9),
							rs.getString(10)));
			return invo;
		} catch (Exception e) {
			e.printStackTrace();
			return null;
		}
	}

	public List<Cancel> selectInvoice(int id) {
		try {
			List<Cancel> invoice = jdbcTemplate.query(Query.GET_INVOICE, new MapSqlParameterSource("id", id),
					(rs, r) -> new Cancel(rs.getString(1), rs.getString(2), rs.getString(3), rs.getString(4),
							rs.getString(5), rs.getString(6), rs.getString(7)));
			return invoice;
		} catch (Exception e) {
			e.printStackTrace();
			return null;
		}
	}

	public boolean cancelBooking(int id) {
		try {
			jdbcTemplate.update(Query.CANCEL_BOOKING, new MapSqlParameterSource("id", id));
			return true;
		} catch (Exception e) {
			e.printStackTrace();
			return false;
		}
	}

}
