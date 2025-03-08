/*
 * Click nbfs://nbhost/SystemFileSystem/Templates/Licenses/license-default.txt to change this license
 * Click nbfs://nbhost/SystemFileSystem/Templates/Classes/Class.java to edit this template
 */
package modelDAO;

import connectDB.ConnectDB;
import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.util.ArrayList;
import java.util.Date;
import java.util.List;
import model.Course;

/**
 *
 * @author Asus
 */
public class CourseDao {

    Connection conn;

    public CourseDao() {
        ConnectDB connectDB = new ConnectDB();
        try {
            conn = connectDB.getConnection();
        } catch (Exception e) {
            System.out.println(e);

        }
    }

    public List<Course> getAll() {
        String sql = "select *from [dbo].[Courses]";
        List<Course> courseL = new ArrayList<>();

        try {
            //Khay chua cau lenh
            PreparedStatement pre = conn.prepareStatement(sql);

            //Chay cau lenh va tao khay chua ketqua
            ResultSet result = pre.executeQuery();

            while (result.next()) {
                int courseID = result.getInt(1);
                String courseName = result.getString(2);
                String description = result.getString(3);
                String level = result.getString(4);
                Date createdAt = result.getDate(5);
                Date updatedAt = result.getDate(6);

                Course cus = new Course(courseID, courseName, description, level, createdAt, updatedAt);

                courseL.add(cus);
            }

            result.close();
        } catch (Exception e) {
            System.err.println("error: " + e);
        }
        return courseL;
    }

    public Course getByCourseID(int courseID) {
        String sql = "select *from [dbo].[Courses] c where c.courseID=?";
        Course course = new Course();

        try {
            //Khay chua cau lenh
            PreparedStatement pre = conn.prepareStatement(sql);

            pre.setInt(1, courseID);
            //Chay cau lenh va tao khay chua ketqua
            ResultSet result = pre.executeQuery();
            while (result.next()) {
                String courseName = result.getString(2);
                String description = result.getString(3);
                String level = result.getString(4);
                Date createdAt = result.getDate(5);
                Date updatedAt = result.getDate(6);

                course = new Course(courseID, courseName, description, level, createdAt, updatedAt);
            }
        } catch (Exception e) {
            System.err.println("error: " + e);
        }
        return course;
    }

    public static void main(String[] args) {
        CourseDao stdao = new CourseDao();
        //Test lay toan bo khoa hoc
//        List<Course> list = new ArrayList<>();
//        list = stdao.getAll();
//        for (Course c : list) {
//            System.out.println(list);
//        }

        //Test lay khoa hoc bang ID lam ve thong tin mo ta
        Course cour = new Course();
        cour=stdao.getByCourseID(2);
        System.out.println(cour);
    }
}
