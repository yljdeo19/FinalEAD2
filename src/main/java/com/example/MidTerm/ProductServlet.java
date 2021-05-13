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


@WebServlet(name = "prod_serv",urlPatterns = "/prod_serv")
public class ProductServlet extends HttpServlet{
    @Override
    protected void doGet(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
        ProductConf productConf = new ProductConf();
        try {
            List<Product> prod = productConf.getProducts();
            req.setAttribute("prodList", prod);
            RequestDispatcher dispatcher = req.getRequestDispatcher("ProductList.jsp");
            dispatcher.forward(req, resp);
        }
        catch (SQLException | ClassNotFoundException ex) {
            throw new ServletException(ex);
        }
    }
}
