<%@ page contentType="text/html; charset=UTF-8" language="java" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE html>
<html>
<head>
    <meta charset="UTF-8">
    <title>大作业 - 用户注册</title>
    <link rel="stylesheet" href="${pageContext.request.contextPath}/bigwork.css">
</head>
<body>
<main class="page">
    <section class="panel">
        <h1>注册用户</h1>
        <p class="subtitle">注册、登录、查询、修改、删除均通过 Spring MVC Controller 调用 UserService，再由 MyBatis 操作数据库。</p>
        <c:if test="${not empty message}">
            <p class="message">${message}</p>
        </c:if>
        <form action="${pageContext.request.contextPath}/bigwork/register" method="post" class="form">
            <label>用户名
                <input type="text" name="username" value="${user.username}" required>
            </label>
            <label>密码
                <input type="text" name="password" value="${user.password}" required>
            </label>
            <label>姓名
                <input type="text" name="realName" value="${user.realName}">
            </label>
            <label>学号
                <input type="text" name="studentNo" value="${user.studentNo}">
            </label>
            <button type="submit">注册</button>
        </form>
        <p class="link-row">
            <a href="${pageContext.request.contextPath}/bigwork/login">返回登录</a>
        </p>
    </section>
</main>
</body>
</html>
