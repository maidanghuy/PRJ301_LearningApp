<%-- Document : Testing Created on : Mar 9, 2025, 11:43:45 PM Author : Asus --%>

<%@page contentType="text/html" pageEncoding="UTF-8" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ include file="includes/common.jsp" %>

<!DOCTYPE html>
<html lang="en">

    <head>
        <meta charset="UTF-8">
        <meta name="viewport" content="width=device-width, initial-scale=1.0">
        <title>Testing - G-easy Learning</title>
        <base href="${url}/">
        <link rel="stylesheet" href="${css}/index.css">
        <link rel="stylesheet" href="${css}/testing.css">
        <%@ include file="includes/headInfo.jsp" %>

    </head>

    <body>
                <%@ include file="includes/navbar.jsp" %>
        <%@ include file="includes/header.jsp" %>


        <main class="container">
            <div class="row">
                <div class="col-md-8">
                    <div class="card">
                        <div class="card-body">
                            <h2 class="card-title">Test Your Knowledge</h2>
                            <div class="test-content">
                                <c:forEach items="${testList}" var="test">
                                    <div class="test-item">
                                        <h3>${test.title}</h3>
                                        <p>${test.description}</p>
                                        <div class="test-meta">
                                            <span>Level: ${test.level}</span>
                                            <span>Duration: ${test.duration} minutes</span>
                                        </div>
                                        <a href="${url}/view/test/${test.id}" class="btn btn-primary">Start
                                            Test</a>
                                    </div>
                                </c:forEach>
                            </div>
                        </div>
                    </div>
                </div>
                <div class="col-md-4">
                    <div class="card">
                        <div class="card-body">
                            <h3 class="card-title">Test Instructions</h3>
                            <ul class="list-unstyled">
                                <li>Read each question carefully</li>
                                <li>Select the best answer</li>
                                <li>Submit when you're done</li>
                                <li>Review your results</li>
                            </ul>
                        </div>
                    </div>
                </div>
            </div>
        </main>

        <jsp:include page="includes/footer.jsp" />
        <jsp:include page="includes/chatbot.jsp" />
        <jsp:include page="includes/javascriptInfo.jsp" />

        <script src="${js}/testing.js"></script>
    </body>

</html>