package com.gisela.controller.rest;

import java.util.ArrayList;
import java.util.List;
import java.util.Locale;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.http.ResponseEntity;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.annotation.RestController;

import com.gisela.entity.AppConfig;
import com.gisela.entity.enums.AppConfigGroup;
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

	/*
	 * @PostMapping(value="/save") public ResponseEntity<?> saveConfig(
	 * 
	 * @RequestParam("basic_base_url") String basicBaseUrl,
	 * 
	 * @RequestParam("basic_log_file_path") String basicLogFilePath,
	 * 
	 * @RequestParam("email_smtp_server") String emailSmtpServer,
	 * 
	 * @RequestParam("email_smtp_port") Integer emailSmtpPort,
	 * 
	 * @RequestParam("email_smtp_username") String emailSmtpUsername,
	 * 
	 * @RequestParam("email_smtp_password") String emailSmtpPassword,
	 * 
	 * @RequestParam("ldap_host") String ldapHost,
	 * 
	 * @RequestParam("ldap_port") Integer ldapPort,
	 * 
	 * @RequestParam("ldap_username") String ldapUsername,
	 * 
	 * @RequestParam("ldap_password") String ldapPassword) {
	 * 
	 * List<AppConfig> appConfigs = new ArrayList<>();
	 * 
	 * appConfigs.add(new AppConfig(AppConfigGroup.basic, "base_url",
	 * basicBaseUrl)); appConfigs.add(new AppConfig(AppConfigGroup.basic,
	 * "log_file_path", basicLogFilePath));
	 * 
	 * appConfigs.add(new AppConfig(AppConfigGroup.email, "smtp_server",
	 * emailSmtpServer)); appConfigs.add(new AppConfig(AppConfigGroup.email,
	 * "smtp_port", emailSmtpPort.toString())); appConfigs.add(new
	 * AppConfig(AppConfigGroup.email, "smtp_username", emailSmtpUsername));
	 * appConfigs.add(new AppConfig(AppConfigGroup.email, "smtp_password",
	 * emailSmtpPassword));
	 * 
	 * appConfigs.add(new AppConfig(AppConfigGroup.ldap, "host", ldapHost));
	 * appConfigs.add(new AppConfig(AppConfigGroup.ldap, "port",
	 * ldapPort.toString())); appConfigs.add(new AppConfig(AppConfigGroup.ldap,
	 * "username", ldapUsername)); appConfigs.add(new AppConfig(AppConfigGroup.ldap,
	 * "password", ldapPassword));
	 * 
	 * if(applicationSetupService.validateLdap(ldapHost, ldapPort, ldapUsername,
	 * ldapPassword)) { applicationSetupService.saveAppConfig(appConfigs); }
	 * 
	 * 
	 * return ResponseEntity.ok().build(); }
	 * 
	 */
}
