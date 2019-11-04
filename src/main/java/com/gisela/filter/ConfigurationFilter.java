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
import org.springframework.core.annotation.Order;
import org.springframework.jdbc.datasource.DriverManagerDataSource;
import org.springframework.stereotype.Component;
import org.springframework.web.filter.OncePerRequestFilter;
@Component
public class ConfigurationFilter extends OncePerRequestFilter{

	@Value("ldap.managerPsassword")
	String dbName;
	
	@Autowired
	DataSource dataSource;
	
	@Override
	protected void doFilterInternal(HttpServletRequest request, HttpServletResponse response, FilterChain chain)
			throws ServletException, IOException {
		System.out.println(dataSource.getClass());
		try {

			if(request.getServletPath().equals("/api/application-setup/validate-db")) {
				chain.doFilter(request, response);
			}else if(!request.getServletPath().contains("application-setup")
					&& !request.getServletPath().contains("resources")) {
				URL url = new URL(request.getRequestURL().toString());
				response.sendRedirect(url.getProtocol()+"://"+url.getAuthority()+"/application-setup");
			}else {
				chain.doFilter(request, response);
			}
		} catch (Exception e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}
		
	}

}
