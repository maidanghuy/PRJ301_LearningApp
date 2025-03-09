/*
 * Click nbfs://nbhost/SystemFileSystem/Templates/Licenses/license-default.txt to change this license
 * Click nbfs://nbhost/SystemFileSystem/Templates/Classes/Class.java to edit this template
 */
package modelDAO;

import connectDB.ConnectDB;
import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import model.User;

/**
 *
 * @author macbookpro
 */
public class UserDAO {

    Connection conn;

    public UserDAO() {
        ConnectDB connectDB = new ConnectDB();
        try {
            conn = connectDB.getConnection();
        } catch (Exception e) {
            System.out.println(e);

        }
    }

    public User getUser(String username, String password) {
        User user = null;
        String query = "SELECT * FROM Users WHERE username = ? AND password = ?";

        try {
            PreparedStatement stmt = conn.prepareStatement(query);
            stmt.setString(1, username);
            stmt.setString(2, password);
            ResultSet rs = stmt.executeQuery();

            if (rs.next()) {
                user = new User(
                        rs.getInt("userID"),
                        rs.getString("role"),
                        rs.getString("username"),
                        rs.getString("password"),
                        rs.getString("email"),
                        rs.getDate("dateOfBirth"),
                        rs.getString("status")
                );
            }
            rs.close();
            stmt.close();
            conn.close();
        } catch (SQLException e) {
            e.printStackTrace();
        }
        return user;
    }

    // Kiểm tra username đã tồn tại trong database hay chưa
    public boolean isUsernameExists(String username) {
        String query = "SELECT COUNT(*) FROM Users WHERE username = ?";
        try {
            PreparedStatement stmt = conn.prepareStatement(query);
            stmt.setString(1, username);
            ResultSet rs = stmt.executeQuery();
            if (rs.next()) {
                return rs.getInt(1) > 0; // Nếu COUNT > 0 thì username đã tồn tại
            }
            rs.close();
            stmt.close();
            conn.close();
        } catch (Exception e) {
            e.printStackTrace();
        }
        return false;
    }

    public boolean registerUser(User user) {
        String sql = "INSERT INTO Users (role, username, password, email, dateOfBirth, status, createdAt, updatedAt) "
                + "VALUES (?, ?, ?, ?, ?, ?, GETDATE(), GETDATE())";

        try {

            PreparedStatement stmt = conn.prepareStatement(sql);

            stmt.setString(1, user.getRole());
            stmt.setString(2, user.getUsername());
            stmt.setString(3, user.getPassword());
            stmt.setString(4, user.getEmail());

            if (user.getDateOfBirth() != null) {
                stmt.setDate(5, user.getDateOfBirth());
            } else {
                java.sql.Date sqlDate = new java.sql.Date(System.currentTimeMillis());
                stmt.setDate(5, sqlDate);
            }

            stmt.setString(6, user.getStatus());

            int rowsInserted = stmt.executeUpdate();
            stmt.close();
            conn.close();
            return rowsInserted > 0;

        } catch (SQLException e) {
            e.printStackTrace();
            return false;
        }
    }

    public boolean isEmailExists(String email) {
        boolean exists = false;
        String sql = "SELECT COUNT(*) FROM Users WHERE email = ?";

        try {
            PreparedStatement stmt = conn.prepareStatement(sql);
            stmt.setString(1, email);
            try (ResultSet rs = stmt.executeQuery()) {
                if (rs.next() && rs.getInt(1) > 0) {
                    exists = true;
                }
            }

            stmt.close();
            conn.close();
        } catch (SQLException e) {
            e.printStackTrace();
        }
        return exists;
    }

    public static void main(String[] args) {
        UserDAO udao = new UserDAO();
//        System.out.println(udao.getUser("huymai", "hashed_password_123"));
        System.out.println(udao.isEmailExists("nguyenvan@example.com11"));
    }
}
