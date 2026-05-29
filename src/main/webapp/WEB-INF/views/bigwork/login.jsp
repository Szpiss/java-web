<%@ page contentType="text/html; charset=UTF-8" language="java" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE html>
<html>
<head>
    <meta charset="UTF-8">
    <title>大作业 - 用户登录</title>
    <link rel="stylesheet" href="${pageContext.request.contextPath}/bigwork.css">
</head>
<body>
<main class="page">
    <section class="panel">
        <h1>Spring Boot + Spring + MyBatis 用户管理系统</h1>
        <p class="subtitle">姓名：崔子霖　学号：2315302125</p>
        <c:if test="${not empty message}">
            <p class="message">${message}</p>
        </c:if>
        <form action="${pageContext.request.contextPath}/bigwork/login" method="post" class="form">
            <label>用户名
                <input type="text" name="username" value="${user.username}" required>
            </label>
            <label>密码
                <input type="password" name="password" value="${user.password}" required>
            </label>
            <button type="submit">登录</button>
        </form>
        <p class="link-row">
            <a href="${pageContext.request.contextPath}/bigwork/register">注册新用户</a>
        </p>
    </section>
</main>
</body>
</html>
