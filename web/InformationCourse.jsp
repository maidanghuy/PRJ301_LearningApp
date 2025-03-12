<%@page contentType="text/html" pageEncoding="UTF-8" %>
<%@ page import="java.util.List, java.util.ArrayList" %>
<%@ page import="model.Course" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<!DOCTYPE html>
<html>
    <head>
        <title>Trang chu</title>
        <%@ include file="./includes/headInfo.jsp" %>
        <!-- styles.css: Chứa các quy tắc CSS chính của trang -->
        <link rel="stylesheet" href="./assets/CSS/course_details.css" />
        <!-- <link rel="stylesheet" href="./assets/CSS/index.css" /> -->
    </head>

    <body>
        <%
            Course course = new Course();
            if (request.getAttribute("course") != null) {
                course = (Course) request.getAttribute("course");
            }
        %>
        <div class="container-custom">
            <div class="container-left">
                <%@ include file="./includes/navbar.jsp" %>
            </div>
            <div class="container-right">
                <div class="main-content">
                    <%@ include file="./includes/header.jsp" %>
                    <main class="main__content">
                        <div class="course">
                            <div class="course__banner">
                                <img
                                    src="<%=course.getLinkimg()%>"
                                    alt="<%=course.getCourseName()%>"
                                    class="course_banner_img"
                                    />
                                <div class="course__info">
                                    <h1 class="course__title"><%=course.getCourseName()%></h1>
                                    <p class="course__description">
                                        <%=course.getDescription()%>
                                    </p>
                                </div>
                            </div>
                            <div class="course__tabs">
                                <button class="btn course__tab course__tab--active">
                                    Thông tin khóa học
                                </button>
                                <button class="btn course__tab">Lịch học</button>
                                <button class="btn course__tab">Lộ trình học tập</button>
                                <button class="btn course__tab">Cam kết sau khóa học</button>
                            </div>
                            <div class="course__details">
                                <h2 class="course__title">
                                    <%=course.getDescription()%>
                                </h2>
                                <% String[] detailsList = course.getDetails().split(";");%>
                                <ul class="course__list">
                                    <% for (int i = 0; i < detailsList.length - 3; i++) { %>
                                    <li class="course__description">- <%= detailsList[i] %></li>
                                        <% } %>
                                </ul>

                                <% for (int i = detailsList.length - 3; i < detailsList.length; i++) { %>
                                <p class="course__description"><%= detailsList[i] %></p>
                                <% } %>
                            </div>
                        </div>

                        <div class="calendar hidden">
                            <div class="calendar-header">
                                <button id="prevMonth">&#9665;</button>
                                <h2 id="monthYear"></h2>
                                <button id="nextMonth">&#9655;</button>
                            </div>
                            <div class="weekdays">
                                <div>Sun</div>
                                <div>Mon</div>
                                <div>Tue</div>
                                <div>Wed</div>
                                <div>Thu</div>
                                <div>Fri</div>
                                <div>Sat</div>
                            </div>
                            <div class="days" id="calendarDays"></div>
                        </div>

                        <div class="accordion hidden">
                            <c:forEach var="entry" items="${learningPathway}">
                                <div class="accordion-item">
                                    <div class="accordion-header">${entry.key}</div>
                                    <div class="accordion-content">
                                        <c:forEach var="content" items="${entry.value.split('/')}">
                                            <p>${content}</p>
                                        </c:forEach>
                                    </div>
                                </div>
                            </c:forEach>
                        </div>
                            
                            
                        <%
                            String[] commitList = course.getCommit().split(";");
                        %>
                        <div class="commit hidden">
                            <% for (String commit : commitList) { %>
                            <p class="course__description"><%= commit %></p>
                            <%
                                }
                            %>
                        </div>


                        <div class="course_footer_btn">
                            <a href="#"
                               ><button class="btn course__register-btn">
                                    Khóa Học Khác
                                </button></a
                            >
                            <a href="#"
                               ><button class="btn course__register-btn">
                                    Đăng ký ngay
                                </button></a
                            >
                        </div>
                    </main>
                </div>
                <footer class="footer">
                    <%@ include file="./includes/footer.jsp" %>
                </footer>
            </div>
        </div>
        <script src="https://cdn.jsdelivr.net/npm/bootstrap@5.3.0/dist/js/bootstrap.bundle.min.js"></script>
        <script src="./assets/JS/index.js"></script>
        <script src="assets/JS/course_details.js"></script>
    </body>
</html>
