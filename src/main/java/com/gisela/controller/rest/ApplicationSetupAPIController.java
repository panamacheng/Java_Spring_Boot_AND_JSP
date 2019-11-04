package com.gisela.controller.rest;

import java.util.Locale;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.http.ResponseEntity;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.annotation.RestController;

import com.gisela.service.ApplicationSetupService;

/**
 * 
 * Copyright (C) Navaera Sciences, LLC 2005-2020.  
 * All Rights Reserved.  
 * "Gisela Project 2020"
 * 
 */

@RestController
@RequestMapping("/api/application-setup")
public class ApplicationSetupAPIController {

	@Autowired
	private ApplicationSetupService applicationSetupService;


	@PostMapping(value="/validate-db")
	public ResponseEntity<?> validateDatabase(
			@RequestParam("host") String host, 
			@RequestParam("port") Integer port, 
			@RequestParam("username") String username, 
			@RequestParam("password") String password, 
			@RequestParam("databaseName") String dbName, 
			Locale locale)
	{
		
		applicationSetupService.setupDatabaseConfigration(host, port == null ? 0 : port, username, password, dbName);
		
		return ResponseEntity.ok().build();
	}

}
