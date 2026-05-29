<%@ page contentType="text/html; charset=UTF-8" language="java" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE html>
<html>
<head>
    <meta charset="UTF-8">
    <title>大作业 - 用户管理</title>
    <link rel="stylesheet" href="${pageContext.request.contextPath}/bigwork.css">
</head>
<body>
<main class="page wide">
    <section class="panel">
        <div class="topbar">
            <div>
                <h1>用户信息管理</h1>
                <p class="subtitle">当前登录：${loginUser.realName}（${loginUser.studentNo}），用户名：${loginUser.username}</p>
            </div>
            <a class="button secondary" href="${pageContext.request.contextPath}/bigwork/logout">退出</a>
        </div>
        <c:if test="${not empty message}">
            <p class="message">${message}</p>
        </c:if>
        <table class="user-table">
            <thead>
            <tr>
                <th>ID</th>
                <th>用户名</th>
                <th>密码</th>
                <th>姓名</th>
                <th>学号</th>
                <th>修改</th>
                <th>删除</th>
            </tr>
            </thead>
            <tbody>
            <c:forEach var="item" items="${users}">
                <tr>
                    <form action="${pageContext.request.contextPath}/bigwork/users/update" method="post">
                        <td>
                            ${item.id}
                            <input type="hidden" name="id" value="${item.id}">
                        </td>
                        <td><input type="text" name="username" value="${item.username}" required></td>
                        <td><input type="text" name="password" value="${item.password}" required></td>
                        <td><input type="text" name="realName" value="${item.realName}"></td>
                        <td><input type="text" name="studentNo" value="${item.studentNo}"></td>
                        <td><button type="submit" class="small">保存</button></td>
                        <td><a class="danger" href="${pageContext.request.contextPath}/bigwork/users/delete?id=${item.id}">删除</a></td>
                    </form>
                </tr>
            </c:forEach>
            </tbody>
        </table>
        <p class="link-row">
            <a href="${pageContext.request.contextPath}/bigwork/register">继续注册新用户</a>
        </p>
    </section>
</main>
</body>
</html>
