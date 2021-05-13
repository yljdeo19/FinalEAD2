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

@WebServlet(name = "AddProductServlet", urlPatterns = "/AddProductServlet")
public class AddProductServlet extends HttpServlet{
    protected void doPost(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
        boolean status;
        PrintWriter out = resp.getWriter();
        String name = req.getParameter("name");
        String description = req.getParameter("description");
        Double price=Double.parseDouble(req.getParameter("price"));

        String product = req.getParameter("post");
        Product createProduct = new Product();
        createProduct.setName(name);

        createProduct.setDescription(description);
        createProduct.setPrice(price);
        status = new ProductConf().CreateProduct(createProduct);
        if(status){
            req.setAttribute("post", product);
            RequestDispatcher dispatcher =req.getRequestDispatcher("index.jsp");
            dispatcher.forward(req, resp);
        }else{
            resp.sendRedirect("index.jsp");
        }

    }
    protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        request.getRequestDispatcher("AddProduct.jsp").forward(request, response);
    }
}
