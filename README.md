# sencondTest

一个基于 JSP 和 Maven 的 Java Web 练习项目，适合用于 JSP 基础语法、页面跳转、表单提交与 `request` 对象使用等实验。

## 项目环境

- JDK 8 及以上
- Maven 3.x
- Tomcat 8/9

## 项目结构

```text
sencondTest
├── pom.xml
└── src
    └── main
        └── webapp
            ├── login.jsp
            ├── server.jsp
            ├── loginSuccess.jsp
            ├── requestInfo.jsp
            └── 其他 JSP 实验页面
```

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

4. 启动 Tomcat 后，在浏览器中访问对应页面。

## 本次实验内容

### 1. request 对象信息获取实验

页面：`requestInfo.jsp`

功能：

- 获取客户端 IP 地址
- 获取请求方式
- 获取请求 URL
- 获取服务器名称
- 获取服务器端口号
- 获取请求 URI
- 获取协议名称

访问示例：

```text
http://localhost:8080/sencondTest/requestInfo.jsp
```

### 2. JSP 登录验证实验

页面流程：

`login.jsp` -> `server.jsp` -> `loginSuccess.jsp`

功能说明：

- 在 `login.jsp` 中输入用户名和密码并提交
- 在 `server.jsp` 中进行登录校验
- 正确账号密码为：
  - 用户名：`zhangsan`
  - 密码：`123`
- 验证成功后提示“3秒钟后进入 loginSuccess.jsp 页面”
- 3 秒后自动跳转到 `loginSuccess.jsp`
- 如果输入错误，则重新定向回 `login.jsp`

访问示例：

```text
http://localhost:8080/sencondTest/login.jsp
```

## 说明

- 本项目主要用于 Java Web 实验练习
- 页面使用 JSP 直接编写，便于学习表单提交、请求转发与重定向等基础知识
- 仓库已忽略 IntelliJ IDEA 和 Smart Tomcat 的本地配置文件
