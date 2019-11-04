package com.gisela.configuration;

import java.sql.Connection;
import java.util.Properties;

import javax.sql.DataSource;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.boot.autoconfigure.condition.ConditionalOnExpression;
import org.springframework.boot.autoconfigure.condition.ConditionalOnProperty;
import org.springframework.boot.context.properties.ConfigurationProperties;
import org.springframework.context.annotation.Bean;
import org.springframework.context.annotation.Configuration;
import org.springframework.context.annotation.PropertySource;
import org.springframework.core.Ordered;
import org.springframework.core.annotation.Order;
import org.springframework.core.env.Environment;
import org.springframework.dao.annotation.PersistenceExceptionTranslationPostProcessor;
import org.springframework.jdbc.datasource.DriverManagerDataSource;
import org.springframework.orm.jpa.JpaVendorAdapter;
import org.springframework.orm.jpa.LocalContainerEntityManagerFactoryBean;
import org.springframework.orm.jpa.vendor.HibernateJpaVendorAdapter;

@Configuration
@PropertySource("classpath:db.properties")
@ConditionalOnProperty(name = "db.valid", havingValue = "true")
public class DbConfiguration {
	@Autowired
	Environment environment;
	
	public DataSource getDataSource() {
//		DriverManagerDataSource  dmds = new DriverManagerDataSource();
//		dmds.setDriverClassName(Preconditions.checkNotNull(environment.getProperty("spring.datasource.driverClassName")));
//		dmds.setUrl(Preconditions.checkNotNull(environment.getProperty("spring.datasource.url")));
//		dmds.setUsername(Preconditions.checkNotNull(environment.getProperty("spring.datasource.username")));
//		dmds.setPassword(Preconditions.checkNotNull(environment.getProperty("spring.datasource.password")));
//		return dmds;
		DriverManagerDataSource  dmds = new DriverManagerDataSource();
		dmds.setDriverClassName(environment.getProperty("spring.datasource.driverClassName"));
		dmds.setUrl(environment.getProperty("spring.datasource.url"));
		dmds.setUsername(environment.getProperty("spring.datasource.username"));
		dmds.setPassword(environment.getProperty("spring.datasource.password"));
		
		
		return dmds;
	}
	   public LocalContainerEntityManagerFactoryBean entityManagerFactory() {
	      LocalContainerEntityManagerFactoryBean em 
	        = new LocalContainerEntityManagerFactoryBean();
	      em.setDataSource(getDataSource());
	      em.setPackagesToScan(new String[] { "com.gisela.entity" });
	 
	      JpaVendorAdapter vendorAdapter = new HibernateJpaVendorAdapter();
	      em.setJpaVendorAdapter(vendorAdapter);
	      em.setJpaProperties(additionalProperties());
	 
	      return em;
	   }
	
	 
	public PersistenceExceptionTranslationPostProcessor exceptionTranslation(){
	    return new PersistenceExceptionTranslationPostProcessor();
	}
	 
	Properties additionalProperties() {
	    Properties properties = new Properties();
	    properties.setProperty("hibernate.hbm2ddl.auto", "create-drop");
	    properties.setProperty("hibernate.dialect", "org.hibernate.dialect.SQLServerDialect");
	        
	    return properties;
	}	
}
