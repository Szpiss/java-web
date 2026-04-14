<%@ page contentType="text/html; charset=UTF-8" language="java" errorPage="errorhandle.jsp" %>
<%
    request.setCharacterEncoding("UTF-8");

    String username = request.getParameter("username");
    int age = Integer.parseInt(request.getParameter("age"));

    if (age >= 18) {
%>
<jsp:forward page="welcome.jsp">
    <jsp:param name="username" value="<%= username %>" />
    <jsp:param name="age" value="<%= String.valueOf(age) %>" />
</jsp:forward>
<%
    } else {
%>
<jsp:forward page="forbid.jsp">
    <jsp:param name="username" value="<%= username %>" />
    <jsp:param name="age" value="<%= String.valueOf(age) %>" />
</jsp:forward>
<%
    }
%>
