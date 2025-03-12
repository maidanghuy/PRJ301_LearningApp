/*
 * Click nbfs://nbhost/SystemFileSystem/Templates/Licenses/license-default.txt to change this license
 * Click nbfs://nbhost/SystemFileSystem/Templates/JSP_Servlet/Servlet.java to edit this template
 */
package controller;

import java.io.IOException;
import java.io.PrintWriter;
import jakarta.servlet.ServletException;
import jakarta.servlet.http.Cookie;
import jakarta.servlet.http.HttpServlet;
import jakarta.servlet.http.HttpServletRequest;
import jakarta.servlet.http.HttpServletResponse;
import jakarta.servlet.http.HttpSession;
import java.sql.Date;
import java.time.LocalDate;
import model.Course;
import model.User;
import modelDAO.UserDAO;

/**
 *
 * @author macbookpro
 */
public class DivideActionServlet extends HttpServlet {

    public DivideActionServlet() {
    }

    /**
     * Processes requests for both HTTP <code>GET</code> and <code>POST</code>
     * methods.
     *
     * @param request servlet request
     * @param response servlet response
     * @throws ServletException if a servlet-specific error occurs
     * @throws IOException if an I/O error occurs
     */
    protected void processRequest(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        response.setContentType("text/html;charset=UTF-8");
        try (PrintWriter out = response.getWriter()) {
            /* TODO output your page here. You may use following sample code. */
            out.println("<!DOCTYPE html>");
            out.println("<html>");
            out.println("<head>");
            out.println("<title>Servlet DivideActionServlet</title>");
            out.println("</head>");
            out.println("<body>");
            out.println("<h1>Servlet DivideActionServlet at " + request.getContextPath() + "</h1>");
            out.println("</body>");
            out.println("</html>");
        }
    }

    // <editor-fold defaultstate="collapsed" desc="HttpServlet methods. Click on the + sign on the left to edit the code.">
    /**
     * Handles the HTTP <code>GET</code> method.
     *
     * @param request servlet request
     * @param response servlet response
     * @throws ServletException if a servlet-specific error occurs
     * @throws IOException if an I/O error occurs
     */
    @Override
    protected void doGet(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
//        processRequest(request, response);
        String action = String.valueOf(request.getParameter("action"));

        switch (action) {
            case "home" -> {
                request.getRequestDispatcher("view/learningpage.jsp").forward(request, response);
                break;
            }
            case "material" -> {
                request.setAttribute("featureMessage", "Tính năng này chưa có sẵn!");
                request.getRequestDispatcher("view/learningpage.jsp").forward(request, response);
                break;
            }
            case "course" -> {
                request.getRequestDispatcher("/CourseServlet").forward(request, response);
                break;
            }
            case "viewCourse" -> {
                int courseId = Integer.parseInt(request.getParameter("id"));
                request.getRequestDispatcher("/InformationCourseServlet?id=" + courseId).forward(request, response);
                break;
            }
            case "viewLesson" -> {
                int lessonId = Integer.parseInt(request.getParameter("id"));
                request.getRequestDispatcher("/LoadContentServlet?id=" + lessonId).forward(request, response);
                break;
            }
            case "lesson" -> {
                HttpSession session = request.getSession();
                int courseID = (Integer) session.getAttribute("courseID");
                Course c = (Course) session.getAttribute("course");
                System.out.println(c);
                request.getRequestDispatcher("/LessonServlet?id=" + courseID).forward(request, response);
                break;
            }
            case "test" -> {
//                request.setAttribute("featureMessage", "Tính năng này chưa có sẵn!");
                request.getRequestDispatcher("/Test").forward(request, response);
                break;
            }
            case "account" -> {
                request.setAttribute("featureMessage", "Tính năng này chưa có sẵn!");
                request.getRequestDispatcher("view/learningpage.jsp").forward(request, response);
                break;
            }
            case "logout" -> {
                if (request.getSession(false) != null) {
                    request.getSession().invalidate();
                    response.sendRedirect("view");
                }
                break;
            }
            case "login" -> {
                request.getRequestDispatcher("login.jsp").forward(request, response);
                break;
            }
            case "register" -> {
                request.getRequestDispatcher("register.jsp").forward(request, response);
                break;
            }
            default -> {
                request.getRequestDispatcher("view/learningpage.jsp").forward(request, response);
                break;
            }
        }
    }

    /**
     * Handles the HTTP <code>POST</code> method.
     *
     * @param request servlet request
     * @param response servlet response
     * @throws ServletException if a servlet-specific error occurs
     * @throws IOException if an I/O error occurs
     */
    @Override
    protected void doPost(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
//        processRequest(request, response);

        String action = String.valueOf(request.getParameter("formName"));

        switch (action) {
            case "login" -> {
                getUserForLogin(request, response);
            }
            case "register" -> {
                getUserForRegister(request, response);
            }
            case "create" -> {
            }
            case "updateCustomer" -> {
            }
            case "createCustomer" -> {
            }
            default -> {
            }
        }
    }

    public void getUserForLogin(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        String username = request.getParameter("username");
        String password = request.getParameter("password");

        UserDAO udao = new UserDAO();
        User user = udao.getUser(username, password);

        if (user != null) {
            // Tạo session
            HttpSession session = request.getSession();
            session.setAttribute("user", user);
            session.setMaxInactiveInterval(30 * 60); // 30 phút

            // Tạo cookie lưu trong 3 tháng
            Cookie userCookie = new Cookie("username", username);
            userCookie.setMaxAge(60 * 60 * 24 * 90); // 90 ngày
            response.addCookie(userCookie);

            // Chuyển hướng đến trang chính
            response.sendRedirect("view/home");
        } else {
            // Đăng nhập thất bại, chuyển hướng về trang login với thông báo lỗi
            request.setAttribute("error", "Sai tài khoản hoặc mật khẩu!");
            request.getRequestDispatcher("login.jsp").forward(request, response);
        }
    }

    public void getUserForRegister(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        try {
            String role = "Student"; // Mặc định là học viên
            String username = request.getParameter("username");
            String password = request.getParameter("password");
            String confirmPassword = request.getParameter("confirmPassword");
            String email = request.getParameter("email");
            String dateOfBirthStr = request.getParameter("dateOfBirth");

            // Kiểm tra nếu username đã tồn tại
            UserDAO userDAO = new UserDAO();
            if (userDAO.isUsernameExists(username)) {
                request.setAttribute("error", "Tên đăng nhập đã tồn tại! Vui lòng chọn tên khác.");
                request.setAttribute("username", username);
                request.setAttribute("email", email);
                request.setAttribute("dateOfBirth", dateOfBirthStr);
                request.getRequestDispatcher("register.jsp").forward(request, response);
                return;
            }

            // Kiểm tra xác nhận mật khẩu
            userDAO = new UserDAO();
            if (!password.equals(confirmPassword)) {
                request.setAttribute("error", "Mật khẩu xác nhận không khớp! Vui lòng nhập lại.");
                request.setAttribute("username", username);
                request.setAttribute("email", email);
                request.setAttribute("dateOfBirth", dateOfBirthStr);
                request.getRequestDispatcher("register.jsp").forward(request, response);
                return;
            }

            // Kiểm tra email đã tồn tại chưa
            userDAO = new UserDAO();
            if (userDAO.isEmailExists(email)) {
                request.setAttribute("error", "Email đã được sử dụng! Vui lòng chọn email khác.");
                request.setAttribute("username", username);
                request.setAttribute("email", email);
                request.setAttribute("dateOfBirth", dateOfBirthStr);
                request.getRequestDispatcher("register.jsp").forward(request, response);
                return;
            }

            // Kiểm tra ngày sinh
            userDAO = new UserDAO();
            Date dateOfBirth = null;
            if (dateOfBirthStr != null && !dateOfBirthStr.isEmpty()) {
                dateOfBirth = Date.valueOf(dateOfBirthStr);

                // Lấy ngày hiện tại
                LocalDate today = LocalDate.now();
                if (dateOfBirth.toLocalDate().isAfter(today)) {
                    request.setAttribute("error", "Ngày sinh không hợp lệ! Phải nhỏ hơn ngày hiện tại.");
                    request.setAttribute("username", username);
                    request.setAttribute("email", email);
                    request.setAttribute("dateOfBirth", dateOfBirthStr);
                    request.getRequestDispatcher("register.jsp").forward(request, response);
                    return;
                }
            }

            // Trạng thái mặc định là "Active"
            String status = "Active";

            // Tạo user mới
            User newUser = new User(role, username, password, email, dateOfBirth, status);

            // Đăng ký user
            userDAO = new UserDAO();
            boolean isRegistered = userDAO.registerUser(newUser);

            if (isRegistered) {
                request.setAttribute("message", "Đăng ký thành công! Vui lòng đăng nhập.");
                response.sendRedirect("login");
            } else {
                request.setAttribute("error", "Đăng ký thất bại! Vui lòng thử lại.");
                request.setAttribute("username", username);
                request.setAttribute("email", email);
                request.setAttribute("dateOfBirth", dateOfBirthStr);
                request.getRequestDispatcher("register.jsp").forward(request, response);
            }
        } catch (Exception e) {
            e.printStackTrace();
            request.setAttribute("error", "Lỗi hệ thống, vui lòng thử lại sau!");
            request.setAttribute("username", request.getParameter("username"));
            request.setAttribute("email", request.getParameter("email"));
            request.setAttribute("dateOfBirth", request.getParameter("dateOfBirth"));
            request.getRequestDispatcher("register.jsp").forward(request, response);
        }
    }

    /**
     * Returns a short description of the servlet.
     *
     * @return a String containing servlet description
     */
    @Override
    public String getServletInfo() {
        return "Short description";
    }// </editor-fold>

}
