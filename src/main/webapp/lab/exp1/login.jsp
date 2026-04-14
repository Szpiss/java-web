<%@ page contentType="text/html; charset=UTF-8" language="java" %>
<!DOCTYPE html>
<html>
<head>
    <meta charset="UTF-8">
    <title>实验课1 - 登录页面</title>
</head>
<body>
    <h2>用户登录</h2>
    <form action="manger_control.jsp" method="post">
        姓名：<input type="text" name="username"><br><br>
        年龄：<input type="text" name="age"><br><br>
        <input type="submit" value="提交">
        <input type="reset" value="重置">
    </form>

    <hr>
    <jsp:include page="links.jsp" />
</body>
</html>
