<%@ page contentType="text/html; charset=UTF-8" language="java" %>
<!DOCTYPE html>
<html>
<head>
    <meta charset="UTF-8">
    <title>JDBC 登录</title>
</head>
<body>
    <h2>JDBC 用户登录</h2>
    <%
        String error = (String) request.getAttribute("error");
        if (error != null) {
    %>
    <p style="color:red;"><%= error %></p>
    <%
        }
    %>
    <form action="<%= request.getContextPath() %>/jdbc/login" method="post">
        用户名：<input type="text" name="uname"><br><br>
        密码：<input type="password" name="pwd"><br><br>
        <input type="submit" value="登录">
        <input type="reset" value="重置">
    </form>
</body>
</html>
