package org.example.servlet;

import java.io.IOException;
import java.io.PrintWriter;
import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

public class GetLengthOrAreaServlet extends HttpServlet {

    @Override
    protected void doGet(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        double length = parseDouble(request.getParameter("length"));
        double width = parseDouble(request.getParameter("width"));
        double perimeter = 2 * (length + width);
        writeResult(response, "GET", length, width, "矩形周长", perimeter);
    }

    @Override
    protected void doPost(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        request.setCharacterEncoding("UTF-8");
        double length = parseDouble(request.getParameter("length"));
        double width = parseDouble(request.getParameter("width"));
        double area = length * width;
        writeResult(response, "POST", length, width, "矩形面积", area);
    }

    private double parseDouble(String value) {
        if (value == null || value.trim().isEmpty()) {
            return 0;
        }
        return Double.parseDouble(value.trim());
    }

    private void writeResult(HttpServletResponse response, String method, double length,
            double width, String resultName, double result) throws IOException {
        response.setContentType("text/html;charset=UTF-8");
        PrintWriter out = response.getWriter();
        out.println("<!DOCTYPE html>");
        out.println("<html><head><meta charset=\"UTF-8\"><title>矩形计算结果</title></head>");
        out.println("<body>");
        out.println("<h2>矩形计算结果</h2>");
        out.println("<p>请求方式：" + method + "</p>");
        out.println("<p>长：" + length + "</p>");
        out.println("<p>宽：" + width + "</p>");
        out.println("<p>" + resultName + "：" + result + "</p>");
        out.println("<p><a href=\"form.jsp\">返回表单页面</a></p>");
        out.println("</body></html>");
    }
}
