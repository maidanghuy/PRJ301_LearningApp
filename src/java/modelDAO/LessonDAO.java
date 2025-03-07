/*
 * Click nbfs://nbhost/SystemFileSystem/Templates/Licenses/license-default.txt to change this license
 * Click nbfs://nbhost/SystemFileSystem/Templates/Classes/Class.java to edit this template
 */
package modelDAO;
import connectDB.ConnectDB;
import java.sql.Connection;

/**
 *
 * @author LENOVO
 */
public class LessonDAO {
    Connection conn;

    public LessonDAO() {
        ConnectDB connectDB = new ConnectDB();
        try {
            conn = connectDB.getConnection();
        } catch (Exception e) {
            System.err.println("Error in CustomerDAO! (23)");
        }
    }
}
