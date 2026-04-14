<%@ page contentType="text/html; charset=UTF-8" language="java" errorPage="errorhandle.jsp" %>
<%
    String username = request.getParameter("username");
    int age = Integer.parseInt(request.getParameter("age"));
%>
<!DOCTYPE html>
<html>
<head>
    <meta charset="UTF-8">
    <title>实验课1 - 禁止访问</title>
</head>
<body>
    <h2>禁止访问</h2>
    <p><%= username %>，您好！</p>
    <p>您的年龄是 <%= age %> 岁，未满 18 岁，暂时不能进入系统。</p>

    <hr>
    <jsp:include page="links.jsp" />
</body>
</html>
