package jtm.tproject;

import java.util.Properties;

import org.springframework.context.annotation.Bean;
import org.springframework.context.annotation.Configuration;
import org.springframework.security.config.annotation.authentication.builders.AuthenticationManagerBuilder;
import org.springframework.security.config.annotation.web.builders.HttpSecurity;
import org.springframework.security.config.annotation.web.configuration.EnableWebSecurity;
import org.springframework.security.config.annotation.web.configuration.WebSecurityConfigurerAdapter;
import org.springframework.security.crypto.factory.PasswordEncoderFactories;
import org.springframework.security.crypto.password.PasswordEncoder;
import org.springframework.web.servlet.handler.SimpleMappingExceptionResolver;

@Configuration
@EnableWebSecurity
public class BasicConfiguration extends WebSecurityConfigurerAdapter {
	
	 @Bean(name="simpleMappingExceptionResolver")
	  public SimpleMappingExceptionResolver
	                  createSimpleMappingExceptionResolver() {
	    SimpleMappingExceptionResolver r =
	                new SimpleMappingExceptionResolver();

	    Properties mappings = new Properties();
	    mappings.setProperty("DatabaseException", "databaseError");

	    r.setExceptionMappings(mappings);  // None by default
	    r.setDefaultErrorView("error");    // No default
	    r.setExceptionAttribute("ex");     // Default is "exception"
	    r.setWarnLogCategory("example.MvcLogger");     // No default
	    return r;
	  }
	 
	    @Override
	    protected void configure(AuthenticationManagerBuilder auth) throws Exception {
	    	PasswordEncoder encoder = 
	          PasswordEncoderFactories.createDelegatingPasswordEncoder();
	    	auth
	          .inMemoryAuthentication()
	          .withUser("user")
	          .password(encoder.encode("password"))
	          .roles("USER")
	          .and()
	          .withUser("admin")
	          .password(encoder.encode("admin"))
	          .roles("USER", "ADMIN");
	    }
	 
	    @Override
	    protected void configure(HttpSecurity http) throws Exception {
	        http
	          .logout()
	          .logoutSuccessUrl("/")
	          .invalidateHttpSession(true)
	          .deleteCookies("JSESSIONID")
	          .and()
	          .httpBasic()
	          ;
	    }

}
