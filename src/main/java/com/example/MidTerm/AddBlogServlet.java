package com.example.MidTerm;
import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import java.io.IOException;
import java.io.PrintWriter;
import java.sql.SQLException;

@WebServlet(name = "AddBlogServlet", urlPatterns = "/AddBlogServlet")
public class AddBlogServlet extends HttpServlet{
    protected void doPost(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
        boolean status;
        PrintWriter out = resp.getWriter();
        String name = req.getParameter("title");
        String category = req.getParameter("category");
        String description = req.getParameter("description");
        try {
            Integer userId = Integer.parseInt(req.getParameter("userId"));
            String post = req.getParameter("post");
            User user = new UserServlet().getUserById(userId);

            Blog createBlog = new Blog();
            createBlog.setTitle(name);
            createBlog.setCategory(category);
            createBlog.setDescription(description);
            createBlog.setUserid(userId);
            status = new BlogConf().CreateBlog(createBlog);
            if(status){
                req.setAttribute("post", post);
                RequestDispatcher dispatcher =req.getRequestDispatcher("index.jsp");
                dispatcher.forward(req, resp);
            }else{
                resp.sendRedirect("index.jsp");
            }

        } catch (SQLException | ClassNotFoundException ex) {
            throw new ServletException(ex);
        }
    }
    protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        request.getRequestDispatcher("AddBlog.jsp").forward(request, response);
    }
}
