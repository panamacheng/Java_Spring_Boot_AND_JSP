package com.gisela.configuration;

import java.util.ArrayList;
import java.util.Hashtable;

import javax.naming.AuthenticationNotSupportedException;
import javax.naming.Context;
import javax.naming.NamingException;
import javax.naming.directory.DirContext;
import javax.naming.directory.InitialDirContext;

import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.beans.factory.annotation.Value;
import org.springframework.context.annotation.Bean;
import org.springframework.context.annotation.Configuration;
import org.springframework.ldap.core.LdapTemplate;
import org.springframework.ldap.core.support.LdapContextSource;
import org.springframework.ldap.filter.AndFilter;
import org.springframework.ldap.filter.EqualsFilter;
import org.springframework.ldap.filter.Filter;
import org.springframework.ldap.support.LdapUtils;
import org.springframework.security.authentication.AuthenticationProvider;
import org.springframework.security.authentication.UsernamePasswordAuthenticationToken;
import org.springframework.security.core.Authentication;
import org.springframework.security.core.AuthenticationException;

import com.gisela.ldap.CustomLdapUserDetailsContextMapper;

@Configuration
public class LDAPAuthProvider implements AuthenticationProvider {

	private static Logger log = LoggerFactory.getLogger(LDAPAuthProvider.class);

	@Value("${ldap.valid}")
	String ldapValid = "false";

	@Value("${ldap.host}")
	String ldapHost = "localhost";

	@Value("${ldap.port}")
	String ldapPort = "389";

	@Value("${ldap.username}")
	String ldapUsername = "389";

	@Value("${ldap.password}")
	String ldapPassword = "389";

	@Value("${ldap.base.dn}")
	String ldapBaseDn = "389";
	
	@Value("${ldap.user.dn}")
	String ldapUserDn = "389";

	@Value("${ldap.administration}")
	String ldapAdmistration = "389";

	/*
	@Autowired LdapTemplate ldapTemplate;
	
	@Bean
	public LdapContextSource contextSource() {

		String url = String.format("ldap://%s:%s", ldapHost, ldapPort);
		String managerDn = String.format("CN=%s,%s", ldapUserDn, ldapBaseDn);

		LdapContextSource contextSource = new LdapContextSource();
	     
	    contextSource.setUrl(url);
	    contextSource.setBase(ldapBaseDn);
	    contextSource.setUserDn(managerDn);
	    contextSource.setPassword(ldapPassword);
	    
	    contextSource.afterPropertiesSet(); 
	    
	    return contextSource;
	}

	@Bean
	public LdapTemplate ldapTemplate() throws Exception {
	    LdapTemplate ldapTemplate = new LdapTemplate(contextSource());
	    ldapTemplate.afterPropertiesSet();
	    return ldapTemplate;
	}
	*/

	@Override
	public Authentication authenticate(Authentication authentication) throws AuthenticationException {
		
		log.debug("Going to authenticate...");

		String username = authentication.getName();
        String password = authentication.getCredentials().toString();
		
        log.debug("Username : " + username);
		log.debug("Password : " + password);

        
		Hashtable<String, String> env = new Hashtable<String, String>();
		env.put(Context.INITIAL_CONTEXT_FACTORY, "com.sun.jndi.ldap.LdapCtxFactory");
		env.put(Context.PROVIDER_URL, String.format("ldap://%s:%s/%s", ldapHost, ldapPort, ldapBaseDn));
		env.put(Context.SECURITY_AUTHENTICATION, "simple");
		env.put(Context.SECURITY_PRINCIPAL, username); // replace with user DN
		env.put(Context.SECURITY_CREDENTIALS, password);

		log.debug("Here is the configuration for LDAP");
		log.debug("Provider URL : {}", env.get(Context.PROVIDER_URL));
		log.debug("Security Principal/Bind User: {}", env.get(Context.SECURITY_PRINCIPAL));
		log.debug("Password: {}", env.get(Context.SECURITY_CREDENTIALS));
		
		DirContext ctx = null;
		boolean success = false;
		try {
	         ctx = new InitialDirContext(env);
	         success = true;
	         ctx.close();
		} catch (AuthenticationNotSupportedException ex) {
		    log.error(ex.getMessage(), ex);
		} catch (AuthenticationException ex) {
		    log.error(ex.getMessage(), ex);
		} catch (NamingException ex) {
		    log.error(ex.getMessage(), ex);
		}        

		if(success) {
			return new UsernamePasswordAuthenticationToken(username, password, new ArrayList<>());
		}else {
			return null;
		}
	}
	
	@Override
    public boolean supports(Class<?> authentication) {
        return authentication.equals(UsernamePasswordAuthenticationToken.class);
    }	
	
}
