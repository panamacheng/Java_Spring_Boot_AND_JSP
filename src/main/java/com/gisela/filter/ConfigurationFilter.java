package com.gisela.filter;

import java.io.IOException;
import java.net.URL;
import java.sql.SQLException;

import javax.servlet.FilterChain;
import javax.servlet.ServletException;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.sql.DataSource;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.beans.factory.annotation.Value;
import org.springframework.context.annotation.PropertySource;
import org.springframework.core.annotation.Order;
import org.springframework.jdbc.datasource.DriverManagerDataSource;
import org.springframework.security.core.Authentication;
import org.springframework.security.core.context.SecurityContextHolder;
import org.springframework.stereotype.Component;
import org.springframework.web.filter.OncePerRequestFilter;
@Component
public class ConfigurationFilter extends OncePerRequestFilter{

	@Value("${db.valid}")
	String dbValid = "false";
	
	
	@Override
	protected void doFilterInternal(HttpServletRequest request, HttpServletResponse response, FilterChain chain)
			throws ServletException, IOException {
		
		System.out.println("Database validated : " + dbValid);
		
		try {

			Authentication auth = SecurityContextHolder.getContext().getAuthentication();
			
			boolean applicationSetupUrl = request.getServletPath().equals("/application-setup");
			boolean validateDBUrl = request.getServletPath().equals("/api/application-setup/validate-db");
			boolean saveConfigUrl = request.getServletPath().equals("/api/application-setup/saveConfiguration");
			boolean resourcesUrl = request.getServletPath().contains("resources");
			boolean loginUrl = request.getServletPath().equals("/login");
			
			if(applicationSetupUrl || validateDBUrl || saveConfigUrl || resourcesUrl) {
				chain.doFilter(request, response);
			}else if(dbValid.equals("true")){
				
				boolean isAuthenticated = auth.isAuthenticated() && !(auth.getPrincipal() instanceof String && auth.getPrincipal().toString().equals("anonymousUser"));
				
				if(!isAuthenticated && !loginUrl) {
					URL url = new URL(request.getRequestURL().toString());
					response.sendRedirect(url.getProtocol()+"://"+url.getAuthority()+"/login");
				}else {
					chain.doFilter(request, response);
				}
			} else {
				URL url = new URL(request.getRequestURL().toString());
				response.sendRedirect(url.getProtocol()+"://"+url.getAuthority()+"/application-setup");
			}

		} catch (Exception e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}
		
	}

}
