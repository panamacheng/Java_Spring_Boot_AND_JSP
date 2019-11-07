package com.gisela;

import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import org.springframework.boot.SpringApplication;
import org.springframework.boot.autoconfigure.SpringBootApplication;


@SpringBootApplication
public class GiselaApplication 
{

	private static Logger log = LoggerFactory.getLogger(GiselaApplication.class);

	
	public static void main(String[] args) 
	{
		SpringApplication.run(GiselaApplication.class, args);
	}

	}
