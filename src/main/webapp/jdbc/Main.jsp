<%@ page import="java.util.List" %>
<%@ page import="org.example.jdbc.DbUtil" %>
<%@ page import="org.example.jdbc.LoginService" %>
<%@ page import="org.example.jdbc.User" %>
<%@ page contentType="text/html; charset=UTF-8" language="java" %>
<%
    User loginUser = (User) session.getAttribute("loginUser");
    if (loginUser == null) {
        response.sendRedirect(request.getContextPath() + "/jdbc/Login.html");
        return;
    }

    LoginService loginService = new LoginService();
    List<User> users = loginService.queryUsers();
%>
<!DOCTYPE html>
<html>
<head>
    <meta charset="UTF-8">
    <title>用户管理主界面</title>
</head>
<body>
    <h2>用户管理主界面</h2>
    <p>当前登录用户：<%= loginUser.getUname() %></p>
    <p>当前数据库：<%= DbUtil.getDatabaseName() %></p>

    <h3>用户列表</h3>
    <table border="1" cellpadding="8" cellspacing="0">
        <tr>
            <th>ID</th>
            <th>用户名</th>
            <th>密码</th>
            <th>操作</th>
        </tr>
        <%
            for (User user : users) {
        %>
        <tr>
            <td><%= user.getId() %></td>
            <td><%= user.getUname() %></td>
            <td><%= user.getPwd() %></td>
            <td>
                <a href="<%= request.getContextPath() %>/jdbc/user?action=delete&id=<%= user.getId() %>">删除</a>
            </td>
        </tr>
        <%
            }
        %>
    </table>

    <h3>添加员工信息</h3>
    <form action="<%= request.getContextPath() %>/jdbc/user" method="post">
        <input type="hidden" name="action" value="add">
        用户名：<input type="text" name="uname">
        密码：<input type="text" name="pwd">
        <input type="submit" value="添加">
    </form>

    <h3>根据用户名修改密码</h3>
    <form action="<%= request.getContextPath() %>/jdbc/user" method="post">
        <input type="hidden" name="action" value="update">
        用户名：<input type="text" name="uname">
        新密码：<input type="text" name="pwd">
        <input type="submit" value="修改密码">
    </form>
</body>
</html>
