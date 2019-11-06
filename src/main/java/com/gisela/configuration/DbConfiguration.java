package com.gisela.configuration;

import java.util.Properties;

import javax.sql.DataSource;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.boot.autoconfigure.condition.ConditionalOnProperty;
import org.springframework.context.annotation.Configuration;
import org.springframework.core.env.Environment;
import org.springframework.dao.annotation.PersistenceExceptionTranslationPostProcessor;
import org.springframework.jdbc.datasource.DriverManagerDataSource;
import org.springframework.orm.jpa.JpaVendorAdapter;
import org.springframework.orm.jpa.LocalContainerEntityManagerFactoryBean;
import org.springframework.orm.jpa.vendor.HibernateJpaVendorAdapter;

@Configuration
@ConditionalOnProperty(name = "db.valid", havingValue = "true")
public class DbConfiguration {
	@Autowired
	Environment environment;
	
	public DataSource getDataSource() {
		DriverManagerDataSource  dmds = new DriverManagerDataSource();
		dmds.setDriverClassName(environment.getProperty("db.driverClassName"));
		String host = environment.getProperty("db.hostname");
		String port = environment.getProperty("db.port");
		String db = environment.getProperty("db.name");
		String url = environment.getProperty("db.databaseUrl");
		dmds.setUrl(String.format(url, host, port, db));
		dmds.setUsername(environment.getProperty("db.username"));
		dmds.setPassword(environment.getProperty("db.password"));
		
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
