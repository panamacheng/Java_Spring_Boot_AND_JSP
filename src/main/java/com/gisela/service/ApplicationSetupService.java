package com.gisela.service;

import java.io.File;
import java.io.FileInputStream;
import java.io.FileNotFoundException;
import java.io.FileOutputStream;
import java.io.FileReader;
import java.io.IOException;
import java.io.InputStreamReader;
import java.sql.SQLException;
import java.util.HashMap;
import java.util.Hashtable;
import java.util.List;
import java.util.Map;
import java.util.Properties;

import javax.naming.Context;
import javax.naming.NamingException;
import javax.naming.directory.DirContext;
import javax.naming.directory.InitialDirContext;
import javax.sql.DataSource;

import org.apache.commons.lang.StringUtils;
import org.apache.ibatis.jdbc.ScriptRunner;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.beans.factory.annotation.Value;
import org.springframework.boot.jdbc.DataSourceBuilder;
import org.springframework.core.io.ClassPathResource;
import org.springframework.http.HttpStatus;
import org.springframework.stereotype.Service;
import org.springframework.util.DefaultPropertiesPersister;
import org.springframework.web.context.support.GenericWebApplicationContext;

import com.gisela.entity.AppConfig;
import com.gisela.exception.GiselaApplicationException;
import com.gisela.repository.AppConfigRepository;
import com.zaxxer.hikari.HikariConfig;
import com.zaxxer.hikari.HikariDataSource;

/**
 * 
 * Copyright (C) Navaera Sciences, LLC 2005-2020.  
 * All Rights Reserved.  
 * "Gisela Project 2020"
 * 
 */

@Service
public class ApplicationSetupService {

	@Autowired
    private GenericWebApplicationContext context;
	
	@Value("${db.driverClassName}")
	private String driverClassName;

	@Value("${db.databaseUrl}")
	private String databaseUrl;
	

	//@Autowired AppConfigRepository appConfigRepository;
	
	public void setupDatabaseConfigration(String host, int port, String username, String password, String db) {
		
		if(StringUtils.isBlank(host)) {
			throw new GiselaApplicationException(HttpStatus.BAD_REQUEST, "Host is required");
		}
		
		if(port < 1) {
			throw new GiselaApplicationException(HttpStatus.BAD_REQUEST, "Port is required");
		}
	
		if(StringUtils.isBlank(username)) {
			throw new GiselaApplicationException(HttpStatus.BAD_REQUEST, "Username is required");
		}

		if(StringUtils.isBlank(password)) {
			throw new GiselaApplicationException(HttpStatus.BAD_REQUEST, "Password is required");
		}

		if(StringUtils.isBlank(db)) {
			throw new GiselaApplicationException(HttpStatus.BAD_REQUEST, "Database name is required");
		}

		try {
			
			HikariConfig config = new HikariConfig();
			config.setJdbcUrl(String.format(databaseUrl, host, port, db));
			config.setUsername(username);
			config.setPassword(password);
			config.setDriverClassName(driverClassName);
			config.addDataSourceProperty("cachePrepStmts", "true");
			config.addDataSourceProperty("prepStmtCacheSize", "250");
			config.addDataSourceProperty("prepStmtCacheSqlLimit", "2048");

			HikariDataSource ds = new HikariDataSource(config);

			new ScriptRunner(ds.getConnection()).runScript(new FileReader(new ClassPathResource("script/schema.sql").getFile()));

			Properties props = new Properties();
			props.setProperty("spring.datasource.db", db);
			props.setProperty("spring.datasource.hostname", host);
			props.setProperty("spring.datasource.port", port+"");
			props.setProperty("spring.datasource.username", username);
			props.setProperty("spring.datasource.password", password);
			props.setProperty("spring.datasource.driverClassName", ds.getDriverClassName());

			File dbPropertiesFile = new ClassPathResource("db.properties").getFile();

			if(!dbPropertiesFile.exists()) {
				dbPropertiesFile.createNewFile();
			}
			
			props.setProperty("db.valid", "true");
			props.store(new FileOutputStream(dbPropertiesFile), "Database information");
			
						
		} catch (SQLException e) {
			throw new GiselaApplicationException(HttpStatus.INTERNAL_SERVER_ERROR, "SQLException is occurred: " + e.getMessage());
		} catch (FileNotFoundException e) {
			throw new GiselaApplicationException(HttpStatus.INTERNAL_SERVER_ERROR, "FileNotFound: " + e.getMessage());
		} catch (Exception e) {
			throw new GiselaApplicationException(HttpStatus.INTERNAL_SERVER_ERROR, "Error: " + e.getMessage());
		}
		
	}
	
	/*
	 * public void saveAppConfig(List<AppConfig> appConfigs) {
	 * appConfigs.stream().map(ac -> appConfigRepository.save(ac)); }
	 */

	public boolean validateLdap(String host, Integer port, String baseDn, String userDn, String username, String password) {

		Hashtable<String, String> env = new Hashtable<String, String>();
		env.put(Context.INITIAL_CONTEXT_FACTORY, "com.sun.jndi.ldap.LdapCtxFactory");
		env.put(Context.PROVIDER_URL, String.format("ldap://%s:%d/%s", host, port, baseDn));
		env.put(Context.SECURITY_AUTHENTICATION, "simple");
		env.put(Context.SECURITY_PRINCIPAL, String.format("%s=%s,%s", userDn, username, baseDn)); // replace with user DN
		env.put(Context.SECURITY_CREDENTIALS, password);

		DirContext ctx = null;
		
		try {
	         ctx = new InitialDirContext(env);
	         return true;
		} catch (NamingException e) {
			e.printStackTrace();
	         throw new GiselaApplicationException(HttpStatus.BAD_REQUEST, "Unable to validate LDAP configuration");	         
		}		

	}


}
