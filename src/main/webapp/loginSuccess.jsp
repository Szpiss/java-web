<%@ page contentType="text/html; charset=UTF-8" language="java" %>
<%
    String username = (String) request.getAttribute("username");
    String password = (String) request.getAttribute("password");
    if (username == null || password == null) {
        response.sendRedirect("login.jsp");
        return;
    }
%>
<!DOCTYPE html>
<html>
<head>
    <meta charset="UTF-8">
    <title>登录成功</title>
</head>
<body>
    <h2>登录成功！</h2>
    <p>用户名：<%= username %></p>
    <p>密码：<%= password %></p>
</body>
</html>
