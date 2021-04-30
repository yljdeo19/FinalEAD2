package com.example.MidTerm;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import java.io.IOException;
import javax.servlet.RequestDispatcher;
import java.io.PrintWriter;

@WebServlet(name = "register",urlPatterns={"/register"})
public class RegServlet extends HttpServlet {
    protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        String username = request.getParameter("username");
        String password = request.getParameter("password");
        String Confirmpassword = request.getParameter("Confirmpassword");
        PrintWriter out = response.getWriter();

        UserServlet u = new UserServlet();

        User user = new User();
        user.setUsername(username);
        user.setPassword(password);

        try {
            if (password.equals(Confirmpassword)){
                int res = u.register(user);
                if(res != 0){
                    RequestDispatcher rd = request.getRequestDispatcher("index.jsp");
                    rd.forward(request, response);
                }}
            else{
                out.print("Confirmation error!");
                RequestDispatcher dispatcher = request.getRequestDispatcher("register.jsp");
                dispatcher.forward(request, response);
            }
        } catch (ClassNotFoundException e) {
            e.printStackTrace();
        }
    }
    @Override
    protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        request.getRequestDispatcher("register.jsp").forward(request, response);
    }

}