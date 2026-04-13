<%@ page contentType="text/html; charset=UTF-8" language="java" %>
<!DOCTYPE html>
<html>
<head>
    <meta charset="UTF-8">
    <title>登录页面</title>
</head>
<body>
    <%
        String error = request.getParameter("error");
        if ("incomplete".equals(error)) {
    %>
    <p style="color:red;">用户名和密码不能为空，请重新输入。</p>
    <%
        } else if ("invalid".equals(error)) {
    %>
    <p style="color:red;">用户名或密码错误，请重新登录。</p>
    <%
        }
    %>

    <form action="<%= request.getContextPath() %>/loginServlet" method="post">
        姓名：<input type="text" name="username"><br><br>
        密码：<input type="password" name="password"><br><br>
        <input type="submit" value="提交">
    </form>
</body>
</html>
