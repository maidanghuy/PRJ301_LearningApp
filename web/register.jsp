<%-- 
    Document   : register
    Created on : Mar 4, 2025, 9:00:00 PM
    Author     : macbookpro
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>

    <head>
        <title>Login Page</title>
        <%@ include file="./includes/headInfo.jsp" %>
        <!-- styles.css: Chứa các quy tắc CSS chính của trang -->
        <link rel="stylesheet" href="./assets/CSS/login.css" />
        <link rel="stylesheet" href="https://unpkg.com/bootstrap@5.3.3/dist/css/bootstrap.min.css">
    </head>

    <body>
        <div id="form__login" class="form">
            <div class="auth">
                <div class="auth__header">
                    <div class="auth__header-img">
                        <img src="./assets/images/Rectangle239.svg" alt="Logo">
                    </div>
                    <div class="auth__header-content">
                        <h1 class="auth__header-title">Good <span
                                class="auth__header-title--highlight">Morning</span>!</h1>
                        <p class="auth__header-subtitle">Let's learn English with G-easy every day</p>
                    </div>
                </div>
                <div class="auth__body">
                    <form action="#" method="post">
                        <input type="text" id="formName" name="formName" value="register" hidden>
                        <!-- Form Register -->
                        <div class="auth__input-group">
                            <input type="text" id="fullname" name="fullname" class="auth__input"
                                   placeholder="Họ và tên" required>
                        </div>
                        <div class="auth__input-group">
                            <input type="email" id="email" name="email" class="auth__input" placeholder="Email"
                                   required>
                        </div>
                        <div class="auth__input-group">
                            <input type="tel" id="phone" name="phone" class="auth__input"
                                   placeholder="Số điện thoại" required>
                        </div>
                        <div class="auth__input-group">
                            <input type="text" id="username" name="username" class="auth__input"
                                   placeholder="Tài khoản" required>
                        </div>
                        <div class="auth__input-group">
                            <input type="password" id="password" name="password" class="auth__input"
                                   placeholder="Mật khẩu" required>
                            <span toggle="#password" class="auth__eye-icon" id="toggle-password">
                                <i class="fas fa-eye-slash"></i>
                            </span>
                        </div>
                        <div class="auth__input-group">
                            <input type="password" id="confirm-password" name="confirm-password" class="auth__input"
                                   placeholder="Xác nhận mật khẩu" required>
                        </div>
                        <div class="auth__button-group">
                            <button type="submit" class="auth__button auth__button--login append">Đăng Nhập</button>
                        </div>
                    </form>
                </div>
                <div class="dividerTB"></div>
                <div class="auth__footer">
                    <p class="auth__footer-text">Bạn đã có tài khoản? <a href="login.jsp"
                                                                                class="auth__footer-link">Đăng Nhập</a></p>
                </div>
            </div>
        </div>
        <script src="./assets/JS/login.js"></script>
    </body>

</html>