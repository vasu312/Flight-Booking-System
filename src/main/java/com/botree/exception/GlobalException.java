package com.botree.exception;

import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.ControllerAdvice;
import org.springframework.web.bind.annotation.ExceptionHandler;

import com.botree.bean.User;

@ControllerAdvice
public class GlobalException {

	@ExceptionHandler(value = { InvalidUserException.class })
	public String userException(Exception e, Model m) {
		m.addAttribute("exp", e.getMessage());
		m.addAttribute("user", new User());
		return "login";
	}

}
