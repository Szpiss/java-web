<%@ page contentType="text/html; charset=UTF-8" language="java" isErrorPage="true" %>
<!DOCTYPE html>
<html>
<head>
    <meta charset="UTF-8">
    <title>实验课1 - 错误处理页面</title>
</head>
<body>
    <h2>页面处理出现异常</h2>
    <p>错误信息：<%= exception == null ? "未知错误" : exception.getMessage() %></p>
    <p><a href="login.jsp">返回登录页面</a></p>
</body>
</html>
