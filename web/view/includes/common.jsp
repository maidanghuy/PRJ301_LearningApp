<%@page contentType="text/html" pageEncoding="UTF-8" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>

<%-- Định nghĩa các biến tiện ích --%>
<c:set var="contextPath" value="${pageContext.request.contextPath}" />
<c:set var="assetsPath" value="${contextPath}/assets" />
<c:set var="cssPath" value="${assetsPath}/CSS" />
<c:set var="jsPath" value="${assetsPath}/JS" />
<c:set var="imagesPath" value="${assetsPath}/images" />

<%-- Định nghĩa các hàm tiện ích --%>
<c:set var="url" value="${contextPath}" />
<c:set var="css" value="${cssPath}" />
<c:set var="js" value="${jsPath}" />
<c:set var="img" value="${imagesPath}" />