package com.gisela.controller;

import java.io.File;
import java.io.FileInputStream;
import java.io.FileOutputStream;
import java.io.FileWriter;
import java.io.InputStream;
import java.io.OutputStream;
import java.util.Locale;
import java.util.Map;
import java.util.Properties;

import org.apache.commons.configuration.ConfigurationException;
import org.apache.commons.configuration.PropertiesConfiguration;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.context.MessageSource;
import org.springframework.http.HttpStatus;
import org.springframework.http.ResponseEntity;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestBody;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.servlet.ModelAndView;

import com.gisela.configuration.SecurityConfiguration;
/*
 *  @author javier.vazquez
*/
@Controller
@RequestMapping("/administrator")
public class AdministratorController {
	
	@SuppressWarnings("unused")
	@Autowired
	private MessageSource messageSource;

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
//		try {
//			File initialFile = new File("src/main/resources/application.properties");
//		    InputStream targetStream = new FileInputStream(initialFile);
//		    OutputStream os = new FileOutputStream("src/main/resources/application.properties");
//		    
//			Properties properties = new Properties();
//			properties.load(targetStream);
//			
//			for(Map.Entry<String, String> s:request.entrySet()) {
//				System.out.println("value is:"+s.getValue());
//				properties.setProperty(s.getKey(), s.getValue());
//			}
//			properties.store(os, "@author javier.vazquez");
//		} catch(Exception e) {
//			
//		}
		PropertiesConfiguration config;
		try {
			System.out.println("coming in properties");
			config = new PropertiesConfiguration("src/main/resources/application.properties");
			for(Map.Entry<String, String> s:request.entrySet()) {
				System.out.println("value is:"+s.getValue());
				config.setProperty(s.getKey(), s.getValue());
			}
			config.setProperty("somekey", "somevalue");
			config.save();
		} catch (ConfigurationException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}
		
		return new ResponseEntity<String>("success", HttpStatus.OK);
	}

}
