package com.gisela.controller;

import java.util.Locale;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.context.MessageSource;
import org.springframework.stereotype.Controller;
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
