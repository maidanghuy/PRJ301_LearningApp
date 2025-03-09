/*
 * Click nbfs://nbhost/SystemFileSystem/Templates/Licenses/license-default.txt to change this license
 * Click nbfs://nbhost/SystemFileSystem/Templates/Classes/Class.java to edit this template
 */
package modelDAO;
import java.sql.Connection;
import connectDB.ConnectDB;
import java.sql.Date;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.util.ArrayList;
import java.util.List;
import model.Content;

/**
 *
 * @author LENOVO
 */
public class ContentDAO {
    Connection conn;

    public ContentDAO() {
        ConnectDB connectDB = new ConnectDB();
        try {
            conn = connectDB.getConnection();
        } catch (Exception e) {
            System.out.println(e);

        }
    }

    public List<Content> getAllContent() {
        List<Content> contentList = new ArrayList<>();
        String query = "SELECT * FROM Content";

        try (
             PreparedStatement pre = conn.prepareStatement(query);
             ResultSet rs = pre.executeQuery()) {

            while (rs.next()) {
                Content content = new Content(
                        rs.getInt(1),
                        rs.getString(2),
                        rs.getString(3),
                        rs.getString(4),
                        rs.getString(5),
                        rs.getString(6),
                        rs.getString(7),
                        rs.getString(8),
                        rs.getString(10),
                        rs.getDate(9)
                );
                contentList.add(content);
            }
        } catch (Exception e) {
            e.printStackTrace();
        }
        return contentList;
    }
    
    public static void main(String[] args) {
        ContentDAO dao = new ContentDAO();
        List<Content> a = dao.getAllContent();
        System.out.println(a);
    }
}

