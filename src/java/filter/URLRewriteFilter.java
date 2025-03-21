package filter;

import jakarta.servlet.Filter;
import jakarta.servlet.FilterChain;
import jakarta.servlet.FilterConfig;
import java.io.IOException;
import jakarta.servlet.ServletException;
import jakarta.servlet.ServletRequest;
import jakarta.servlet.ServletResponse;
import jakarta.servlet.annotation.WebFilter;
import jakarta.servlet.http.HttpServletRequest;
import jakarta.servlet.http.HttpServletResponse;
import jakarta.servlet.http.HttpSession;

@WebFilter(filterName = "URLRewriteFilter", urlPatterns = {"/*"})
public class URLRewriteFilter implements Filter {

    @Override
    public void init(FilterConfig filterConfig) throws ServletException {
    }

    @Override
    public void doFilter(ServletRequest request, ServletResponse response, FilterChain chain)
            throws IOException, ServletException {
        HttpServletRequest req = (HttpServletRequest) request;
        HttpServletResponse resp = (HttpServletResponse) response;
        String requestURI = req.getRequestURI();
        String contextPath = req.getContextPath();

        // Remove context path from request URI
        String path = requestURI.substring(contextPath.length());
        
        // Handle course URLs
        if (path.matches("/view/course")) {
            req.getRequestDispatcher("/DivideActionServlet?action=course").forward(request, response);
            return;
        }
        
        // Handle course URLs
        if (path.matches("/view/course/lesson")) {
            req.getRequestDispatcher("/DivideActionServlet?action=lesson").forward(request, response);
            return;
        }
        //NEW
        if (path.matches("/view/course/LoadVnpay")) {
            req.getRequestDispatcher("vnpay_pay.jsp").forward(request, response);
//            resp.sendRedirect("vnpay_pay.jsp");
            return;
        }
        
//       if (path.matches("/view/course/vnpayajax")) {
//           req.getRequestDispatcher("/vnpayajax").forward(request, response);
//           return;
//       }
        
        
        if (path.matches("/view/course/lesson/\\d+")) {
            String lessonID = path.substring(path.lastIndexOf('/') + 1);
            req.getRequestDispatcher("/DivideActionServlet?action=viewLesson&id=" + lessonID).forward(request, response);
            return;
        }

        // Handle course detail URLs
        if (path.matches("/view/course/\\d+")) {
            String courseId = path.substring(path.lastIndexOf('/') + 1);
            req.getRequestDispatcher("/DivideActionServlet?action=viewCourse&id=" + courseId).forward(request, response);
            return;
        }

        // Handle /view/* URLs
        if (path.startsWith("/view/")) {
            String action = path.substring(6); // Remove "/view/" prefix
            // Kiểm tra xem action có hợp lệ không
            if (!action.matches("home|material|course|test|account|LoadVnpay")) {
                action = "home"; // Mặc định là "home" nếu không hợp lệ
            }
            req.getRequestDispatcher("/DivideActionServlet?action=" + action).forward(request, response);
            return;
        }

        if (path.startsWith("/logingg")) {
            chain.doFilter(request, response);
            return;
        }

        if (path.matches("/login")) {
            req.getRequestDispatcher("/DivideActionServlet?action=login").forward(request, response);
            return;
        }

        if (path.matches("/register")) {
            req.getRequestDispatcher("/DivideActionServlet?action=register").forward(request, response);
            return;
        }

        if (path.matches("/logout")) {
            req.getRequestDispatcher("/DivideActionServlet?action=logout").forward(request, response);
            return;
        }
    
        chain.doFilter(request, response);
    }

    @Override
    public void destroy() {
    }
}
