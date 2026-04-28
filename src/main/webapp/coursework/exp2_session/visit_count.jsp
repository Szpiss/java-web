<%@ page contentType="text/html; charset=UTF-8" language="java" %>
<%
    Integer visitCount = (Integer) application.getAttribute("visitCount");
    if (visitCount == null) {
        visitCount = 1;
    } else {
        visitCount = visitCount + 1;
    }
    application.setAttribute("visitCount", visitCount);
%>
<!DOCTYPE html>
<html>
<head>
    <meta charset="UTF-8">
    <title>课内实验2 - 网站访问计数</title>
</head>
<body>
    <h2>网站访问计数</h2>
    <p>当前网页被访问的次数为：<%= visitCount %></p>
</body>
</html>
