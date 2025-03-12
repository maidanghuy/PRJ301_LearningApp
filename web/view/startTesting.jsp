<%@page contentType="text/html" pageEncoding="UTF-8" %>
<%@ include file="./includes/common.jsp" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>

<!DOCTYPE html>
<html>
    <head>
        <title>Start Test</title>
        <%@ include file="./includes/headInfo.jsp" %>
        <link rel="stylesheet" href="${css}/index.css" />
        <link rel="stylesheet" href="${css}/testing.css" />
        <style>
            body {
                font-family: Arial, sans-serif;
                background-color: #f9f9f9;
                color: #333;
            }

            .question-container {
                max-width: 800px;
                margin: 20px auto;
                padding: 20px;
                background: white;
                border-radius: 8px;
                box-shadow: 0 2px 10px rgba(0, 0, 0, 0.1);
            }

            .question-header {
                display: flex;
                justify-content: space-between;
                align-items: center;
                margin-bottom: 20px;
            }

            .question-title {
                font-size: 24px;
                color: #FF6600;
                font-weight: bold;
            }

            .question-list {
                list-style: none;
                padding: 0;
            }

            .question-item {
                margin-bottom: 15px;
                padding: 15px;
                border: 1px solid #FF6600;
                border-radius: 5px;
                background: #FFF3E0;
            }

            .question-text {
                font-size: 18px;
                margin-bottom: 10px;
            }

            .answer-options {
                list-style: none;
                padding: 0;
            }

            .answer-option {
                margin-bottom: 8px;
            }

            .answer-option input[type="radio"] {
                margin-right: 10px;
            }

            .btn-submit {
                display: inline-block;
                padding: 10px 20px;
                background-color: #FF6600;
                color: white;
                text-decoration: none;
                border-radius: 5px;
                transition: background-color 0.3s ease;
            }

            .btn-submit:hover {
                background-color: #e65c00;
            }
        </style>
    </head>
    <body>
        <div class="container-custom">
            <div class="container-left">
                <%@ include file="./includes/navbar.jsp" %>
            </div>
            <div class="container-right">
                <div class="main-content">
                    <%@ include file="./includes/header.jsp" %>

                    <!-- Hiển thị danh sách câu hỏi -->
                    <div class="question-container">
                        <div class="question-header">
                            <div class="question-title">Danh sách câu hỏi</div>
                            <div class="question-count">Tổng số câu hỏi: ${totalQuestions}</div>
                            <div id="countdown" class="countdown-timer"></div>
                        </div>
                        <ul class="question-list">
                            <c:forEach var="question" items="${questions}">
                                <li class="question-item">
                                    <div class="question-text">${question.text}</div>
                                    <ul class="answer-options">
                                        <c:forEach var="option" items="${question.options}">
                                            <li class="answer-option">
                                                <input type="radio" name="question${question.id}" value="${option.id}">${option.text}
                                            </li>
                                        </c:forEach>
                                    </ul>
                                </li>
                            </c:forEach>
                        </ul>
                    </div>

                    <%@ include file="./includes/main.jsp" %>
                </div>
                <footer>
                    <%@ include file="./includes/footer.jsp" %>
                </footer>
            </div>
        </div>
        <%@ include file="./includes/chatbot.jsp" %>      
        <script src="https://cdn.jsdelivr.net/npm/bootstrap@5.3.0/dist/js/bootstrap.bundle.min.js"></script>
        <%@ include file="./includes/javascriptInfo.jsp" %> 
        <script>
            // Thời gian đếm ngược (ví dụ: 10 phút)
            var countdownTime = 10 * 60;
            var countdownElement = document.getElementById('countdown');

            function updateCountdown() {
                var minutes = Math.floor(countdownTime / 60);
                var seconds = countdownTime % 60;
                countdownElement.textContent = 'Thời gian còn lại: ' + minutes + ' phút ' + seconds + ' giây';
                if (countdownTime > 0) {
                    countdownTime--;
                } else {
                    clearInterval(countdownInterval);
                    alert('Hết thời gian!');
                }
            }

            var countdownInterval = setInterval(updateCountdown, 1000);
        </script>
    </body>
</html> 