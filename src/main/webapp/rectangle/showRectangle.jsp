<%@ page contentType="text/html; charset=UTF-8" language="java" %>
<jsp:useBean id="rectangle" class="org.example.bean.Rectangle" scope="page" />
<jsp:setProperty name="rectangle" property="*" />
<!DOCTYPE html>
<html>
<head>
    <meta charset="UTF-8">
    <title>显示矩形信息</title>
</head>
<body>
    <p>矩形的长是：<%= rectangle.getLength() %></p>
    <p>矩形的宽是：<%= rectangle.getWidth() %></p>
    <p>矩形的面积是：<%= rectangle.getArea() %></p>
    <p>矩形的周长是：<%= rectangle.getPerimeter() %></p>
</body>
</html>
