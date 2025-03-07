<%-- Document : index Created on : Mar 3, 2025, 12:39:54 AM Author : macbookpro --%>

<%@page contentType="text/html" pageEncoding="UTF-8" %>
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE html>
<html>

    <head>
        <title>Trang chu</title>
        <%@ include file="./includes/headInfo.jsp" %>
        <!-- styles.css: Chứa các quy tắc CSS chính của trang -->
        <link rel="stylesheet" href="./assets/CSS/learn.css" />
        <script src="https://kit.fontawesome.com/a076d05399.js" crossorigin="anonymous"></script>
    </head>

    <body>
        <div class="container-custom">
            <div class="container-left">
                <%@ include file="./includes/navbar.jsp" %>
            </div>
            <div class="container-right">
                <div class="main-content">
                    <%@ include file="./includes/header.jsp" %>
                    <!-- <%@ include file="./includes/main.jsp" %> -->

                    <!-- ---------------------------------------------------------------------- -->
                    <div class="container">
                        <!-- Sidebar -->
                        <aside class="sidebar__child">
                            <div class="sidebar__search">
                                <input type="text" class="sidebar__input" placeholder="Tìm kiếm...">
                                <button class="sidebar__button"><i class="fas fa-search"></i></button>
                            </div>
                            <!------------------------------------------------------------------------>
                            <ul class="lesson-list">
                                <c:forEach items="${requestScope.listContent}" var="c" varStatus="count">
                                    <li class="lesson" data-id="lesson-${count.index + 1}">
                                        <div class="lesson__icon"><i class="fas fa-play-circle"></i></div>
                                        <div class="lesson__content">
                                            <h3 class="lesson__title">${c.title}</h3>
                                            <p class="lesson__description">${c.describe}</p>
                                        </div>
                                        <span class="lesson__progress">0%</span>
                                    </li>
                                </c:forEach>
                            </ul>
                        </aside>
                        <!------------------------------------------------------------------------>
                        <main class="content">
                            <c:forEach items="${requestScope.listContent}" var="c" varStatus="count">
                                <div class="lesson-content ${count.index == 0 ? 'lesson-content--active' : ''}"
                                     data-id="lesson-${count.index + 1}">

                                    <!-- Hiển thị video nếu contentType là Grammar -->
                                    <c:if test="${not empty c.contentType and c.contentType eq 'Grammar' and not empty c.videoPath}">
                                        <iframe src="${c.videoPath}" title="YouTube video player" frameborder="0"
                                                allow="accelerometer; autoplay; clipboard-write; encrypted-media; gyroscope; picture-in-picture; web-share"
                                                referrerpolicy="strict-origin-when-cross-origin" 
                                                style="aspect-ratio: 16 / 9; width: 100%; max-width: 800px;"
                                                allowfullscreen></iframe>
                                        </c:if>

                                    <!-- Hiển thị filePath nếu contentType là Vocabulary, Grammar hoặc Reading -->
                                    <c:if test="${not empty c.contentType and not empty c.filePath 
                                                  and (c.contentType eq 'Vocabulary' or c.contentType eq 'Grammar' or c.contentType eq 'Reading')}">
                                          <div class="lesson-file">
                                              <a href="${c.filePath}" target="_blank">📄 Tải tài liệu</a>
                                          </div>
                                    </c:if>

                                    <h2 class="lesson-detail__title">${c.title}</h2>
                                    <p class="lesson-detail__description">${c.describe}</p>
                                </div>
                            </c:forEach>
                        </main>
                    </div>
                    <!-- ---------------------------------------------------------------------- -->

                </div>
                <footer>
                    <%@ include file="./includes/footer.jsp" %>
                </footer>
            </div>
        </div>
        <script src="https://cdn.jsdelivr.net/npm/bootstrap@5.3.0/dist/js/bootstrap.bundle.min.js"></script>
        <script src="./assets/JS/index.js"></script>
        <script src="assets/JS/learn.js"></script>
    </body>

</html>