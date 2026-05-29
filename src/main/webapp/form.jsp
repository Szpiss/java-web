<%@ page contentType="text/html; charset=UTF-8" language="java" %>
<!DOCTYPE html>
<html>
<head>
    <meta charset="UTF-8">
    <title>矩形周长和面积计算</title>
</head>
<body>
    <h2>矩形周长和面积计算</h2>

    <h3>GET 请求：计算矩形周长</h3>
    <form action="<%= request.getContextPath() %>/getLengthOrAreaServlet" method="get">
        长：<input type="text" name="length" value="6"><br><br>
        宽：<input type="text" name="width" value="4"><br><br>
        <input type="submit" value="GET方式计算周长">
    </form>

    <hr>

    <h3>POST 请求：计算矩形面积</h3>
    <form action="<%= request.getContextPath() %>/getLengthOrAreaServlet" method="post">
        长：<input type="text" name="length" value="6"><br><br>
        宽：<input type="text" name="width" value="4"><br><br>
        <input type="submit" value="POST方式计算面积">
    </form>

    <hr>
    <p><a href="<%= request.getContextPath() %>/lifeCycleServlet">访问 LifeCycleServelt</a></p>
</body>
</html>
