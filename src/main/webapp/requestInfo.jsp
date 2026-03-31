<%@ page contentType="text/html; charset=UTF-8" language="java" %>
<!DOCTYPE html>
<html>
<head>
    <meta charset="UTF-8">
    <title>request对象信息</title>
</head>
<body>
    <h2>客户端与服务器信息</h2>
    <p>客户端IP地址：<%= request.getRemoteAddr() %></p>
    <p>请求方式：<%= request.getMethod() %></p>
    <p>请求的URL：<%= request.getRequestURL().toString() %></p>
    <p>服务器名称：<%= request.getServerName() %></p>
    <p>服务器端口号：<%= request.getServerPort() %></p>
    <p>请求的URI：<%= request.getRequestURI() %></p>
    <p>使用的协议：<%= request.getProtocol() %></p>
</body>
</html>
