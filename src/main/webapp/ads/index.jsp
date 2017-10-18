<%--
  Created by IntelliJ IDEA.
  User: brandongossen
  Date: 10/18/17
  Time: 12:47 PM
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<html>
<head>
    <title>Title</title>
</head>
<jsp:include page="/partials/head.jsp">
    <jsp:param name="title" value="Welcome to the Adlister!" />
</jsp:include>
<body>
<jsp:include page="/partials/navbar.jsp" />
<div class="container">
    <h1>Check Out The Ads Below!</h1>

    <table class="table">
        <tr>
            <th>ID</th>
            <th>UserID</th>
            <th>Title</th>
            <th>Description</th>
        </tr>
    <c:forEach var="ad" items="${ads}">
        <tr>
        <td>${ad.id}</td>
        <td>${ad.userId}</td>
        <td>${ad.title}</td>
        <td>${ad.description}</td>
        </tr>
    </c:forEach>
    </table>
</div>
</body>
</html>

