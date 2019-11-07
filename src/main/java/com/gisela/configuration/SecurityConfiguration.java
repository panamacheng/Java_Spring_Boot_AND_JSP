package com.gisela.configuration;

import org.apache.commons.lang.StringUtils;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.beans.factory.annotation.Value;
import org.springframework.boot.autoconfigure.condition.ConditionalOnProperty;
import org.springframework.context.annotation.Bean;
import org.springframework.context.annotation.Configuration;
import org.springframework.core.annotation.Order;
import org.springframework.security.config.annotation.authentication.builders.AuthenticationManagerBuilder;
import org.springframework.security.config.annotation.web.builders.HttpSecurity;
import org.springframework.security.config.annotation.web.configuration.EnableWebSecurity;
import org.springframework.security.config.annotation.web.configuration.WebSecurityConfigurerAdapter;
import org.springframework.security.ldap.DefaultSpringSecurityContextSource;
import org.springframework.security.ldap.authentication.BindAuthenticator;
import org.springframework.security.ldap.authentication.LdapAuthenticationProvider;
import org.springframework.security.ldap.authentication.LdapAuthenticator;
import org.springframework.security.ldap.search.FilterBasedLdapUserSearch;
import org.springframework.security.ldap.search.LdapUserSearch;
import org.springframework.security.ldap.userdetails.DefaultLdapAuthoritiesPopulator;
import org.springframework.security.ldap.userdetails.LdapAuthoritiesPopulator;
import org.springframework.security.web.util.matcher.AntPathRequestMatcher;

import com.gisela.ldap.CustomLdapUserDetailsContextMapper;

@Configuration
@EnableWebSecurity
public class SecurityConfiguration
{

	@SuppressWarnings("unused")
	private static String GROUP_SEARCH_BASE;

	@Value("${ldap.groupSearchBase}")
	private void setLDAPGroupSearchBase(String property)
	{
		GROUP_SEARCH_BASE = property;
	}

	@SuppressWarnings("unused")
	private static String GROUP_SEARCH_FILTER;

	@Value("${ldap.groupSearchFilter}")
	private void setLDAPGroupSearchFilter(String property)
	{
		GROUP_SEARCH_FILTER = property;
	}

	@SuppressWarnings("unused")
	private static String USER_SEARCH_BASE;

	@Value("${ldap.userSearchBase}")
	private void setLDAPUserSearchBase(String property)
	{
		USER_SEARCH_BASE = property;
	}

	@SuppressWarnings("unused")
	private static String USER_SEARCH_FILTER;

	@Value("${ldap.userSearchFilter}")
	private void setLDAPUserSearchFilter(String property)
	{
		USER_SEARCH_FILTER = property;
	}

	@Autowired
	public void configureGlobal(AuthenticationManagerBuilder auth) throws Exception
	{
		 //auth.authenticationProvider(LdapAuthenticationProvider());
	}

	@Configuration
	@Order(1)
	public static class MVCWebSecurityConfigurationAdapter extends WebSecurityConfigurerAdapter
	{

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


		@Bean
		@ConditionalOnProperty(name = "ldap.valid", havingValue = "true")
		public LdapAuthoritiesPopulator ldapAuthoritiesPopulator() throws Exception {
			DefaultLdapAuthoritiesPopulator ldapAuthoritiesPopulator = new DefaultLdapAuthoritiesPopulator(
					ldapContextSource(), GROUP_SEARCH_BASE);
			ldapAuthoritiesPopulator.setGroupSearchFilter(GROUP_SEARCH_FILTER);
			return ldapAuthoritiesPopulator;
		}

		@Bean
		@ConditionalOnProperty(name = "ldap.valid", havingValue = "true")
		public DefaultSpringSecurityContextSource ldapContextSource() throws Exception {
			String url = String.format("ldap://%s:%s/%s", ldapHost, ldapPort, ldapBaseDn);
			DefaultSpringSecurityContextSource contextSource = new DefaultSpringSecurityContextSource(url);
			contextSource.setUserDn(String.format("%s=%s,%s", ldapUserDn, ldapUsername, ldapBaseDn));
			contextSource.setPassword(ldapPassword);
			return contextSource;
		}

		@Bean
		@ConditionalOnProperty(name = "ldap.valid", havingValue = "true")
		public LdapUserSearch ldapUserSearch() throws Exception {
			LdapUserSearch ldapUserSearch = new FilterBasedLdapUserSearch(USER_SEARCH_BASE, USER_SEARCH_FILTER,
					ldapContextSource());
			return ldapUserSearch;
		}

		@Bean
		@ConditionalOnProperty(name = "ldap.valid", havingValue = "true")
		public LdapAuthenticator ldapAuthenticator() throws Exception {
			BindAuthenticator authenticator = new BindAuthenticator(ldapContextSource());
			authenticator.setUserSearch(ldapUserSearch());
			return authenticator;
		}

		@Bean
		@ConditionalOnProperty(name = "ldap.valid", havingValue = "true")
		public LdapAuthenticationProvider ldapAuthenticationProvider() throws Exception {
			LdapAuthenticationProvider ldapAuthenticationProvider = new LdapAuthenticationProvider(ldapAuthenticator(),
					ldapAuthoritiesPopulator());
			ldapAuthenticationProvider.setUserDetailsContextMapper(new CustomLdapUserDetailsContextMapper());
			return ldapAuthenticationProvider;
		}

		protected void configure(HttpSecurity http) throws Exception
		{

			if(StringUtils.defaultIfBlank(ldapValid, "false").equals("true")) {
				http.authenticationProvider(ldapAuthenticationProvider());
			}

				http.exceptionHandling().accessDeniedPage("/login?error").and()
				.authorizeRequests()
					.antMatchers("/login**").permitAll()
					.antMatchers("/resources/**").permitAll()
					.antMatchers("/**").permitAll()
					.antMatchers("/*").access("hasRole('ROLE_USERS')")
				.anyRequest().authenticated()
				.and()
				.formLogin()
					.loginPage("/login")
						.defaultSuccessUrl("/")
						.failureUrl("/login?error")
				.and()
				.logout()
					.logoutRequestMatcher(new AntPathRequestMatcher("/logout"))
					.logoutSuccessUrl("/login?logout").and().cors().and().csrf().disable();
		}
	}
}
