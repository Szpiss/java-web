<%@ page contentType="text/html; charset=UTF-8" language="java" %>
<%!
    int count = 0;
%>
<%
    count++;
%>
<html>
<head>
    <title>简单计数器</title>
</head>
<body>
    <h2>欢迎访问本网站！</h2>
    <h2>您是第<%= count %>个访问本站的客户。</h2>
</body>
</html>