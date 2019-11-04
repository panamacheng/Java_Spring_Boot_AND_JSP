package com.gisela.controller.rest;

import java.util.HashMap;
import java.util.Map;

import javax.servlet.http.HttpServletRequest;

import org.springframework.http.ResponseEntity;
import org.springframework.web.bind.annotation.ExceptionHandler;
import org.springframework.web.bind.annotation.RestControllerAdvice;

import com.gisela.exception.GiselaApplicationException;


@RestControllerAdvice("com.gisela.controller.rest")
public class RestAPIControllerExceptionAdvice {
	
	@ExceptionHandler(GiselaApplicationException.class)
	public ResponseEntity<?> applicationExceptionHandler(HttpServletRequest request, GiselaApplicationException e) {
		Map<String, Object> response = new HashMap<>();
		response.put("message", e.getMessage());
		response.put("cause", e.getCause() != null? e.getCause().getMessage() : "");
		response.put("request_url", request.getRequestURI());
		response.put("params", request.getParameterMap());
		return ResponseEntity.status(e.getHttpStatus()).body(response);
	}
	
}
