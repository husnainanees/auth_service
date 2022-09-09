/*
 * Click nbfs://nbhost/SystemFileSystem/Templates/Licenses/license-default.txt to change this license
 * Click nbfs://nbhost/SystemFileSystem/Templates/Classes/Class.java to edit this template
 */
package com.kalsym.Authentication;

import java.io.IOException;
import javax.servlet.FilterChain;
import javax.servlet.ServletException;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.security.authentication.UsernamePasswordAuthenticationToken;
import org.springframework.security.core.context.SecurityContextHolder;
import org.springframework.security.core.userdetails.UserDetails;
import org.springframework.security.web.authentication.WebAuthenticationDetailsSource;
import org.springframework.stereotype.Component;
import org.springframework.web.filter.OncePerRequestFilter;

/**
 *
 * @author Kalsym
 */
@Component
public class JwtAuthenticationFilter extends OncePerRequestFilter {

    
    @Autowired
    private CustomUserDetailService customuserdetailservice;
    @Autowired
    private JwtUtil jwtutil;
    @Override
    protected void doFilterInternal(HttpServletRequest request, HttpServletResponse response, FilterChain filterChain) throws ServletException, IOException {
     String requestTokenHeader= request.getHeader("Authorization");
     String username=null;
     String jwtToken=null;
    if(requestTokenHeader!=null && requestTokenHeader.startsWith("Bearer ")){
        jwtToken=requestTokenHeader.substring(7);
        try{
           username= this.jwtutil.getUserNameFromToken(jwtToken);
        }catch(Exception e){
            e.printStackTrace();
        }
        UserDetails userdetails=this.customuserdetailservice.loadUserByUsername(username);
        if(username!=null && SecurityContextHolder.getContext().getAuthentication()==null){
            UsernamePasswordAuthenticationToken usernamepasswordauthenticationtoken=new UsernamePasswordAuthenticationToken(userdetails,null,userdetails.getAuthorities());
            usernamepasswordauthenticationtoken.setDetails(new WebAuthenticationDetailsSource().buildDetails(request));
            SecurityContextHolder.getContext().setAuthentication(usernamepasswordauthenticationtoken);
        }else{
            System.out.println("Token is not validated");
        }
      
    }
    filterChain.doFilter(request, response);
    }
    
}
