package org.example.servlet.jdbc;

import java.io.IOException;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import org.example.jdbc.LoginService;
import org.example.jdbc.User;

@WebServlet(urlPatterns = {"/jdbc/user"})
public class UserServlet extends HttpServlet {
    private final LoginService loginService = new LoginService();

    @Override
    protected void doPost(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        request.setCharacterEncoding("UTF-8");
        String action = request.getParameter("action");

        if ("add".equals(action)) {
            loginService.addUser(new User(request.getParameter("uname"), request.getParameter("pwd")));
        } else if ("update".equals(action)) {
            loginService.updatePwdByUname(request.getParameter("uname"), request.getParameter("pwd"));
        }

        response.sendRedirect(request.getContextPath() + "/jdbc/Main.jsp");
    }

    @Override
    protected void doGet(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        String action = request.getParameter("action");
        if ("delete".equals(action)) {
            loginService.delUserById(Integer.parseInt(request.getParameter("id")));
        }
        response.sendRedirect(request.getContextPath() + "/jdbc/Main.jsp");
    }
}
