<%-- Document : index Created on : Mar 3, 2025, 12:39:54 AM Author : macbookpro --%>

<%@page contentType="text/html" import="model.*,java.util.*, modelDAO.*, controller.*" pageEncoding="UTF-8" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ include file="./includes/common.jsp" %>
<!DOCTYPE html>
<html lang="en">

    <head>
        <meta charset="UTF-8">
        <meta name="viewport" content="width=device-width, initial-scale=1.0">
        <title>Courses - G-easy Learning</title>
        <%@ include file="includes/headInfo.jsp" %>
        <link rel="stylesheet" href="${css}/index.css">
        <!-- styles.css: Chứa các quy tắc CSS chính của trang -->
        <link rel="stylesheet" href="${css}/course.css">
    </head>


    <body>
        <c:if test="${featureMessage == false}">
            <script>
                window.onload = function () {
                    setTimeout(function () {
                        alert("Tính năng này chưa có sẵn!");
                    }, 500); // Hiện alert sau 500ms
                };
            </script>
        </c:if>

        <% List<Course> courseL = new ArrayList<>();
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
                    <div class="course">
                        <div class="course__banner">
                            <img src="https://s3-alpha-sig.figma.com/img/78dd/212c/1115df0d52a13e3a27cc8735ecd36e2c?Expires=1742169600&Key-Pair-Id=APKAQ4GOSFWCW27IBOMQ&Signature=Jl5qZxx~nfaFaIbbPfKGvxkL6ZxF9maOzp-IYbm6ml4eM3RuDyQJfqCE-70pLr57KL1hrt9X5jN3LzzYDXmeEZpB4rVpJz4UO5hQ500ckjIIhWbyKy8Y9gDTFrwPFvgyxqQU8wUqe78c4EJmfroYskwGSiFcUwVcUcBQlLGqUTLj26PYhVW0s3nv2lZi5JgCLTLLyTaYbTZuN9gANiprjjSO2SaM8Z3c5Qys4vqFEfbxTGjJHuCVWbRlIRCo6IHZoSkNKX43LPcUxlmXnDVLn8BMrKXuIbWMYCYI8BKjhFz52JaLv4aO9-Cl6I5x9CTXNjRGOQ6VzMswJ0cd4HgYOg__"
                                 alt="IELTS_Beginer" class="course_banner_img" />
                            <div class="course__info">
                                <h1 class="course__title">Khóa học offline</h1>
                                <p class="course__description">
                                    Lorem ipsum dolor sit amet, consectetur adipiscing elit,
                                    sed diam nonummy
                                    nibh euismod tincidunt ut laoreet dolore magna aliquam
                                    erat volutpat.
                                </p>
                            </div>
                        </div>

                        <div class="filter-bar">
                            <a href=""><button class="filter-btn">Tất cả khóa
                                    học</button></a>
                            <a href=""><button class="filter-btn">Đã thanh toán</button></a>
                            <div>
                                <a href="">
                                    <button class="icon-btn">
                                        <img src="${img}/course/Filter.svg" alt="Filter" />
                                        <ul class="icon-catetory">
                                            <li class="icon-catetory-sub hidden">
                                                <a href="">Loại tài liệu</a>
                                            </li>
                                            <li class="icon-catetory-sub hidden"><a
                                                    href="">Tiến độ hoàn thành</a></li>
                                            <li class="icon-catetory-sub hidden"><a
                                                    href="">Giảng viên</a></li>
                                            <li class="icon-catetory-sub hidden"><a
                                                    href="">Trạng thái</a></li>
                                        </ul>
                                    </button>
                                </a>
                            </div>
                            <div class="search-bar">
                                <img src="${img}/course/Vector.svg" alt="Tìm kiếm">
                                <input type="text" placeholder="Tìm kiếm...">
                            </div>
                        </div>

                        <div class="course-container">
                            <% for (Course course : courseL) {%>
                            <div class="course-card">
                                <img src="<%= course.getLinkimg()%>"
                                     alt="<%= course.getCourseName()%>"
                                     class="course-img">
                                <h3>
                                    <%= course.getCourseName()%>
                                </h3>
                                <p><strong>Level</strong>
                                    <%= course.getLevel()%>
                                </p>
                                <a href="${url}/view/course/<%= course.getCourseID() %>">
                                    <button class="detail-btn">Xem chi tiết</button>
                                </a>
                            </div>
                            <% }%>
                        </div>
                    </div>
                </div>
                <footer>
                    <%@ include file="./includes/footer.jsp" %>
                </footer>
            </div>
        </div>
        <%@ include file="./includes/chatbot.jsp" %>
        <script
        src="https://cdn.jsdelivr.net/npm/bootstrap@5.3.0/dist/js/bootstrap.bundle.min.js"></script>
        <%@ include file="./includes/javascriptInfo.jsp" %>
        <script src="${js}/course.js"></script>

    </body>

</html>