<%@page contentType="text/html" pageEncoding="UTF-8" %> 
<%@ include file="./includes/common.jsp" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/fmt" prefix="fmt" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>

<!DOCTYPE html>
<html>
    <head>
        <title>Home Page</title>
        <%@ include file="./includes/headInfo.jsp" %>
        <!-- styles.css: Chứa các quy tắc CSS chính của trang -->
        <link rel="stylesheet" href="${css}/index.css" />
        <link rel="stylesheet" href="${css}/testing.css" />
    </head>

    <body>
        <div class="container-custom">
            <div class="container-left">
                <%@ include file="./includes/navbar.jsp" %>
            </div>
            <div class="container-right">
                <div class="main-content">
                    <%@ include file="./includes/header.jsp" %>

                    <div class="content-wrapper">
                        <div class="test-header">
                            <div class="test-filters">
                                <button class="filter-btn active" data-type="all">
                                    <i class="fas fa-list"></i> All
                                </button>
                                <button class="filter-btn" data-type="listening">
                                    <i class="fas fa-headphones"></i> Listening
                                </button>
                                <button class="filter-btn" data-type="reading">
                                    <i class="fas fa-book-reader"></i> Reading
                                </button>
                            </div>
                        </div>


                        <div class="test-container">
                            <c:forEach var="test" items="${list}">
                                <div class="test-item" data-type="${test.category.toLowerCase()}">
                                    <div class="test-item-header">
                                        <div class="header-main">
                                            <span class="test-badge ${test.category.toLowerCase()}">
                                                ${test.category}
                                            </span>
                                            <h3 class="test-name">${test.testName}</h3>
                                        </div>
                                        <div class="test-time">
                                            <i class="fas fa-clock"></i>
                                            <span>${test.duration} min</span>
                                        </div>
                                    </div>
                                    <div class="test-details">
                                        <div class="meta-info">
                                            <div class="info-item">
                                                <i class="fas fa-calendar-alt"></i>
                                                <span><fmt:formatDate value="${test.createdAt}" pattern="dd-MM-yyyy" type="date" /></span>
                                            </div>
                                            <div class="info-item">
                                                <i class="fas fa-tasks"></i>
                                                <span>100 Questions</span>
                                            </div>
                                        </div>
                                        <p class="test-desc">
                                            ${test.description}
                                        </p>
                                    </div>
                                    <div class="test-actions">
                                        <a href="start-test?testID=${test.testID}" class="btn-start-test">
                                            <span>Start</span>
                                            <i class="fas fa-arrow-right"></i>
                                        </a>
                                    </div>
                                </div>
                            </c:forEach>
                        </div>
                    </div>
                    <footer><%@ include file="./includes/footer.jsp" %></footer>
                </div>
            </div>
            <%@ include file="./includes/chatbot.jsp" %>
            <script src="https://cdn.jsdelivr.net/npm/bootstrap@5.3.0/dist/js/bootstrap.bundle.min.js"></script>
            <%@ include file="./includes/javascriptInfo.jsp" %>


            <script src="${js}/testing.js"></script>
    </body>
</html>
