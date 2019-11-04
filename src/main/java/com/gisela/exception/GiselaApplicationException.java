package com.gisela.exception;

import org.springframework.http.HttpStatus;

public class GiselaApplicationException extends RuntimeException {


	private HttpStatus httpStatus = HttpStatus.BAD_REQUEST;
	
	public GiselaApplicationException() {
		super();
	}

	public GiselaApplicationException(String message) {
		super(message);
	}

	public GiselaApplicationException(String message, Object... param) {
		super( String.format(message, param) );
	}

	public GiselaApplicationException(HttpStatus httpStatus, String message) {
		super(message);
		this.httpStatus = httpStatus;
	}

	public GiselaApplicationException(HttpStatus httpStatus, Throwable cause) {
		super(cause);
		this.httpStatus = httpStatus;
	}

	public GiselaApplicationException(String message, Throwable cause) {
		super(message, cause);
	}

	public GiselaApplicationException(HttpStatus httpStatus, String message, Throwable cause) {
		super(message, cause);
		this.httpStatus = httpStatus;
	}

	public HttpStatus getHttpStatus() {
		return httpStatus;
	}

}
