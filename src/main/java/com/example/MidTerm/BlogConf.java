package com.example.MidTerm;
import java.sql.*;
import java.util.ArrayList;
import java.util.List;

public class BlogConf {
    private Connection getConnection() throws SQLException, ClassNotFoundException {

        Class.forName("org.postgresql.Driver");
        Connection connect = DriverManager.getConnection("jdbc:postgresql://localhost:5432/cook", "postgres", "1234qwer");
        return connect;
    }

    public List<Blog> getPosts() throws SQLException, ClassNotFoundException {
        List<Blog> blogs = new ArrayList<>();
        UserServlet userServlet = new UserServlet();

        Connection con = getConnection();

        PreparedStatement ps = con.prepareStatement("SELECT * FROM blog");

        ResultSet rs = ps.executeQuery();

        while (rs.next()) {
            int blogid = rs.getInt("blogid");
            String title = rs.getString("title");
            String category = rs.getString("category");
            String description = rs.getString("description");
            int userId = rs.getInt("userid");
            User user = userServlet.getUserById(userId);

            Blog blog = new Blog(blogid,userId,title,category,description,user);
            blogs.add(blog);
        }

        rs.close();
        ps.close();
        con.close();

        return blogs;
    }

    public boolean CreateBlog(Blog blog) {
        try {
            Connection con = getConnection();
            PreparedStatement ps = con.prepareStatement("INSERT INTO blog (title,category,description,userid) " +
                    "VALUES (?, ?, ?, ?)");

            ps.setString(1, blog.getTitle());
            ps.setString(2,blog.getCategory());
            ps.setString(3, blog.getDescription());
            ps.setInt(4,blog.getUserid());

            ps.executeUpdate();
            con.close();
            return true;
        } catch (SQLException | ClassNotFoundException e) {
            e.printStackTrace();
        }

        return false;
    }


}
