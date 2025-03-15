<%@page contentType="text/html" pageEncoding="UTF-8" %> <%@ include
    file="./includes/common.jsp" %> <%@ taglib
        uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>

        <!DOCTYPE html>
        <html>
            <head>
                <title>Start Test</title>
                <%@ include file="./includes/headInfo.jsp" %>
                <link rel="stylesheet" href="${css}/index.css" />
                <link rel="stylesheet" href="${css}/starttesting.css" />
            </head>
            <body>
                <div class="container-custom">
                    <div class="container-left">
                        <%@ include file="./includes/navbar.jsp" %>
                    </div>
                    <div class="container-right">
                        <div class="main-content">
                            <%@ include file="./includes/header.jsp" %>

                            <div class="testing">
                                <div class="question-container">

                                    <ul class="question-list">
                                        <li class="question-item" id="question1">
                                            <div class="question-text">Câu hỏi 1: Nội dung câu hỏi 1</div>
                                            <ul class="answer-options">
                                                <li class="answer-option">
                                                    <input type="radio" name="question1" value="1" />Lựa chọn
                                                    1
                                                </li>
                                                <li class="answer-option">
                                                    <input type="radio" name="question1" value="2" />Lựa chọn
                                                    2
                                                </li>
                                                <li class="answer-option">
                                                    <input type="radio" name="question1" value="3" />Lựa chọn
                                                    3
                                                </li>
                                            </ul>
                                        </li>
                                        <li class="question-item" id="question2">
                                            <div class="question-text">Câu hỏi 2: Nội dung câu hỏi 2</div>
                                            <ul class="answer-options">
                                                <li class="answer-option">
                                                    <input type="radio" name="question2" value="1" />Lựa chọn
                                                    1
                                                </li>
                                                <li class="answer-option">
                                                    <input type="radio" name="question2" value="2" />Lựa chọn
                                                    2
                                                </li>
                                                <li class="answer-option">
                                                    <input type="radio" name="question2" value="3" />Lựa chọn
                                                    3
                                                </li>
                                            </ul>
                                        </li>
                                        <li class="question-item" id="question3">
                                            <div class="question-text">Câu hỏi 3: Nội dung câu hỏi 3</div>
                                            <ul class="answer-options">
                                                <li class="answer-option">
                                                    <input type="radio" name="question3" value="1" />Lựa chọn
                                                    1
                                                </li>
                                                <li class="answer-option">
                                                    <input type="radio" name="question3" value="2" />Lựa chọn
                                                    2
                                                </li>
                                                <li class="answer-option">
                                                    <input type="radio" name="question3" value="3" />Lựa chọn
                                                    3
                                                </li>
                                            </ul>
                                        </li>
                                        <li class="question-item" id="question4">
                                            <div class="question-text">Câu hỏi 4: Nội dung câu hỏi 4</div>
                                            <ul class="answer-options">
                                                <li class="answer-option">
                                                    <input type="radio" name="question4" value="1" />Lựa chọn
                                                    1
                                                </li>
                                                <li class="answer-option">
                                                    <input type="radio" name="question4" value="2" />Lựa chọn
                                                    2
                                                </li>
                                                <li class="answer-option">
                                                    <input type="radio" name="question4" value="3" />Lựa chọn
                                                    3
                                                </li>
                                            </ul>
                                        </li>
                                        <li class="question-item" id="question5">
                                            <div class="question-text">Câu hỏi 5: Nội dung câu hỏi 5</div>
                                            <ul class="answer-options">
                                                <li class="answer-option">
                                                    <input type="radio" name="question5" value="1" />Lựa chọn
                                                    1
                                                </li>
                                                <li class="answer-option">
                                                    <input type="radio" name="question5" value="2" />Lựa chọn
                                                    2
                                                </li>
                                                <li class="answer-option">
                                                    <input type="radio" name="question5" value="3" />Lựa chọn
                                                    3
                                                </li>
                                            </ul>
                                        </li>
                                    </ul>
                                </div>




                                <div class="question-nav">
                                    <div>
                                        <div id="countdown" class="countdown-timer"></div>
                                        <div class="question-numbers">
                                            <a href="#question1" class="question-link">1</a>
                                            <a href="#question2" class="question-link">2</a>
                                            <a href="#question3" class="question-link">3</a>
                                            <a href="#question4" class="question-link">4</a>
                                            <a href="#question5" class="question-link">5</a>
                                        </div>
                                        <button class="btn-submit">Submit</button>
                                    </div>
                                </div>
                            </div>

                            <footer><%@ include file="./includes/footer.jsp" %></footer>
                        </div>
                    </div>
                    <%@ include file="./includes/chatbot.jsp" %>
                    <script src="https://cdn.jsdelivr.net/npm/bootstrap@5.3.0/dist/js/bootstrap.bundle.min.js"></script>
                    <%@ include file="./includes/javascriptInfo.jsp" %>
                    <script src="${js}/starttesting.js"></script>
            </body>
        </html>
