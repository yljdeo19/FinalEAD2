package com.example.MidTerm;
import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import java.io.IOException;
import java.sql.SQLException;
import java.util.List;


@WebServlet(name = "blog_list",urlPatterns = "/blog_list")
public class BlogListServlet extends HttpServlet{
    @Override
    protected void doGet(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
        BlogConf blogconfig = new BlogConf();
        try {
            List<Blog> blogs = blogconfig.getPosts();
            req.setAttribute("postList", blogs);
            RequestDispatcher dispatcher = req.getRequestDispatcher("BlogList.jsp");
            dispatcher.forward(req, resp);
        }
        catch (SQLException | ClassNotFoundException ex) {
            throw new ServletException(ex);
        }
    }
}
