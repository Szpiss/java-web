# Java Web 综合大作业

本目录对应综合大作业：基于 Spring Boot、Spring MVC、MyBatis 和 MySQL 的用户管理系统。

## 功能

- 用户注册。
- 用户登录。
- 登录后查看用户列表。
- 修改用户信息。
- 删除用户。
- 退出登录。

## 主要源码

- `src/main/java/org/example/BigWorkApplication.java`
- `src/main/java/org/example/bigwork/controller/UserController.java`
- `src/main/java/org/example/bigwork/service/UserService.java`
- `src/main/java/org/example/bigwork/mapper/UserMapper.java`
- `src/main/java/org/example/bigwork/entity/User.java`
- `src/main/resources/mapper/UserMapper.xml`
- `src/main/webapp/WEB-INF/views/bigwork/login.jsp`
- `src/main/webapp/WEB-INF/views/bigwork/register.jsp`
- `src/main/webapp/WEB-INF/views/bigwork/users.jsp`
- `src/main/webapp/bigwork.css`

## 运行方式

```bash
mvn clean package
java -jar target/sencondTest.war
```

访问地址：

```text
http://localhost:8080/sencondTest/bigwork/login
```

## 默认账号

```text
用户名：崔子霖
密码：2315302125
```

## 数据库说明

默认使用 MySQL 数据库 `javaweb_bigwork`，连接配置位于：

```text
src/main/resources/application.properties
```

默认配置使用 `root` 用户和空密码。如本机 MySQL 配置不同，可修改：

```properties
spring.datasource.username=root
spring.datasource.password=
```

项目启动时会通过 `schema.sql` 和 `data.sql` 初始化用户表和演示账号。

## 作业报告

- `bigwork/report/javaweb开发基础大作业 2315302125 崔子霖.docx`
- `bigwork/report/assets/`
