package com.example.MidTerm;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import java.io.IOException;
import javax.servlet.RequestDispatcher;
import javax.servlet.http.HttpSession;
import java.sql.SQLException;
import java.util.List;

@WebServlet(name = "login",urlPatterns={"/login"})
public class LogServlet extends HttpServlet {
    protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        String username = request.getParameter("username");
        String password = request.getParameter("password");

        UserServlet UserServlet = new UserServlet();
        BlogConf blog = new BlogConf();

        try {
            User user = UserServlet.validate(username, password);
            String direct = "";

            if (user != null) {
                HttpSession session = request.getSession();
                session.setAttribute("user", user);
                session.setMaxInactiveInterval(30*60);
                List<Blog> blogs = blog.getPosts();
                request.setAttribute("postList", blogs);
                direct = "index.jsp";
            } else {
                String message = "Incorrect username or password";
                request.setAttribute("message", message);
                direct = "login.jsp";
            }

            RequestDispatcher dispatcher = request.getRequestDispatcher(direct);
            dispatcher.forward(request, response);

        } catch (ClassNotFoundException | SQLException ex) {
            throw new ServletException(ex);
        }
    }
    @Override
    protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        request.getRequestDispatcher("login.jsp").forward(request, response);
    }
}

