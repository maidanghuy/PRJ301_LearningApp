<%-- Document : Submit Created on : Mar 16, 2025, 9:07:30 PM Author : Asus --%>
<%@page contentType="text/html" pageEncoding="UTF-8" %> <%@ include
    file="./includes/common.jsp" %> <%@ taglib
        uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>

        <!DOCTYPE html>
        <html>
            <head>
                <meta http-equiv="Content-Type" content="text/html; charset=UTF-8" />
                <title>Result</title>
                <%@ include file="./includes/headInfo.jsp" %>
                <link rel="stylesheet" href="${css}/index.css" />
                <link rel="stylesheet" href="${css}/submit.css" />
                <style>
                    .result-container {
                        text-align: center;
                        margin: 50px auto;
                        max-width: 600px;
                        padding: 20px;
                        border-radius: 10px;
                        box-shadow: 0 0 10px rgba(0, 0, 0, 0.1);
                    }
                    .score {
                        font-size: 48px;
                        font-weight: bold;
                        color: #2c3e50;
                        margin: 20px 0;
                    }
                    .btn-container {
                        display: flex;
                        justify-content: center;
                        gap: 20px;
                        margin-top: 30px;
                    }
                    .btn {
                        padding: 10px 20px;
                        font-size: 16px;
                        border: none;
                        border-radius: 5px;
                        cursor: pointer;
                        transition: all 0.3s ease;
                    }
                    .btn-retry {
                        background-color: #3498db;
                        color: white;
                    }
                    .btn-home {
                        background-color: #2ecc71;
                        color: white;
                    }
                    .btn:hover {
                        transform: translateY(-2px);
                        box-shadow: 0 2px 5px rgba(0, 0, 0, 0.2);
                    }
                    .testing {
                        display: flex;
                        gap: 20px;
                        padding: 20px;
                    }
                    .question-container {
                        flex: 1;
                        max-width: 70%;
                    }
                    .question-nav {
                        width: 300px;
                        position: sticky;
                        top: 20px;
                        align-self: flex-start;
                        background: white;
                        padding: 20px;
                        border-radius: 10px;
                        box-shadow: 0 0 10px rgba(0, 0, 0, 0.1);
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
                            
                            <div class="result-container">
                                <h1>Kết quả bài thi</h1>
                                <div class="score">
                                    ${score}/${totalQuestions}
                                </div>
                                <div class="btn-container">
                                    <a href="${pageContext.request.contextPath}/practice" class="btn btn-retry">Làm lại</a>
                                    <a href="${pageContext.request.contextPath}/test" class="btn btn-home">Quay về trang chủ</a>
                                </div>
                            </div>

                        </div>
                        <footer><%@ include file="./includes/footer.jsp" %></footer>
                    </div>
                </div>
                <%@ include file="./includes/chatbot.jsp" %>
            </div>
            <script src="https://cdn.jsdelivr.net/npm/bootstrap@5.3.0/dist/js/bootstrap.bundle.min.js"></script>
            <%@ include file="./includes/javascriptInfo.jsp" %>
        </body>
    </html>
