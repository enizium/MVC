/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package com.itn.filters;

import java.io.IOException;
import javax.servlet.Filter;
import javax.servlet.FilterChain;
import javax.servlet.ServletException;
import javax.servlet.ServletRequest;
import javax.servlet.ServletResponse;
import javax.servlet.annotation.WebFilter;
import javax.servlet.http.*;
import javax.servlet.http.HttpSession;


@WebFilter(filterName = "LoginFilter", urlPatterns = {"/Admin/*"})
public class LoginFilter implements Filter {

    /**
     *
     * @param request
     * @param response
     * @param chain
     * @throws IOException
     * @throws ServletException
     */
    @Override
    public void doFilter(ServletRequest request, ServletResponse response,
            FilterChain chain) throws IOException, ServletException {
        
        HttpServletRequest req=(HttpServletRequest) request;
        HttpServletResponse res=(HttpServletResponse) response;
        
        HttpSession session =req.getSession(false);
        if( session!=null && session.getAttribute("user")!=null)
        {
            chain.doFilter(request, response);
        }
        else {
            res.sendRedirect(req.getContextPath()+"/Login");
        }
        
        
    }

    @Override
    public void destroy() {
    }

    public void init() {

    }

}
