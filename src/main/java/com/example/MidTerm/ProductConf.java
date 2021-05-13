package com.example.MidTerm;
import java.sql.*;
import java.util.ArrayList;
import java.util.List;

public class ProductConf {
    private Connection getConnection() throws SQLException, ClassNotFoundException {

        Class.forName("org.postgresql.Driver");
        Connection connect = DriverManager.getConnection("jdbc:postgresql://localhost:5432/cook", "postgres", "1234qwer");
        return connect;
    }

    public List<Product> getProducts() throws SQLException, ClassNotFoundException {
        List<Product> products = new ArrayList<>();
        Connection con = getConnection();

        PreparedStatement ps = con.prepareStatement("SELECT * FROM product");

        ResultSet rs = ps.executeQuery();

        while (rs.next()) {
            int prodid = rs.getInt("prodid");
            String name = rs.getString("name");
            String description = rs.getString("description");
            Double price = rs.getDouble("price");
            Product product = new Product(prodid,name,description,price);
            products.add(product);
        }

        rs.close();
        ps.close();
        con.close();

        return products;
    }

    public boolean CreateProduct(Product product) {
        try {
            Connection con = getConnection();
            PreparedStatement ps = con.prepareStatement("INSERT INTO product (name, description,price) " +
                    "VALUES (?, ?, ?)");

            ps.setString(1, product.getName());
            ps.setString(2, product.getDescription());
            ps.setDouble(3,product.getPrice());

            ps.executeUpdate();
            con.close();
            return true;
        } catch (SQLException | ClassNotFoundException e) {
            e.printStackTrace();
        }

        return false;
    }


}
