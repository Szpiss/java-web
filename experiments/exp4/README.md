# 实验四：JDBC 用户管理

本实验完成基于 JSP、Servlet 和 JDBC 的用户登录与用户管理功能。

## 实验内容

- 使用 JDBC 连接 MySQL。
- 登录成功后进入用户管理主界面。
- 查询用户列表。
- 添加用户。
- 根据用户名修改密码。
- 根据用户 ID 删除用户。

## 主要源码

- `src/main/java/org/example/jdbc/DbUtil.java`
- `src/main/java/org/example/jdbc/LoginService.java`
- `src/main/java/org/example/jdbc/User.java`
- `src/main/java/org/example/servlet/jdbc/LoginServlet.java`
- `src/main/java/org/example/servlet/jdbc/UserServlet.java`
- `src/main/webapp/jdbc/Login.html`
- `src/main/webapp/jdbc/Login.jsp`
- `src/main/webapp/jdbc/Main.jsp`

## 访问地址

```text
http://localhost:8080/sencondTest/jdbc/Login.html
```

## 默认账号

```text
用户名：admin
密码：123456
```

## 数据库配置

默认数据库为 `javaweb_lab`，默认用户为 `root`、空密码。可以通过以下环境变量覆盖：

```text
JDBC_URL
JDBC_USER
JDBC_PASSWORD
```

## 实验报告

- `experiments/exp4/report/javaweb开发基础课内实验四 2315302125 崔子霖.docx`
