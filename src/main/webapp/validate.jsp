<%@ page contentType="text/html; charset=UTF-8" language="java" %>
<%
    request.setCharacterEncoding("UTF-8");

    String username = request.getParameter("username");
    String password = request.getParameter("password");

    if ("tom".equals(username) && "jenny".equals(password)) {
%>
        <jsp:forward page="success.jsp" />
<%
    } else {
        request.setAttribute("msg", "用户名或密码错误，请重新登录！");
%>
        <jsp:forward page="login.jsp" />
<%
    }
%>