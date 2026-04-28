<%@ page contentType="text/html; charset=UTF-8" language="java" %>
<%
    request.setCharacterEncoding("UTF-8");

    String id = request.getParameter("id");
    String single1 = request.getParameter("single1");
    String single2 = request.getParameter("single2");
    String judge1 = request.getParameter("judge1");
    String judge2 = request.getParameter("judge2");

    session.setAttribute("exam_id", id);
    session.setAttribute("single1", single1);
    session.setAttribute("single2", single2);
    session.setAttribute("judge1", judge1);
    session.setAttribute("judge2", judge2);

    String showSingle1 = single1 == null ? "未作答" : single1;
    String showSingle2 = single2 == null ? "未作答" : single2;
    String showJudge1 = judge1 == null ? "未作答" : judge1;
    String showJudge2 = judge2 == null ? "未作答" : judge2;
%>
<!DOCTYPE html>
<html>
<head>
    <meta charset="UTF-8">
    <title>课内实验2 - 答题结果</title>
</head>
<body>
    <h2>答题结果</h2>
    <p>考号：<%= id == null ? "" : id %></p>
    <p>单项选择题第1题答案：<%= showSingle1 %></p>
    <p>单项选择题第2题答案：<%= showSingle2 %></p>
    <p>判断题第1题答案：<%= showJudge1 %></p>
    <p>判断题第2题答案：<%= showJudge2 %></p>

    <form action="exam_result.jsp" method="post">
        <input type="submit" value="查看成绩">
    </form>
    <p><a href="exam.jsp">返回重新考试</a></p>
</body>
</html>
