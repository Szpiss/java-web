# 实验三：Servlet 生命周期与请求处理

本实验完成 Servlet 生命周期观察和基于 GET/POST 的矩形周长、面积计算。

## 实验内容

- 编写 `LifeCycleServelt`，观察 `init()`、`service()`、`doGet()`、`doPost()`、`destroy()` 的执行过程。
- 编写 `GetLengthOrAreaServlet`，根据请求方式完成不同计算。
- GET 请求计算矩形周长。
- POST 请求计算矩形面积。
- 在 `web.xml` 中配置 Servlet 和 URL 映射。

## 主要源码

- `src/main/java/org/example/servlet/LifeCycleServelt.java`
- `src/main/java/org/example/servlet/GetLengthOrAreaServlet.java`
- `src/main/webapp/form.jsp`
- `src/main/webapp/WEB-INF/web.xml`

## 访问地址

```text
http://localhost:8080/sencondTest/form.jsp
http://localhost:8080/sencondTest/lifeCycleServlet
```

## 实验报告

- `experiments/exp3/report/javaweb开发基础课内实验三 2315302125 崔子霖.docx`
