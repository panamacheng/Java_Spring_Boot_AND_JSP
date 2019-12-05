package com.gisela.controller;

import java.util.Locale;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.context.MessageSource;
import org.springframework.security.authentication.AnonymousAuthenticationToken;
import org.springframework.security.authentication.UsernamePasswordAuthenticationToken;
import org.springframework.security.core.Authentication;
import org.springframework.security.core.context.SecurityContextHolder;
import org.springframework.security.web.authentication.logout.SecurityContextLogoutHandler;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.servlet.ModelAndView;

import com.gisela.service.ApplicationSetupService;
/*
 *  @author javier.vazquez
*/
@Controller
public class LoginController {
	
	private static Logger log = LoggerFactory.getLogger(LoginController.class);

	@SuppressWarnings("unused")
	@Autowired
	private MessageSource messageSource;
	
	@RequestMapping(value="/login", method=RequestMethod.GET)
	public ModelAndView index(HttpServletRequest request, 
			HttpServletResponse response,
			@RequestParam(value="error", required=false) String error,
			@RequestParam(value="logout", required=false) String logout,
			Locale locale)
	{


		if(checkUserIsLoggedIn()) {
			return new ModelAndView("redirect:/");
		}
		
		messageSource.getMessage("access", null, locale);
		
		ModelAndView mv = new ModelAndView();
		if(error != null)
		{
			mv.addObject("error", messageSource.getMessage("login.error", null, locale));
		}
		
		if(logout != null)
		{
			Authentication auth = SecurityContextHolder.getContext().getAuthentication();
			
			if(auth != null) 
			{
				new SecurityContextLogoutHandler().logout(request, response, auth);
			}
			
			mv.addObject("message", messageSource.getMessage("logout.success", null, locale));
		}
		
		mv.setViewName("login");
		
		return mv;
	}


	private boolean checkUserIsLoggedIn() {
		log.debug("checking user is logged in or not");
		if(SecurityContextHolder.getContext().getAuthentication().getPrincipal() != null) {
			log.debug(SecurityContextHolder.getContext().getAuthentication().getPrincipal().toString());
			return !(SecurityContextHolder.getContext().getAuthentication().getPrincipal().equals("anonymousUser"));
		}else {
			return false;
		}
	}
}
