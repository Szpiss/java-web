<%@ page contentType="text/html; charset=UTF-8" language="java" %>
<!DOCTYPE html>
<html>
<head>
    <meta charset="UTF-8">
    <title>课内实验2 - 在线考试</title>
</head>
<body>
    <h2>在线考试系统</h2>
    <form action="exam_ans.jsp" method="post">
        考号：<input type="text" name="id"><br><br>

        <p>
            一、单项选择题（每题2分）
            <br><br>
            1. 下列哪个方法是获取session中关键字是key的对象（ ）。
            <br>
            <input type="radio" name="single1" value="A">A. public void setAttribute(String key, Object obj)<br>
            <input type="radio" name="single1" value="B">B. public void removeAttribute(String key)<br>
            <input type="radio" name="single1" value="C">C. public Enumeration getAttributeNames()<br>
            <input type="radio" name="single1" value="D">D. public Object getAttribute(String key)<br>
        </p>

        <p>
            2. session对象常用于保存（ ）。
            <br>
            <input type="radio" name="single2" value="A">A. 当前浏览器缓存文件<br>
            <input type="radio" name="single2" value="B">B. 同一用户会话期间共享的数据<br>
            <input type="radio" name="single2" value="C">C. 服务器的源代码<br>
            <input type="radio" name="single2" value="D">D. 数据库驱动文件<br>
        </p>

        <p>
            二、判断题（每题2分）
            <br><br>
            1. 同一客户在多个Web服务目录中，所对应的session对象是互不相同的。
            <br>
            <input type="radio" name="judge1" value="True">True
            <input type="radio" name="judge1" value="False">False
        </p>

        <p>
            2. session对象中的数据可以被不同用户共同直接共享。
            <br>
            <input type="radio" name="judge2" value="True">True
            <input type="radio" name="judge2" value="False">False
        </p>

        <input type="submit" value="提交试卷">
        <input type="reset" value="重新填写">
    </form>
</body>
</html>
