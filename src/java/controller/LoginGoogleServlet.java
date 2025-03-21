/*
 * Click nbfs://nbhost/SystemFileSystem/Templates/Licenses/license-default.txt to change this license
 * Click nbfs://nbhost/SystemFileSystem/Templates/JSP_Servlet/Servlet.java to edit this template
 */
package controller;

import java.io.IOException;
import jakarta.servlet.ServletException;
import jakarta.servlet.annotation.WebServlet;
import jakarta.servlet.http.Cookie;
import jakarta.servlet.http.HttpServlet;
import jakarta.servlet.http.HttpServletRequest;
import jakarta.servlet.http.HttpServletResponse;
import jakarta.servlet.http.HttpSession;
import model.GoogleAccount;
import model.User;
import modelDAO.UserDAO;

/**
 *
 * @author macbookpro
 */
@WebServlet(urlPatterns = {"/logingg"})
public class LoginGoogleServlet extends HttpServlet {

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
//        response.setContentType("text/html;charset=UTF-8");
//        try (PrintWriter out = response.getWriter()) {
//            /* TODO output your page here. You may use following sample code. */
//            out.println("<!DOCTYPE html>");
//            out.println("<html>");
//            out.println("<head>");
//            out.println("<title>Servlet CourseServlet</title>");
//            out.println("</head>");
//            out.println("<body>");
//            out.println("<h1>Servlet CourseServlet at " + request.getContextPath() + "</h1>");
//            out.println("</body>");
//            out.println("</html>");
//        }
        String code = request.getParameter("code");
        GoogleLogin gg = new GoogleLogin();
//      
        System.out.println(code);
        String accessToken = gg.getToken(code);
        System.out.println(accessToken);

        GoogleAccount acc = gg.getUserInfo(accessToken);
        System.out.println(acc);
        User user = new User(acc);
        System.out.println(user);

        UserDAO udao = new UserDAO();
        if (!udao.isUsernameExists(acc.getEmail())) {
            udao = new UserDAO();
            udao.registerUser(user);
        }
        
        HttpSession session = request.getSession();
        session.setAttribute("user", user);
        session.setMaxInactiveInterval(30 * 60); // 30 phút

        // Tạo cookie lưu trong 3 tháng
        Cookie userCookie = new Cookie("username", user.getUsername());
        userCookie.setMaxAge(60 * 60 * 24 * 90); // 90 ngày
        response.addCookie(userCookie);

        // Chuyển hướng đến trang chính
        response.sendRedirect("view/learningpage.jsp");
//        request.getRequestDispatcher("view/learningpage.jsp").forward(request, response);
    }

    // <editor-fold defaultstate="collapsed" desc="HttpServlet methods. Click on the
    // + sign on the left to edit the code.">
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
        processRequest(request, response);
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
        processRequest(request, response);
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
