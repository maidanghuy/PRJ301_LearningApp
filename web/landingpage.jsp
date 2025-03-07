<%-- Document : index Created on : Mar 3, 2025, 12:39:54 AM Author : macbookpro --%>

<%@page contentType="text/html" pageEncoding="UTF-8" %>
<!DOCTYPE html>
<html>

    <head>
        <title>Home Page</title>
        <%@ include file="./includes/headInfo.jsp" %>
        <!-- styles.css: Chứa các quy tắc CSS chính của trang -->
        <link rel="stylesheet" href="./assets/CSS/index.css" />
    </head>

    <body>

        <div class="container-custom">
            <div class="container-left">
                <%@ include file="./includes/navbar.jsp" %>
            </div>
            <div class="container-right">
                <div class="main-content">
                    <%@ include file="./includes/header.jsp" %>
                    <!-- <div style="width: 100%; height: 100rem; background-color: black"></div> -->
                    <%@ include file="./includes/main.jsp" %>
                </div>
                <footer>
                    <%@ include file="./includes/footer.jsp" %>
                </footer>
            </div>
        </div>
        <%@ include file="./includes/chatbot.jsp" %>
        <!-- Emoji Picker -->
        <script src="https://cdn.jsdelivr.net/npm/emoji-mart@latest/dist/browser.js"></script>
        <script src="https://cdn.jsdelivr.net/npm/bootstrap@5.3.0/dist/js/bootstrap.bundle.min.js"></script>
        <script src="./assets/JS/index.js"></script>
        <script type="module" src="./assets/JS/chatbot.js"></script>


    </body>

</html>