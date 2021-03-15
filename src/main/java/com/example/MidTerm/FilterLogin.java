package com.example.MidTerm;

import javax.servlet.*;
import javax.servlet.annotation.*;
import java.io.IOException;
import java.io.PrintWriter;

@WebFilter("/login")
public class FilterLogin implements Filter {
    public void init(FilterConfig config) throws ServletException {
    }

    public void destroy() {
    }

    @Override
    public void doFilter(ServletRequest request, ServletResponse response, FilterChain chain) throws ServletException, IOException {
        String username = request.getParameter("username");
        String password = request.getParameter("password");
        request.setAttribute("username", username);
        request.setAttribute("password", password);
        response.getWriter().write(request.getParameter("username"));
        PrintWriter out = response.getWriter();
        if(username.equals("")){
            out.println("empty");
        }
        else if(password.equals("")){
            out.println("empty");
        }
        else{
            request.getRequestDispatcher("result.jsp").forward(request, response);
            chain.doFilter(request, response);
        }
    }
}
