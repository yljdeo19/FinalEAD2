package com.example.MidTerm;
import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.SQLException;
import java.sql.*;


public class UserServlet{
    private Connection getConnection() throws SQLException, ClassNotFoundException {

        Class.forName("org.postgresql.Driver");
        Connection connection = DriverManager.getConnection("jdbc:postgresql://localhost:5432/cook", "postgres", "1234qwer");
        return connection;
    }
    public User validate(String username, String password) throws SQLException, ClassNotFoundException {
        Connection con = getConnection();
        PreparedStatement ps = con.prepareStatement("SELECT * FROM users WHERE username = ? AND password = ?");
        ps.setString(1, username);
        ps.setString(2, password);
        ResultSet rs = ps.executeQuery();
        User user = null;
        if (rs.next()) {
            user = new User();
            user.setId(rs.getInt("id"));
            user.setUsername(rs.getString("username"));
            user.setPassword(rs.getString("password"));
        }

        rs.close();
        ps.close();
        con.close();
        return user;
    }

    public int register(User user) throws ClassNotFoundException {
        int res = 0;
        try {

            Connection con = getConnection();
            PreparedStatement ps = con.prepareStatement("INSERT INTO users (username, password ) VALUES (?, ?)");

            ps.setString(1, user.getUsername());
            ps.setString(2, user.getPassword());

            res = ps.executeUpdate();

            con.close();
        } catch (SQLException e) {
            e.printStackTrace();
        }

        return res;
    }

    public User getUserById(Integer id) throws SQLException, ClassNotFoundException {
        Connection connect = getConnection();
        User user = new User();
        PreparedStatement ps = connect.prepareStatement("SELECT * FROM users WHERE id = ? LIMIT 1");
        ps.setInt(1, id);
        ResultSet resultSet = ps.executeQuery();
        resultSet.next();
        user.setId(id);
        user.setUsername(resultSet.getString("username"));
        user.setPassword(resultSet.getString("password"));
        resultSet.close();
        ps.close();
        connect.close();
        return user;
    }
}
