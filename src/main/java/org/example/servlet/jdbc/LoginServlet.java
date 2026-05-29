package org.example.servlet.jdbc;

import java.io.IOException;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import org.example.jdbc.LoginService;
import org.example.jdbc.User;

@WebServlet(urlPatterns = {"/jdbc/login"})
public class LoginServlet extends HttpServlet {
    private final LoginService loginService = new LoginService();

    @Override
    protected void doPost(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        request.setCharacterEncoding("UTF-8");
        String uname = request.getParameter("uname");
        String pwd = request.getParameter("pwd");

        User user = loginService.login(uname, pwd);
        if (user != null) {
            request.getSession().setAttribute("loginUser", user);
            response.sendRedirect(request.getContextPath() + "/jdbc/Main.jsp");
            return;
        }

        request.setAttribute("error", "用户名或密码失败，请重新输入。");
        request.getRequestDispatcher("/jdbc/Login.jsp").forward(request, response);
    }

    @Override
    protected void doGet(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        response.sendRedirect(request.getContextPath() + "/jdbc/Login.html");
    }
}
