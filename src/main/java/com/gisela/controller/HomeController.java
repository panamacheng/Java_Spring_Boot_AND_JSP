package com.gisela.controller;

import java.io.IOException;
import java.util.HashMap;
import java.util.Locale;
import java.util.Map;
import java.util.Properties;

import org.apache.commons.configuration.ConfigurationException;
import org.apache.commons.configuration.PropertiesConfiguration;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.context.MessageSource;
import org.springframework.core.io.ClassPathResource;
import org.springframework.stereotype.Controller;
import org.springframework.ui.ModelMap;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.servlet.ModelAndView;

import com.gisela.service.ApplicationSetupService;

@Controller
public class HomeController {
	
	@SuppressWarnings("unused")
	@Autowired
	private MessageSource messageSource;

	@RequestMapping(value="/", method=RequestMethod.GET)
	public ModelAndView index(Locale locale)
	{
		ModelAndView mv = new ModelAndView();
		mv.setViewName("index");
		return mv;
	}

	@RequestMapping(value="/application-setup", method=RequestMethod.GET)
	public ModelAndView applicationSetup(Locale locale)
	{
		ModelAndView mv = new ModelAndView();
		mv.setViewName("application-setup");

		Map model = new HashMap<>();
		try {
			Properties config = new Properties();
			Properties dbconfig = new Properties();
			config.load(new ClassPathResource("application.properties").getInputStream());

			model.put("ldap_host", config.getOrDefault("ldap.host", ""));
			model.put("ldap_port", config.getOrDefault("ldap.port", ""));
			model.put("ldap_username", config.getOrDefault("ldap.username", ""));
			model.put("ldap_password", config.getOrDefault("ldap.password", ""));
			model.put("ldap_basedn", config.getOrDefault("ldap.base.dn", ""));
			model.put("ldap_userdn", config.getOrDefault("ldap.user.dn", ""));
			model.put("ldap_administration", config.getOrDefault("ldap.administration", ""));

			model.put("baseUrl", config.getOrDefault("baseUrl", ""));
			model.put("logFilePath", config.getOrDefault("logFilePath", ""));

			model.put("smtp_server", config.getOrDefault("smtp.server", ""));
			model.put("smtp_port", config.getOrDefault("smtp.port", ""));
			model.put("smtp_username", config.getOrDefault("smtp.username", ""));
			model.put("smtp_password", config.getOrDefault("smtp.password", ""));

			model.put("spring_datasource_db", config.getOrDefault("db.name", ""));
			model.put("spring_datasource_hostname", config.getOrDefault("db.hostname", ""));
			model.put("spring_datasource_port", config.getOrDefault("db.port", ""));
			model.put("spring_datasource_username", config.getOrDefault("db.username", ""));
			model.put("spring_datasource_password", config.getOrDefault("db.password", ""));
			
		} catch (IOException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}

		mv.addAllObjects(model);
		return mv;
	}
	@RequestMapping(value="/manager", method=RequestMethod.GET)
	public ModelAndView moduleManager(Locale locale)
	{
		ModelAndView mv = new ModelAndView();
		mv.setViewName("module-manager");
		return mv;
	}


}
