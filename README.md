# sencondTest

一个基于 JSP、Servlet 和 Maven 的 Java Web 练习项目，当前已经按课程用途分为 `课内实验` 和 `实验课` 两组，便于在 GitHub 中分类查看和后续继续补充。

## 运行环境

- JDK 8 及以上
- Maven 3.x
- Tomcat 8/9

## 运行方式

1. 克隆仓库：

```bash
git clone git@github.com:Szpiss/java-web.git
cd java-web
```

2. 打包项目：

```bash
mvn clean package
```

3. 将生成的 `target/sencondTest.war` 部署到 Tomcat。

4. 启动 Tomcat 后在浏览器中访问对应实验页面。

## 仓库分组

### 1. 课内实验

当前已整理：

- 课内实验 1：Servlet 登录验证实验

说明文档：

- `coursework/exp1/README.md`
- `coursework/exp1/report/README.md`

相关代码：

- `src/main/java/org/example/servlet/LoginServlet.java`
- `src/main/webapp/login.jsp`
- `src/main/webapp/loginSuccess.jsp`

访问地址：

```text
http://localhost:8080/sencondTest/login.jsp
```

### 2. 实验课

当前已整理：

- 实验课 1：JSP 应用实验

说明文档：

- `lab/exp1/README.md`
- `lab/exp1/report/README.md`

相关代码：

- `src/main/webapp/lab/exp1/login.jsp`
- `src/main/webapp/lab/exp1/manger_control.jsp`
- `src/main/webapp/lab/exp1/welcome.jsp`
- `src/main/webapp/lab/exp1/forbid.jsp`
- `src/main/webapp/lab/exp1/errorhandle.jsp`
- `src/main/webapp/lab/exp1/links.jsp`

访问地址：

```text
http://localhost:8080/sencondTest/lab/exp1/login.jsp
```

## 已完成实验

### request 对象信息获取实验

页面：`requestInfo.jsp`

功能：

- 获取客户端 IP 地址
- 获取请求方式
- 获取请求 URL
- 获取服务器名称
- 获取服务器端口号
- 获取请求 URI
- 获取协议名称

访问地址：

```text
http://localhost:8080/sencondTest/requestInfo.jsp
```

### JSP 登录验证实验

页面流程：

`login.jsp` -> `server.jsp` -> `loginSuccess.jsp`

访问地址：

```text
http://localhost:8080/sencondTest/login.jsp
```

### JSP + Servlet 登录验证实验

页面流程：

`login.jsp` -> `LoginServlet` -> `loginSuccess.jsp`

Servlet 映射：

`/loginServlet`

## 说明

- 本项目主要用于 Java Web 课程练习与实验提交
- 仓库已按 `课内实验 / 实验课` 做了分组整理
- 报告目录也已分开：`coursework/exp1/report/` 对应课内实验，`lab/exp1/report/` 对应实验课
- 本地 IDE 和 Smart Tomcat 配置文件已忽略，不会提交到远程仓库
