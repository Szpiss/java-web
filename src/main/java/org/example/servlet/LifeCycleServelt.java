package org.example.servlet;

import java.io.IOException;
import java.io.PrintWriter;
import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

public class LifeCycleServelt extends HttpServlet {
    private int visitCount = 0;

    @Override
    public void init() throws ServletException {
        System.out.println("LifeCycleServelt init() 执行");
    }

    @Override
    protected void service(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        visitCount++;
        System.out.println("LifeCycleServelt service() 执行，第 " + visitCount + " 次请求");
        super.service(request, response);
    }

    @Override
    protected void doGet(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        writeResponse(response, "doGet() 方法执行", "GET");
    }

    @Override
    protected void doPost(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        writeResponse(response, "doPost() 方法执行", "POST");
    }

    @Override
    public void destroy() {
        System.out.println("LifeCycleServelt destroy() 执行");
    }

    private void writeResponse(HttpServletResponse response, String message, String method)
            throws IOException {
        response.setContentType("text/html;charset=UTF-8");
        PrintWriter out = response.getWriter();
        out.println("<!DOCTYPE html>");
        out.println("<html><head><meta charset=\"UTF-8\"><title>Servlet 生命周期</title></head>");
        out.println("<body>");
        out.println("<h2>Servlet 生命周期测试</h2>");
        out.println("<p>" + message + "</p>");
        out.println("<p>本次请求方式：" + method + "</p>");
        out.println("<p>当前 Servlet 已处理请求次数：" + visitCount + "</p>");
        out.println("</body></html>");
    }
}
