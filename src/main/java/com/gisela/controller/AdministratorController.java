package com.gisela.controller;

import java.io.File;
import java.io.FileInputStream;
import java.io.FileOutputStream;
import java.io.FileWriter;
import java.io.IOException;
import java.io.InputStream;
import java.io.OutputStream;
import java.util.Locale;
import java.util.Map;
import java.util.Properties;

import org.apache.commons.configuration.ConfigurationException;
import org.apache.commons.configuration.PropertiesConfiguration;
import org.apache.commons.lang.StringUtils;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.context.MessageSource;
import org.springframework.core.io.ClassPathResource;
import org.springframework.http.HttpStatus;
import org.springframework.http.ResponseEntity;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestBody;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.ResponseBody;
import org.springframework.web.servlet.ModelAndView;

import com.gisela.configuration.SecurityConfiguration;
import com.gisela.exception.GiselaApplicationException;
import com.gisela.service.ApplicationSetupService;
/*
 *  @author javier.vazquez
*/
@Controller
@RequestMapping("/administrator")
public class AdministratorController {
	
	@SuppressWarnings("unused")
	@Autowired
	private MessageSource messageSource;
	
	@Autowired
	private ApplicationSetupService applicationSetupService;

	@RequestMapping(method=RequestMethod.GET)
	public ModelAndView administration(Locale locale)
	{
		ModelAndView mv = new ModelAndView();
		mv.setViewName("/administrator/ldap-configuration");
		return mv;
	}

	@RequestMapping(value="/property", method=RequestMethod.GET)
	public ModelAndView property(Locale locale)
	{
		ModelAndView mv = new ModelAndView();
		mv.setViewName("/administrator/property-manager");
		return mv;
	}

	@RequestMapping(value="/config", method=RequestMethod.GET)
	public ModelAndView config(Locale locale)
	{
		ModelAndView mv = new ModelAndView();
		mv.setViewName("/administrator/ldap-configuration");
		return mv;
	}
	
}
