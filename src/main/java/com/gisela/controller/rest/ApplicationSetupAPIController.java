package com.gisela.controller.rest;

import java.io.IOException;
import java.util.Locale;
import java.util.Map;

import org.apache.commons.configuration.ConfigurationException;
import org.apache.commons.configuration.PropertiesConfiguration;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.core.io.ClassPathResource;
import org.springframework.http.HttpStatus;
import org.springframework.http.ResponseEntity;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.annotation.RestController;

import com.gisela.exception.GiselaApplicationException;
import com.gisela.service.ApplicationSetupService;

/**
 * 
 * Copyright (C) Navaera Sciences, LLC 2005-2020.  
 * All Rights Reserved.  
 * "Gisela Project 2020"
 * 
 */

@RestController
@RequestMapping("/api/setup")
public class ApplicationSetupAPIController {

	@Autowired
	private ApplicationSetupService applicationSetupService;


	/**
	 * The purpose of this API method to validate database configuration and save it into application.properties file
	 * @param host
	 * @param port
	 * @param username
	 * @param password
	 * @param dbName
	 * @param locale
	 * @return HttpStatus.OK if success otherwise throw GiselaApplicationException with HttpStatus.BAD_REQUEST or HttpStatus.INTERNAL_SERVER_ERROR
	 */
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


	/**
	 * 
	 * The purpose of this API method to validate LDAP connection and save all configuration except db configuration into application.properties file
	 * @param request
	 * @return HttpStatus.OK if success otherwise throw GiselaApplicationException with HttpStatus.BAD_REQUEST or HttpStatus.INTERNAL_SERVER_ERROR
	 */
	@PostMapping(value = "/saveConfiguration")
	public ResponseEntity<?> saveConfiguration(@RequestParam Map<String, String> request){
		System.out.println("Coming");

		PropertiesConfiguration config;
		
		try {

			System.out.println("coming in properties");
			
			String ldapHost = request.get("ldap.hostname");
			String ldapPort = request.get("ldap.port");
			String ldapUsername = request.get("ldap.username");
			String ldapPassword = request.get("ldap.password");
			String ldapBaseDN = request.get("ldap.basedn");
			String ldapAddUserDN = request.get("ldap.additionaluserdn");
			String ldapAdministration = request.get("ldap.administration");

			if(!applicationSetupService.validateLdap(ldapHost, Integer.valueOf(ldapPort), ldapBaseDN, ldapAddUserDN, ldapUsername, ldapPassword)) {
				throw new GiselaApplicationException(HttpStatus.BAD_REQUEST, "Unable to validate LDAP configuration");
			}
			
			config = new PropertiesConfiguration(new ClassPathResource("application.properties").getFile());
			
			config.setProperty("ldap.host", ldapHost);
			config.setProperty("ldap.port", ldapPort);
			config.setProperty("ldap.username", ldapUsername);
			config.setProperty("ldap.password", ldapPassword);
			config.setProperty("ldap.base.dn", ldapBaseDN);
			config.setProperty("ldap.user.dn", ldapAddUserDN);
			config.setProperty("ldap.administration", ldapAdministration);
			config.setProperty("ldap.valid", "true");
			config.setProperty("ldap.additionaluserdn", ldapAddUserDN);

			config.setProperty("baseUrl", request.get("baseUrl"));
			config.setProperty("logFilePath", request.get("logFilePath"));

			config.setProperty("smtp.server", request.get("smtp.server"));
			config.setProperty("smtp.port", request.get("smtp.port"));
			config.setProperty("smtp.username", request.get("smtp.username"));
			config.setProperty("smtp.password", request.get("smtp.password"));

			config.setProperty("somekey", "somevalue");
			config.save();
		} catch (IOException | ConfigurationException e) {
			e.printStackTrace();
			throw new GiselaApplicationException(HttpStatus.INTERNAL_SERVER_ERROR, "Error occurred while saving configuration");
		}
		
		return ResponseEntity.ok().build();
	}

}
