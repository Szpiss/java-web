<%@ page contentType="text/html; charset=UTF-8" language="java" %>
<html>
<head>
    <title>登录成功</title>
</head>
<body>
    <h2>登录成功！</h2>
    <p>欢迎你，<%= request.getParameter("username") %></p>
    <p><a href="login.jsp">返回登录页</a></p>
</body>
</html>