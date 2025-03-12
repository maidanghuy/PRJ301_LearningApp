<%-- Document : header Created on : Mar 4, 2025, 8:54:20 PM Author : macbookpro --%>

    <%@page contentType="text/html" pageEncoding="UTF-8" %>
        <div class="">
            <div class="wrapper__header">
                <div class="wrapper__header-icon">
                    <img src="${img}/icon/Shop.svg" alt="Shop SVG">
                    <img src="${img}/icon/Chat.svg" alt="Chat SVG">
                    <img src="${img}/icon/Vector.svg" alt="Vector SVG">
                </div>
                <div class="wrapper__header-login">
                    <c:choose>
                        <c:when test="${not empty sessionScope.user}">
                            <a href="${url}/logout">
                                <img style="width: 40px;
                             height: 40px;
                             border-radius: 100%;
                             " src="${img}/avatar.png" alt="User Avatar" class="user-avatar">
                            </a>
                        </c:when>
                        <c:otherwise>
                            <a class="btn btn-login" href="${url}/login">
                                <span class="text text-white">Login</span>
                            </a>
                        </c:otherwise>
                    </c:choose>
                </div>
            </div>
        </div>