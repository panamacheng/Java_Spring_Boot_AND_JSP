package com.gisela.configuration;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.beans.factory.annotation.Value;
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
	private static String LDAP_URL;

	@Value("${ldap.url}")
	private void setLDAPURL(String property)
	{
		LDAP_URL = property;
	}

	@SuppressWarnings("unused")
	private static String LDAP_MANAGER_DN;

	@Value("${ldap.managerDN}")
	private void setLDAPManagerDN(String property)
	{
		LDAP_MANAGER_DN = property;
	}

	@SuppressWarnings("unused")
	private static String LDAP_MANAGER_PASSWORD;

	@Value("${ldap.managerPassword}")
	private void setLDAPManagerPassword(String property)
	{
		LDAP_MANAGER_PASSWORD = property;
	}

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
		// auth.authenticationProvider(LdapAuthenticationProvider());
	}

	@Configuration
	@Order(1)
	public static class MVCWebSecurityConfigurationAdapter extends WebSecurityConfigurerAdapter
	{

		@Bean
		public LdapAuthoritiesPopulator ldapAuthoritiesPopulator() throws Exception {
			DefaultLdapAuthoritiesPopulator ldapAuthoritiesPopulator = new DefaultLdapAuthoritiesPopulator(
					ldapContextSource(), GROUP_SEARCH_BASE);
			ldapAuthoritiesPopulator.setGroupSearchFilter(GROUP_SEARCH_FILTER);
			return ldapAuthoritiesPopulator;
		}

		@Bean
		public DefaultSpringSecurityContextSource ldapContextSource() throws Exception {
			DefaultSpringSecurityContextSource contextSource = new DefaultSpringSecurityContextSource(LDAP_URL);
			contextSource.setUserDn(LDAP_MANAGER_DN);
			contextSource.setPassword(LDAP_MANAGER_PASSWORD);
			return contextSource;
		}

		@Bean
		public LdapUserSearch ldapUserSearch() throws Exception {
			LdapUserSearch ldapUserSearch = new FilterBasedLdapUserSearch(USER_SEARCH_BASE, USER_SEARCH_FILTER,
					ldapContextSource());
			return ldapUserSearch;
		}

		@Bean
		public LdapAuthenticator ldapAuthenticator() throws Exception {
			BindAuthenticator authenticator = new BindAuthenticator(ldapContextSource());
			authenticator.setUserSearch(ldapUserSearch());
			return authenticator;
		}

		@Bean
		public LdapAuthenticationProvider ldapAuthenticationProvider() throws Exception {
			LdapAuthenticationProvider ldapAuthenticationProvider = new LdapAuthenticationProvider(ldapAuthenticator(),
					ldapAuthoritiesPopulator());
			ldapAuthenticationProvider.setUserDetailsContextMapper(new CustomLdapUserDetailsContextMapper());
			return ldapAuthenticationProvider;
		}

		protected void configure(HttpSecurity http) throws Exception
		{
			http.authenticationProvider(ldapAuthenticationProvider())
				.exceptionHandling().accessDeniedPage("/login?error").and()
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
