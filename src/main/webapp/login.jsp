<%@ page contentType="text/html; charset=UTF-8" language="java" %>
<html>
<head>
    <title>用户登录</title>
</head>
<body>
    <h2>用户登录</h2>

    <%
        String msg = (String) request.getAttribute("msg");
        if (msg != null) {
    %>
        <p style="color:red;"><%= msg %></p>
    <%
        }
    %>

    <form action="validate.jsp" method="post">
        用户名：<input type="text" name="username"><br><br>
        密&nbsp;&nbsp;&nbsp;码：<input type="password" name="password"><br><br>
        <input type="submit" value="登录">
        <input type="reset" value="重置">
    </form>
</body>
</html>