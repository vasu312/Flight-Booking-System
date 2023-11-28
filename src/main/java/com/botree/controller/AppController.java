package com.botree.controller;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.validation.BindingResult;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.SessionAttributes;
import org.springframework.web.servlet.ModelAndView;

import com.botree.bean.User;
import com.botree.exception.InvalidUserException;
import com.botree.service.UserBo;

import jakarta.validation.Valid;

@Controller
@SessionAttributes({ "name" })
public class AppController {

	@Autowired
	UserBo bo;

	@GetMapping(value = { "/", "/login" })
	public String loginPage(@ModelAttribute User user) {
		return "login";
	}

	@PostMapping("/validate")
	public ModelAndView validate(@Valid User user, BindingResult rs) throws InvalidUserException {
		var mv = new ModelAndView("login");
		if (rs.hasErrors()) {
			return mv;
		}
		if (bo.validateUser(user)) {
			mv.addObject("name", user.getUsername());
			mv.setViewName("home");
		} else {
			mv.addObject("error", "Invalid Username and Password");
		}
		return mv;
	}

	@GetMapping("/logout")
	public String getLogoutPage() {
		return "logout";
	}

}
