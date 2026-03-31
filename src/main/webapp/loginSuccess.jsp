<%@ page contentType="text/html; charset=UTF-8" language="java" %>
<%
    String loginUser = (String) session.getAttribute("loginUser");
    if (loginUser == null) {
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
    欢迎<%= loginUser %>登陆成功！
</body>
</html>
