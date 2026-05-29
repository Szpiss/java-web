# Java Web 课程实验项目

本仓库用于整理 Java Web 课程的四个实验项目和一个综合大作业。项目采用 Maven 标准 Web 工程结构，所有可运行源码统一放在 `src/main` 下，实验说明、报告和截图素材按目录独立归档。

## 目录结构

```text
.
├── experiments/
│   ├── exp1/        # 实验一：JSP 应用
│   ├── exp2/        # 实验二：session 与 application 内置对象
│   ├── exp3/        # 实验三：Servlet 生命周期与请求处理
│   └── exp4/        # 实验四：JDBC 用户管理
├── bigwork/         # Java Web 综合大作业
├── src/main/java/   # Java 源码
├── src/main/webapp/ # JSP、静态页面和 WEB-INF 配置
└── src/main/resources/
```

## 实验清单

| 目录 | 内容 | 主要访问地址 | 报告 |
| --- | --- | --- | --- |
| `experiments/exp1` | JSP 登录、转发、错误处理和页面包含 | `/lab/exp1/login.jsp` | `experiments/exp1/report/` |
| `experiments/exp2` | session 在线考试和 application 访问计数 | `/coursework/exp2_session/exam.jsp` | `experiments/exp2/report/` |
| `experiments/exp3` | Servlet 生命周期、GET/POST 请求、矩形计算 | `/form.jsp`、`/lifeCycleServlet` | `experiments/exp3/report/` |
| `experiments/exp4` | JDBC 登录、用户查询、添加、修改、删除 | `/jdbc/Login.html` | `experiments/exp4/report/` |
| `bigwork` | Spring Boot + MyBatis 用户管理系统 | `/bigwork/login` | `bigwork/report/` |

## 运行环境

- JDK 8 及以上
- Maven 3.x
- Tomcat 8/9，或直接运行 Spring Boot 打包后的 war
- 实验四和大作业需要本地 MySQL

## 运行方式

打包项目：

```bash
mvn clean package
```

传统 JSP/Servlet 实验可将生成的 `target/sencondTest.war` 部署到 Tomcat 后访问：

```text
http://localhost:8080/sencondTest/
```

综合大作业也可以直接运行：

```bash
java -jar target/sencondTest.war
```

访问：

```text
http://localhost:8080/sencondTest/bigwork/login
```

## 数据库说明

实验四默认连接 MySQL 数据库 `javaweb_lab`，可通过环境变量或 JVM 参数调整：

```text
JDBC_URL
JDBC_USER
JDBC_PASSWORD
```

大作业默认连接 MySQL 数据库 `javaweb_bigwork`，配置位于：

```text
src/main/resources/application.properties
```

`schema.sql` 和 `data.sql` 会初始化大作业所需用户表和演示数据。

## 说明

- `experiments/` 和 `bigwork/` 是提交归档目录，包含 README、报告和截图素材。
- `src/main` 是统一可运行源码目录，README 中已列出各实验对应源码。
- `target/`、IDE 配置、Smart Tomcat 配置和系统临时文件已通过 `.gitignore` 排除。
