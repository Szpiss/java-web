<%@ page contentType="text/html; charset=UTF-8" language="java" %>
<%
    String id = (String) session.getAttribute("exam_id");
    String single1 = (String) session.getAttribute("single1");
    String single2 = (String) session.getAttribute("single2");
    String judge1 = (String) session.getAttribute("judge1");
    String judge2 = (String) session.getAttribute("judge2");

    if (id == null) {
        response.sendRedirect("exam.jsp");
        return;
    }

    int score = 0;
    if ("D".equals(single1)) {
        score += 2;
    }
    if ("B".equals(single2)) {
        score += 2;
    }
    if ("True".equals(judge1)) {
        score += 2;
    }
    if ("False".equals(judge2)) {
        score += 2;
    }
%>
<!DOCTYPE html>
<html>
<head>
    <meta charset="UTF-8">
    <title>课内实验2 - 考试成绩</title>
</head>
<body>
    <h2>考试成绩</h2>
    <p>考号：<%= id %></p>
    <p>本次考试总分：8 分</p>
    <p>你的成绩是：<%= score %> 分</p>
    <p><a href="exam.jsp">继续考试</a></p>
</body>
</html>
