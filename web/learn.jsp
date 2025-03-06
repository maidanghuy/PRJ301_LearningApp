<%-- Document : index Created on : Mar 3, 2025, 12:39:54 AM Author : macbookpro --%>

    <%@page contentType="text/html" pageEncoding="UTF-8" %>
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
                                    <ul class="lesson-list">
                                        <li class="lesson lesson--active" data-id="lesson-1" data-video="video1">
                                            <div class="lesson__icon"><i class="fas fa-pause-circle"></i></div>
                                            <div class="lesson__content">
                                                <h3 class="lesson__title">Grammar explanation</h3>
                                                <p class="lesson__description">Conditionals describe the result of a
                                                    certain condition...</p>
                                            </div>
                                            <span class="lesson__progress">0%</span>
                                        </li>
                                        <li class="lesson" data-id="lesson-2" data-video="video2">
                                            <div class="lesson__icon"><i class="fas fa-play-circle"></i></div>
                                            <div class="lesson__content">
                                                <h3 class="lesson__title">Zero conditional</h3>
                                                <p class="lesson__description">We use the zero conditional to talk about
                                                    things that are generally true...</p>
                                            </div>
                                            <span class="lesson__progress">0%</span>
                                        </li>
                                        <li class="lesson" data-id="lesson-3" data-video="video3">
                                            <div class="lesson__icon"><i class="fas fa-play-circle"></i></div>
                                            <div class="lesson__content">
                                                <h3 class="lesson__title">First conditional</h3>
                                                <p class="lesson__description">We use the first conditional when we talk
                                                    about future situations...</p>
                                            </div>
                                            <span class="lesson__progress">0%</span>
                                        </li>
                                        <li class="lesson" data-id="lesson-4" data-video="video4">
                                            <div class="lesson__icon"><i class="fas fa-play-circle"></i></div>
                                            <div class="lesson__content">
                                                <h3 class="lesson__title">Second conditional</h3>
                                                <p class="lesson__description">The second conditional is used to imagine
                                                    present or future situations...</p>
                                            </div>
                                            <span class="lesson__progress">0%</span>
                                        </li>
                                    </ul>
                                </aside>

                                <!-- Main Content -->
                                <main class="content">

                                    <!-- Nội dung bài học -->
                                    <div class="lesson-content lesson-content--active" data-id="lesson-1">
                                        <iframe
                                            src="https://www.youtube.com/embed/2knBFapfOh4?si=l0coOaWZzBw0yaAj"
                                            title="YouTube video player" frameborder="0"
                                            allow="accelerometer; autoplay; clipboard-write; encrypted-media; gyroscope; picture-in-picture; web-share"
                                            referrerpolicy="strict-origin-when-cross-origin" 
                                            style="aspect-ratio: 16 / 9; width: 100%; max-width: 645px;"
                                            allowfullscreen></iframe>

                                        <h2 class="lesson-detail__title">Grammar explanation</h2>
                                        <p class="lesson-detail__description">Conditionals describe the result of a
                                            certain condition...</p>
                                    </div>

                                    <div class="lesson-content" data-id="lesson-2">
                                        <iframe 
                                            src="https://www.youtube.com/embed/Gp0Ql4AXek8?si=5X1BA2XduM0rHY5Z"
                                            title="YouTube video player" frameborder="0"
                                            allow="accelerometer; autoplay; clipboard-write; encrypted-media; gyroscope; picture-in-picture; web-share"
                                            referrerpolicy="strict-origin-when-cross-origin" 
                                            style="aspect-ratio: 16 / 9; width: 100%; max-width: 645px;"
                                            allowfullscreen></iframe>

                                        <h2 class="lesson-detail__title">Zero conditional</h2>
                                        <p class="lesson-detail__description">We use the zero conditional to talk about
                                            things that are generally true...</p>
                                    </div>

                                    <div class="lesson-content" data-id="lesson-3">
                                        <iframe 
                                            src="https://www.youtube.com/embed/EyUQ1QYpw9E?si=WXWANAhrthF5JWuT"
                                            title="YouTube video player" frameborder="0"
                                            allow="accelerometer; autoplay; clipboard-write; encrypted-media; gyroscope; picture-in-picture; web-share"
                                            referrerpolicy="strict-origin-when-cross-origin" 
                                            style="aspect-ratio: 16 / 9; width: 100%; max-width: 645px;"
                                            allowfullscreen></iframe>

                                        <h2 class="lesson-detail__title">First conditional</h2>
                                        <p class="lesson-detail__description">We use the first conditional when we talk
                                            about future situations...</p>
                                    </div>

                                    <div class="lesson-content" data-id="lesson-4">
                                        <iframe 
                                            src="https://www.youtube.com/embed/i_npdZYTJZU?si=m_Hxl7u2TVS4mUXK"
                                            title="YouTube video player" frameborder="0"
                                            allow="accelerometer; autoplay; clipboard-write; encrypted-media; gyroscope; picture-in-picture; web-share"
                                            referrerpolicy="strict-origin-when-cross-origin" 
                                            style="aspect-ratio: 16 / 9; width: 100%; max-width: 645px;"
                                            allowfullscreen></iframe>

                                        <h2 class="lesson-detail__title">Second conditional</h2>
                                        <p class="lesson-detail__description">The second conditional is used to imagine
                                            present or future situations...</p>
                                    </div>

                                    <!-- --------------------------------------------------------------------- -->

                                    <!-- Breadcrumb -->
                                    <nav class="breadcrumb">
                                        <span class="breadcrumb__item">Tài liệu miễn phí</span>
                                        <span class="breadcrumb__item">Tài liệu 01</span>
                                        <span class="breadcrumb__item breadcrumb__item--active">Bài 03</span>
                                    </nav>

                                    <!-- Content -->
                                    <section class="lesson-detail">
                                        <h2 class="lesson-detail__title">Conditionals</h2>
                                        <p class="lesson-detail__description">
                                            The if clause tells you the condition (If you study hard) and the main
                                            clause tells you the result (you will pass your exams)...
                                        </p>
                                    </section>


                                    <!-- Download -->
                                    <button class="button button--primary">
                                        <i class="fas fa-download"></i> Download tài liệu
                                    </button>
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