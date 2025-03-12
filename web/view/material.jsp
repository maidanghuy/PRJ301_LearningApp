<%@page contentType="text/html" pageEncoding="UTF-8" %>
    <!DOCTYPE html>
    <html>

    <head>
        <title>Material Page</title>
        <base href="${pageContext.request.contextPath}/">
        <%@ include file="./includes/headInfo.jsp" %>
            <link rel="stylesheet" href="assets/CSS/index.css" />
    </head>

    <body>
        <div class="container-custom">
            <div class="container-left">
                <jsp:include page="includes/navbar.jsp" />
            </div>
            <div class="container-right">
                <div class="main-content">
                    <jsp:include page="includes/header.jsp" />
                    <div class="material">
                        <!-- Nội dung trang material -->
                        <h1>Material Page</h1>
                    </div>
                </div>
                <footer>
                    <jsp:include page="includes/footer.jsp" />
                </footer>
            </div>
        </div>
        <jsp:include page="includes/chatbot.jsp" />
        <jsp:include page="includes/javascriptInfo.jsp" />
        <script src="https://cdn.jsdelivr.net/npm/bootstrap@5.3.0/dist/js/bootstrap.bundle.min.js"></script>
        <script src="assets/JS/index.js"></script>
    </body>

    </html>