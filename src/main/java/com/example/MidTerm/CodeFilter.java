package com.example.MidTerm;

import javax.servlet.*;
import javax.servlet.annotation.*;
import javax.servlet.http.HttpServletRequest;
import java.io.IOException;
import java.io.PrintWriter;

@WebFilter("/main")
public class CodeFilter implements Filter {
    public void init(FilterConfig config) throws ServletException {
    }

    public void destroy() {
    }

    @Override
    public void doFilter(ServletRequest request, ServletResponse response, FilterChain chain) throws ServletException, IOException {
        HttpServletRequest req = (HttpServletRequest) request;
        PrintWriter out = response.getWriter();
        int id = Integer.parseInt(req.getParameter("id"));
        if(id == 5)
            chain.doFilter(request, response);
        else
            out.println("Blocked by Servlet");

    }
}
