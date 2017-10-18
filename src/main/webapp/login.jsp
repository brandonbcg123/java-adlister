<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>

<c:if test="${param.username.equals('admin') && param.password.equals('password')}">
    <c:redirect url="profile.jsp"></c:redirect>
</c:if>

<!DOCTYPE html>
<html>
<head>
    <%@ include file="partials/styles.jsp" %>
    <title>Login Form</title>
</head>
<body>
<%@ include file="partials/navbar.jsp" %>
<div class="col-xs-12">
    <h1>User Login</h1>
</div>
<form method="POST" action="/login.jsp">
    <div class="col-xs-12">
        <p>
            <label for="username">Username</label>
            <input id="username" name="username" type="text" placeholder="Enter Username Here">
        </p>
    </div>
    <div class="col-xs-12">
        <p>
            <label for="password">Password</label>
            <input id="password" name="password" type="password" placeholder="Enter Password Here">
        </p>
    </div>
    <div class="col-xs-12">
        <p>
            <button type="submit">Login</button>
        </p>
    </div>
</form>
<%@ include file="partials/scripts.jsp" %>
</body>
</html>