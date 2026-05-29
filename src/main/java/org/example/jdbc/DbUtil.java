package org.example.jdbc;

import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.SQLException;
import java.sql.Statement;

public class DbUtil {
    private static final String MYSQL_DRIVER = "com.mysql.cj.jdbc.Driver";
    private static final String MYSQL_URL = "jdbc:mysql://localhost:3306/javaweb_lab"
            + "?useSSL=false&serverTimezone=Asia/Shanghai&characterEncoding=UTF-8";
    private static volatile boolean initialized = false;

    private DbUtil() {
    }

    public static Connection getConnection() throws SQLException {
        try {
            Class.forName(MYSQL_DRIVER);
        } catch (ClassNotFoundException ex) {
            throw new SQLException("MySQL driver not found", ex);
        }
        return DriverManager.getConnection(getMysqlUrl(), getMysqlUser(), getMysqlPassword());
    }

    public static void initDatabase() {
        if (initialized) {
            return;
        }
        synchronized (DbUtil.class) {
            if (initialized) {
                return;
            }
            try (Connection conn = getConnection(); Statement stmt = conn.createStatement()) {
                stmt.executeUpdate("CREATE TABLE IF NOT EXISTS t_user ("
                        + "id INT AUTO_INCREMENT PRIMARY KEY,"
                        + "uname VARCHAR(50) NOT NULL UNIQUE,"
                        + "pwd VARCHAR(50) NOT NULL)");
                stmt.executeUpdate("INSERT INTO t_user (uname, pwd) "
                        + "SELECT 'admin', '123456' WHERE NOT EXISTS "
                        + "(SELECT 1 FROM t_user WHERE uname='admin')");
                stmt.executeUpdate("INSERT INTO t_user (uname, pwd) "
                        + "SELECT 'zhangsan', '123' WHERE NOT EXISTS "
                        + "(SELECT 1 FROM t_user WHERE uname='zhangsan')");
                stmt.executeUpdate("INSERT INTO t_user (uname, pwd) "
                        + "SELECT 'lisi', '888888' WHERE NOT EXISTS "
                        + "(SELECT 1 FROM t_user WHERE uname='lisi')");
                initialized = true;
            } catch (SQLException ex) {
                throw new IllegalStateException("初始化数据库失败", ex);
            }
        }
    }

    public static String getDatabaseName() {
        return "MySQL";
    }

    private static String getMysqlUrl() {
        String value = System.getProperty("jdbc.url");
        if (value == null || value.trim().isEmpty()) {
            value = System.getenv("JDBC_URL");
        }
        return value == null || value.trim().isEmpty() ? MYSQL_URL : value;
    }

    private static String getMysqlUser() {
        String value = System.getProperty("jdbc.user");
        if (value == null || value.trim().isEmpty()) {
            value = System.getenv("JDBC_USER");
        }
        return value == null || value.trim().isEmpty() ? "root" : value;
    }

    private static String getMysqlPassword() {
        String value = System.getProperty("jdbc.password");
        if (value == null) {
            value = System.getenv("JDBC_PASSWORD");
        }
        return value == null ? "" : value;
    }
}
