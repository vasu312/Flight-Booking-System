package com.botree.controller;

import java.text.ParseException;
import java.text.SimpleDateFormat;
import java.util.Date;
import java.util.Random;
import java.util.concurrent.TimeUnit;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.validation.BindingResult;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.servlet.ModelAndView;

import com.botree.bean.Booking;
import com.botree.bean.Flightsearch;
import com.botree.bean.UserDetails;
import com.botree.service.FlightBo;

import jakarta.servlet.http.HttpServletRequest;
import jakarta.validation.Valid;

@Controller
public class FlightController {

	@Autowired
	FlightBo flightBo;

//	Get Pages

	@GetMapping("home")
	public String getHomePage(Model model) {
		model.addAttribute("page", "home");
		return "home";
	}

	@GetMapping("register")
	public String getRegisterPage(@ModelAttribute UserDetails userDetails, Model model) {
		model.addAttribute("page", "register");
		return "home";
	}

	@PostMapping("registerCustomer")
	public ModelAndView validate(@Valid UserDetails ud, BindingResult result, HttpServletRequest req) {
		req.getSession().setAttribute("cid", ud.getcId());
		var mv = new ModelAndView("home");
		mv.addObject("page", "register");
		if (result.hasErrors()) {
			return mv;
		}
		if (flightBo.registerCustomer(ud)) {
			mv.addObject("success", "Customer " + ud.getcId() + " Registered SuccessFully ");
			mv.setViewName("home");
		} else {
			mv.addObject("fail", "Customer not Registered");
			mv.setViewName("home");
		}
		return mv;
	}

	@GetMapping("profile")
	public String getProfilePage(@ModelAttribute UserDetails userDetails, HttpServletRequest req, Model model) {
		if ((String) req.getSession().getAttribute("cid") != null) {
			int id = Integer.valueOf((String) req.getSession().getAttribute("cid"));
			model.addAttribute("page", "profile");
			var customer = flightBo.getCust(id);
			model.addAttribute("customer", customer);
		} else {
			model.addAttribute("fail", "Register Employee Details");
			model.addAttribute("page", "profile");
		}
		return "home";
	}

	@PostMapping("update")
	public ModelAndView getProfileUpdate(@Valid UserDetails userDetails, BindingResult result, Model mod) {
		var mv = new ModelAndView("home");
		mod.addAttribute("page", "profile");

		if (flightBo.updateCustomer(userDetails)) {
			mv.addObject("success", "Customer Profile Updated");
		} else {
			mv.addObject("fail", "Customer Profile Update Failed");
		}
		return mv;
	}

	@GetMapping("searchAndBook")
	public String getSearchPage(@ModelAttribute Flightsearch flightsearch, Model model) {
		model.addAttribute("page", "searchAndBook");
		return "home";
	}

	@PostMapping("searchFlight")
	public ModelAndView searchFli(@Valid Flightsearch fs, BindingResult result) {
		var mv = new ModelAndView("home");
		mv.addObject("page", "searchAndBook");
		if (result.hasErrors()) {
			return mv;
		}
		var flightList = flightBo.searchFlight(fs);
		if (!flightList.isEmpty()) {
			mv.addObject("flight", flightList);
		} else {
			mv.addObject("fail", "No Matching Flights found");
		}
		return mv;
	}

	@PostMapping("bookflight")
	public ModelAndView bookFli(@ModelAttribute Flightsearch flightsearch, HttpServletRequest req) {
		var mv = new ModelAndView("home");
		String id = (String) req.getSession().getAttribute("cid");
		Date curdate = new Date();
		SimpleDateFormat sdf = new SimpleDateFormat("yyyy-MM-dd");
		String strDate = sdf.format(curdate);
		float p = 2000 * flightsearch.getSeat();
		Random rand = new Random();
		int n = rand.nextInt(90000);
		req.getSession().setAttribute("bid", n);
		var book = new Booking(n, id, flightsearch.getFlightid(), strDate, p, flightsearch.getSeat());
		if (flightBo.booking(book)) {
			mv.addObject("suc", "Ticket Booked Succesfully");
			var inli = flightBo.bookInvoice(n);
			mv.addObject("invoice", inli.get(0));
		}
		mv.setViewName("invoice");
		return mv;
	}

	@GetMapping("cancel")
	public String getCancelPage(@ModelAttribute Booking booking, Model model) {
		model.addAttribute("page", "cancel");
		return "home";
	}

	@PostMapping("cancelFlight")
	public ModelAndView cancelFlight(Booking booking) {
		var mv = new ModelAndView("home");
		mv.addObject("page", "cancel");
		var bli = flightBo.selectInvoice(booking.getBookid());
		if (!bli.isEmpty()) {
			try {
				mv.addObject("booli", bli);
				String bdate = bli.get(0).getDepartureDate();
				Date date2 = new Date();
				SimpleDateFormat sdf = new SimpleDateFormat("yyyy-MM-dd");
				Date date1 = sdf.parse(bdate);
				long diff = date2.getTime() - date1.getTime();
				int daydiff = (int) TimeUnit.DAYS.convert(diff, TimeUnit.MILLISECONDS);
				int cancharge = 0;
				int refAmt = 0;
				float p = Float.valueOf(bli.get(0).getTotalPrice());
				if (daydiff != 0) {
					if (daydiff >= 10) {
						cancharge += p * 0.10;
					} else if (daydiff >= 5 && daydiff < 10) {
						cancharge += p * 0.20;
					} else if (daydiff >= 1 && daydiff < 5) {
						cancharge += p * 0.50;
					}
					refAmt = (int) (p - cancharge);
					mv.addObject("charg", cancharge);
					mv.addObject("reamt", refAmt);
				} else {
					mv.addObject("fail", "Not Refaundable");
				}
			} catch (ParseException e) {
				e.printStackTrace();
			}
			mv.addObject("cli", bli);

		} else {
			mv.addObject("fail", "Booking Id is Wrong");
		}
		mv.setViewName("home");
		return mv;
	}

	@PostMapping("deleteBooking")
	public ModelAndView delbook(@ModelAttribute Booking booking) {
		var mv = new ModelAndView("cancel");
		if (flightBo.cancelBooking(booking.getBookid())) {
			mv.addObject("success", "Booking Cancellation Completed Successfully");
		} else {
			mv.addObject("fail", "Cancelled Failed");
		}
		return mv;
	}
}
