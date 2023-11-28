package com.botree.bean;

import jakarta.validation.constraints.NotBlank;
import jakarta.validation.constraints.NotNull;

public class User {

	@NotBlank(message = "Name is Mandatory")
	private String username;
	@NotBlank(message = "Password is Mandatory")
	private String password;

	public String getUsername() {
		return username;
	}

	public void setUsername(String username) {
		this.username = username;
	}

	public String getPassword() {
		return password;
	}

	public void setPassword(String password) {
		this.password = password;
	}

	@Override
	public String toString() {
		return "User [username=" + username + ", password=" + password + "]";
	}

}
