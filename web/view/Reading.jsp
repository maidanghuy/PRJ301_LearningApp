<%@page contentType="text/html" pageEncoding="UTF-8" %> 
<%@ include file="./includes/common.jsp" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>


<!DOCTYPE html>
<html>
    <head>
        <title>Start Test</title>
        <%@ include file="./includes/headInfo.jsp" %>
        <link rel="stylesheet" href="${css}/index.css" />
        <link rel="stylesheet" href="${css}/starttesting.css" />
        <style>
            .testing {
                display: flex;
                gap: 20px;
                padding: 20px;
            }
            .question-container {
                width: 80%;
            }
            .question-nav {
                width: 20%;
                position: sticky;
                top: 20px;
                align-self: flex-start;
                background: white;
                padding: 15px;
                border-radius: 8px;
                box-shadow: 0 2px 4px rgba(0, 0, 0, 0.1);
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
                    <div class="testing">

                        <div class="question-container">

                            <c:set var="currentPart" value="" />

                            <!-- Danh sách các phần -->
                            <div class="part-navigation">
                                <c:forEach var="question" items="${list}" varStatus="status">
                                    <c:if test="${question.part != currentPart}">
                                        <button
                                            class="part-button"
                                            onclick="showPart('${question.part}')"
                                            >
                                            Part ${question.part}
                                        </button>
                                        <c:set var="currentPart" value="${question.part}" />
                                    </c:if>
                                </c:forEach>
                            </div>

                            <!-- Danh sách câu hỏi -->
                            <c:set var="currentPart" value="" />
                            <c:set var="questionNumber" value="1" />
                            <c:forEach var="question" items="${list}" varStatus="status">
                                <c:if test="${question.part != currentPart}">
                                    <div
                                        class="question-part-container"
                                        id="part${question.part}"
                                        style="display: none"
                                        >
                                        <c:set var="currentPart" value="${question.part}" />
                                    </div>

                                    <c:if test="${question.part != currentPart}">
                                        <img src="${pageContext.request.contextPath}/${question.part}" 
                                             alt="Part ${question.part}" 
                                             style="display: block; max-width: 100%; height: auto;">
                                        <c:set var="currentPart" value="${question.part}" />
                                    </c:if>

                                </c:if>




                                <div class="question-item part${question.part}">
                                    <div class="question-text" id="question${questionNumber}">
                                        <c:if test="${not empty question.part && not empty question.paragraph}">
                                            <div class="paragraph-text">
                                                Part ${question.part}: ${question.paragraph}
                                            </div>
                                        </c:if>
                                        Question ${questionNumber}: ${question.question}
                                    </div>

                                    <ul class="answer-options">
                                        <li class="answer-option">
                                            <input
                                                type="radio"
                                                name="question${questionNumber}"
                                                value="${question.option1}"
                                                />${question.option1}
                                        </li>
                                        <li class="answer-option">
                                            <input
                                                type="radio"
                                                name="question${questionNumber}"
                                                value="${question.option2}"
                                                />${question.option2}
                                        </li>
                                        <li class="answer-option">
                                            <input
                                                type="radio"
                                                name="question${questionNumber}"
                                                value="${question.option3}"
                                                />${question.option3}
                                        </li>
                                        <li class="answer-option">
                                            <input
                                                type="radio"
                                                name="question${questionNumber}"
                                                value="${question.option4}"
                                                />${question.option4}
                                        </li>
                                    </ul>
                                </div>
                                <c:set var="questionNumber" value="${questionNumber + 1}" />
                            </c:forEach>


                        </div>

                        <div class="question-nav">
                            <div>
                                <div id="countdown" class="countdown-timer"></div>
                                <script>
                                    var countdownTime = ${timeTest} * 60;
                                </script>
                                <div class="question-numbers">
                                    <c:forEach var="question" items="${list}" varStatus="status">
                                        <a href="#question${status.index + 1}" 
                                           class="question-link part${question.part}"
                                           onclick="showQuestion(${status.index})">
                                            ${status.index + 1}
                                        </a>
                                    </c:forEach>
                                </div>
                                <button type="button" class="btn-submit" onclick="submitAnswers()">Submit</button>
                            </div>
                        </div>

                    </div>
                    <footer><%@ include file="./includes/footer.jsp" %></footer>
                </div>
            </div>
            <script >
                const urlPath = "${url}";
            </script>
            <script src="https://cdn.jsdelivr.net/npm/bootstrap@5.3.0/dist/js/bootstrap.bundle.min.js"></script>
            <%@ include file="./includes/javascriptInfo.jsp" %>

            <script src="${js}/starttesting.js"></script>
        </div>
    </body>
</html>
