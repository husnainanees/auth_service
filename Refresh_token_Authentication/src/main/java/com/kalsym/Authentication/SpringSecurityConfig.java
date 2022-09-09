/*
 * Click nbfs://nbhost/SystemFileSystem/Templates/Licenses/license-default.txt to change this license
 * Click nbfs://nbhost/SystemFileSystem/Templates/Classes/Class.java to edit this template
 */
package com.kalsym.Authentication;


import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.context.annotation.Bean;
import org.springframework.context.annotation.Configuration;
import org.springframework.security.authentication.AuthenticationManager;
import org.springframework.security.config.annotation.authentication.builders.AuthenticationManagerBuilder;
import org.springframework.security.config.annotation.web.builders.HttpSecurity;
import org.springframework.security.config.annotation.web.configuration.WebSecurityConfigurerAdapter;
import org.springframework.security.config.http.SessionCreationPolicy;
import org.springframework.security.crypto.password.NoOpPasswordEncoder;
import org.springframework.security.web.authentication.UsernamePasswordAuthenticationFilter;

@SuppressWarnings("deprecation")
@Configuration
public class SpringSecurityConfig extends WebSecurityConfigurerAdapter {
    
    
    @Autowired
    private JwtAuthenticationFilter jwtfilter;
    
    @Autowired
    private CustomUserDetailService customuserdetailservice;
	@Override
	protected void configure(AuthenticationManagerBuilder auth) throws Exception {
            auth.userDetailsService(customuserdetailservice);
		//auth.inMemoryAuthentication().withUser("admin").password("admin123").roles("ADMIN");
//		auth.inMemoryAuthentication().withUser("Basant").password("Password2").roles("USER");
	}

	// security for all API

	
//	  @Override protected void configure(HttpSecurity http) throws Exception {
//	  http.
//                  csrf().
//                  disable().
//                  cors().
//                  disable();
//	  http.authorizeRequests().anyRequest().fullyAuthenticated().and().
//            httpBasic(); }
	 

	// security based on URL

	/*
	 * @Override protected void configure(HttpSecurity http) throws Exception {
	 * http.csrf().disable();
	 * http.authorizeRequests().antMatchers("/rest/**").fullyAuthenticated().and
	 * ().httpBasic(); }
	 */

	// security based on ROLE
	@Override
	protected void configure(HttpSecurity http) throws Exception {
		http.
                        csrf().
                        disable().
                        cors().
                        disable().
                        authorizeRequests().
                        antMatchers("/Authenticate").permitAll().
                        anyRequest().
                        authenticated().
                        and().sessionManagement().sessionCreationPolicy(SessionCreationPolicy.STATELESS);
                http.addFilterBefore(jwtfilter, UsernamePasswordAuthenticationFilter.class);
	}

	@Bean
	public static NoOpPasswordEncoder passwordEncoder() {
		return (NoOpPasswordEncoder) NoOpPasswordEncoder.getInstance();
	}
        @Bean
        public AuthenticationManager authenticationMnagerBean() throws Exception{
            return super.authenticationManagerBean();
        }
}
