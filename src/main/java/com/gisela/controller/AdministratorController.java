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
	

//	@PostMapping("/saveConfiguration")
//	public ResponseEntity<String> saveConfiguration(@RequestBody Map<String, String> request){
//		System.out.println("Coming");
//		try (FileWriter fileWriter = new FileWriter("application.properties")){
//			Properties properties = new Properties();
//			for(Map.Entry<String, String> s:request.entrySet()) {
//				System.out.println("value is:"+s.getValue());
//				properties.setProperty(s.getKey(), s.getValue());
//			}
//			properties.store(fileWriter, "@author javier.vazquez");
//		
//			
//		} catch(Exception e) {
//			
//		}
//
//		return new ResponseEntity<String>("success", HttpStatus.OK);
//	}
	@PostMapping("/saveConfiguration")
	public ResponseEntity<String> saveConfiguration(@RequestBody Map<String, String> request){
		System.out.println("Coming");
		PropertiesConfiguration config;
		try {
			System.out.println("coming in properties");
			
			String ldapHost = request.get("ldap.hostname");
			String ldapPort = request.get("ldap.port");
			String ldapUsername = request.get("ldap.username");
			String ldapPassword = request.get("ldap.password");
			
			if(!applicationSetupService.validateLdap(ldapHost, Integer.valueOf(ldapPort), ldapUsername, ldapPassword)) {
				throw new GiselaApplicationException(HttpStatus.BAD_REQUEST, "Unable to validate LDAP configuration");
			}
			
			config = new PropertiesConfiguration(new ClassPathResource("application.properties").getFile());
			
			config.setProperty("ldap.host", ldapHost);
			config.setProperty("ldap.port", ldapPort);
			config.setProperty("ldap.username", ldapUsername);
			config.setProperty("ldap.password", ldapPassword);
			config.setProperty("ldap.url", String.format("ldap://%s:%s/dc=devpamplona,dc=es", ldapHost, ldapPort));
			config.setProperty("ldap.managerDN", String.format("uid=%s,ou=Users,dc=devpamplona,dc=es", ldapUsername));
			config.setProperty("ldap.managerPassword", ldapPassword);

			config.setProperty("baseUrl", request.get("baseUrl"));
			config.setProperty("logFilePath", request.get("logFilePath"));

			config.setProperty("smtp.server", request.get("smtp.server"));
			config.setProperty("smtp.port", request.get("smtp.port"));
			config.setProperty("smtp.username", request.get("smtp.username"));
			config.setProperty("smtp.password", request.get("smtp.password"));

			config.setProperty("somekey", "somevalue");
			config.save();
		} catch (IOException | ConfigurationException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}
		
		return new ResponseEntity<String>("success", HttpStatus.OK);
	}

}
