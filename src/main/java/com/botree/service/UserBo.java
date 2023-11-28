package com.botree.service;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.botree.bean.User;
import com.botree.exception.InvalidUserException;
import com.botree.repository.UserDao;

@Service
public class UserBo {

	@Autowired
	UserDao dao;

	public boolean validateUser(User user) throws InvalidUserException {
		User u = dao.getUser(user);
		if (u != null && u.getUsername().equals(user.getUsername()) && u.getPassword().equals(user.getPassword())) {
			return true;
		}
		return false;
	}

}
