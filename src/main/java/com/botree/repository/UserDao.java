package com.botree.repository;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.jdbc.core.namedparam.MapSqlParameterSource;
import org.springframework.jdbc.core.namedparam.NamedParameterJdbcTemplate;
import org.springframework.stereotype.Repository;

import com.botree.bean.User;
import com.botree.constants.Query;
import com.botree.exception.InvalidUserException;

@Repository
public class UserDao {

	@Autowired
	NamedParameterJdbcTemplate template;

	public User getUser(User user) throws InvalidUserException {
		try {
			User u = template.query(Query.LOGIN, new MapSqlParameterSource("username", user.getUsername()), (rs) -> {
				User us = null;
				while (rs.next()) {
					us = new User();
					us.setUsername(rs.getString("username"));
					us.setPassword(rs.getString("password"));
				}
				return us;
			});
			return u;
		} catch (Exception e) {
			throw new InvalidUserException("Invalid Username and Password Exception");
		}
	}

}
