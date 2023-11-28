package com.botree.exception;

public class InvalidUserException extends Exception {

	private static final long serialVersionUID = -2342387632001937602L;

	public InvalidUserException(String msg) {
		super(msg);
	}
}
