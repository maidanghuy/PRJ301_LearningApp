<%-- Document : course Created on : Mar 7, 2025, 9:36:50 PM Author : ADMIN --%>

<%@page contentType="text/html" pageEncoding="UTF-8" %>
<%@ page import="java.util.List, java.util.ArrayList" %>
<%@ page import="model.Course" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<!DOCTYPE html>
<html>

    <head>
        <title>Home Page</title>
        <%@ include file="./includes/headInfo.jsp" %>
        <!-- styles.css: Chứa các quy tắc CSS chính của trang -->
        <link rel="stylesheet" href="./assets/CSS/index.css" />
        <link rel="stylesheet" href="assets/CSS/course.css">
    </head>

    <body>
        <%
            List<Course> courseL = new ArrayList<>();
            if (request.getAttribute("list") != null) {
                courseL = (List<Course>) request.getAttribute("list");
            }
        %>
        <div class="container-custom">
            <div class="container-left">
                <%@ include file="./includes/navbar.jsp" %>
            </div>
            <div class="container-right">
                <div class="main-content">
                    <%@ include file="./includes/header.jsp" %>
                    <!-- <div style="width: 100%; height: 100rem; background-color: black"></div> -->
                    <div class="course">
                        <div class="course__banner">
                            <img src="https://s3-alpha-sig.figma.com/img/78dd/212c/1115df0d52a13e3a27cc8735ecd36e2c?Expires=1742169600&Key-Pair-Id=APKAQ4GOSFWCW27IBOMQ&Signature=Jl5qZxx~nfaFaIbbPfKGvxkL6ZxF9maOzp-IYbm6ml4eM3RuDyQJfqCE-70pLr57KL1hrt9X5jN3LzzYDXmeEZpB4rVpJz4UO5hQ500ckjIIhWbyKy8Y9gDTFrwPFvgyxqQU8wUqe78c4EJmfroYskwGSiFcUwVcUcBQlLGqUTLj26PYhVW0s3nv2lZi5JgCLTLLyTaYbTZuN9gANiprjjSO2SaM8Z3c5Qys4vqFEfbxTGjJHuCVWbRlIRCo6IHZoSkNKX43LPcUxlmXnDVLn8BMrKXuIbWMYCYI8BKjhFz52JaLv4aO9-Cl6I5x9CTXNjRGOQ6VzMswJ0cd4HgYOg__"
                                 alt="IELTS_Beginer" class="course_banner_img" />
                            <div class="course__info">
                                <h1 class="course__title">COURSE</h1>
                                <p class="course__description">
                                    Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed diam nonummy
                                    nibh euismod tincidunt ut laoreet dolore magna aliquam erat volutpat.
                                </p>
                            </div>
                        </div>

                        <div class="filter-bar">
                            <a href=""><button class="filter-btn">Tất cả khóa học</button></a>
                            <a href=""><button class="filter-btn">Đã thanh toán</button></a>
                            <div>
                                <a href=""><button class="icon-btn">
                                        <img src="assets/images/course/Filter.svg" alt="Filter">
                                        <ul class="icon-catetory ">
                                            <li class="icon-catetory-sub hidden"><a href="">Loại tài liệu</a></li>
                                            <li class="icon-catetory-sub hidden"><a href="">Tiến độ hoàn thành</a></li>
                                            <li class="icon-catetory-sub hidden"><a href="">Giảng viên</a></li>
                                            <li class="icon-catetory-sub hidden" ><a href="">Trạng thái</a></li>
                                        </ul>
                                    </button></a>

                            </div> 
                            <div class="search-bar">
                                <img src="assets/images/course/Vector.svg" alt="Tìm kiếm">
                                <input type="text" placeholder="Tìm kiếm...">
                            </div>
                        </div>

                        <div class="course-container">
                            <%
                                for (Course course : courseL) {
                            %>
                            <div class="course-card">
                                <img src="<%= course.getLinkimg()  %>" alt="<%= course.getCourseName() %>" class="course-img">
                                <h3><%= course.getCourseName()%></h3>
                                <p><strong>Level</strong> <%= course.getLevel()%></p>
                                <a href=""><button class="detail-btn">Xem chi tiết</button></a>
                            </div>
                            <%
                                }
                            %>
                        </div>


                    </div>
                </div>
                <footer>
                    <%@ include file="./includes/footer.jsp" %>
                </footer>
            </div>
        </div>
        <script src="https://cdn.jsdelivr.net/npm/bootstrap@5.3.0/dist/js/bootstrap.bundle.min.js"></script>
        <script src="./assets/JS/index.js"></script>
        <script src="assets/JS/course.js"></script>

    </body>

</html>