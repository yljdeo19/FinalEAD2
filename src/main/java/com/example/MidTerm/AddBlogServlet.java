package com.example.MidTerm;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import java.io.IOException;

@WebServlet("/add_Blog")
public class AddBlogServlet extends HttpServlet{
    @Override
    protected void doPost(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {

        String name = req.getParameter("name");
        String category = req.getParameter("category");
        String description = req.getParameter("description");
        req.setAttribute("name", name);
        req.setAttribute("category", category);
        req.setAttribute("description", description);
        req.getRequestDispatcher("BlogList.jsp").forward(req, resp);
    }


    @Override
    protected void doGet(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
        req.getRequestDispatcher("AddBlog.jsp").forward(req, resp);
    }
}
