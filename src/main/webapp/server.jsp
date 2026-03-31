<%@ page contentType="text/html; charset=UTF-8" language="java" %>
<%
    request.setCharacterEncoding("UTF-8");

    String username = request.getParameter("username");
    String password = request.getParameter("password");

    if (!"zhangsan".equals(username) || !"123".equals(password)) {
        response.sendRedirect("login.jsp");
        return;
    }

    session.setAttribute("loginUser", "张三");
    response.setHeader("Refresh", "3;url=loginSuccess.jsp");
%>
<!DOCTYPE html>
<html>
<head>
    <meta charset="UTF-8">
    <title>登录验证</title>
</head>
<body>
    成功登陆，3秒钟后进入loginSuccess.jsp页面
</body>
</html>
