<%-- Document : index Created on : Mar 3, 2025, 12:39:54 AM Author : macbookpro --%>

<%@page contentType="text/html" pageEncoding="UTF-8" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ include file="./includes/common.jsp" %>
<!DOCTYPE html>
<html>

    <head>
        <title>Course Lessons - G-easy Learning</title>
        <%@ include file="./includes/headInfo.jsp" %>
        <!-- styles.css: Chứa các quy tắc CSS chính của trang -->
        <link rel="stylesheet" href="${css}/index.css" />
        <link rel="stylesheet" href="${css}/lesson.css" />
    </head>


    <body>


        <div class="container-custom">
            <div class="container-left">
                <%@ include file="./includes/navbar.jsp" %>
            </div>
            <div class="container-right">
                <div class="main-content">
                    <%@ include file="./includes/header.jsp" %>

                    <div class="lesson-header-section">
                        <div class="breadcrumb-nav">
                            <a href="${contextPath}/view/home">Home</a> /
                            <a href="${contextPath}/view/course">Courses</a> /
                            <a
                                href="${contextPath}/view/course/${sessionScope.courseID}">${sessionScope.course.courseName}</a>
                            /
                            <span>Lessons</span>
                        </div>
                        <div class="course-progress">
                            <div class="progress-info">
                                <div class="progress-stats">
                                    <span class="completed-lessons">0/${totalLessons} lessons
                                        completed</span>
                                    <div class="progress-bar">
                                        <div class="progress" style="width: 0%"></div>
                                    </div>
                                </div>
                                <div class="course-meta">
                                    <span class="total-duration"><i class="fas fa-clock"></i>
                                        ${0} minutes</span>
                                    <span class="lesson-count"><i class="fas fa-book-open"></i>
                                        ${0} lessons</span>
                                </div>
                            </div>
                        </div>
                    </div>

                    <div class="lesson-container">
                        <div class="course-info">
                            <h1 class="course-title">${sessionScope.course.courseName}</h1>
                            <p class="course-description">${sessionScope.course.description}</p>
                        </div>

                        <div class="lesson-list">
                            <c:choose>
                                <c:when test="${empty lessons}">
                                    <div class="no-lessons">
                                        <i class="fas fa-book-open"></i>
                                        <h3>No Lessons Available</h3>
                                        <p>This course doesn't have any lessons yet. Please check back
                                            later.</p>
                                    </div>
                                </c:when>
                                <c:otherwise>
                                    <c:forEach items="${lessons}" var="lesson">
                                        <div class="lesson-card"
                                             onclick="showLessonContent(${lesson.lessonID})">
                                            <div class="lesson-header">
                                                <h3 class="lesson-title">${lesson.lessonTitle}</h3>
                                                <span class="lesson-duration">${lesson.duration}
                                                    minutes</span>
                                            </div>
                                            <div class="lesson-preview">
                                                <p>${lesson.shortContent}...</p>
                                            </div>
                                            <div class="lesson-footer">
                                                <a href="${contextPath}/view/course/lesson/${lesson.lessonID}" class="btn-start">Start Lesson</a>
                                                <span class="lesson-date">${lesson.createdAt}</span>
                                            </div>
                                        </div>
                                    </c:forEach>
                                </c:otherwise>
                            </c:choose>
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

    </body>

</html>