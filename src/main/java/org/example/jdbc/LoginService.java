package org.example.jdbc;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.ArrayList;
import java.util.List;

public class LoginService {

    public User login(String uname, String pwd) {
        DbUtil.initDatabase();
        String sql = "SELECT id, uname, pwd FROM t_user WHERE uname=? AND pwd=?";
        try (Connection conn = DbUtil.getConnection();
             PreparedStatement ps = conn.prepareStatement(sql)) {
            ps.setString(1, uname);
            ps.setString(2, pwd);
            try (ResultSet rs = ps.executeQuery()) {
                if (rs.next()) {
                    return new User(rs.getInt("id"), rs.getString("uname"), rs.getString("pwd"));
                }
            }
        } catch (SQLException ex) {
            throw new IllegalStateException("登录校验失败", ex);
        }
        return null;
    }

    public List<User> queryUsers() {
        DbUtil.initDatabase();
        List<User> users = new ArrayList<User>();
        String sql = "SELECT id, uname, pwd FROM t_user ORDER BY id";
        try (Connection conn = DbUtil.getConnection();
             PreparedStatement ps = conn.prepareStatement(sql);
             ResultSet rs = ps.executeQuery()) {
            while (rs.next()) {
                users.add(new User(rs.getInt("id"), rs.getString("uname"), rs.getString("pwd")));
            }
        } catch (SQLException ex) {
            throw new IllegalStateException("查询用户失败", ex);
        }
        return users;
    }

    public boolean delUserById(int id) {
        DbUtil.initDatabase();
        String sql = "DELETE FROM t_user WHERE id=?";
        try (Connection conn = DbUtil.getConnection();
             PreparedStatement ps = conn.prepareStatement(sql)) {
            ps.setInt(1, id);
            return ps.executeUpdate() > 0;
        } catch (SQLException ex) {
            throw new IllegalStateException("删除用户失败", ex);
        }
    }

    public boolean updatePwdByUname(String uname, String pwd) {
        DbUtil.initDatabase();
        String sql = "UPDATE t_user SET pwd=? WHERE uname=?";
        try (Connection conn = DbUtil.getConnection();
             PreparedStatement ps = conn.prepareStatement(sql)) {
            ps.setString(1, pwd);
            ps.setString(2, uname);
            return ps.executeUpdate() > 0;
        } catch (SQLException ex) {
            throw new IllegalStateException("修改密码失败", ex);
        }
    }

    public boolean addUser(User user) {
        DbUtil.initDatabase();
        String sql = "INSERT INTO t_user (uname, pwd) VALUES (?, ?)";
        try (Connection conn = DbUtil.getConnection();
             PreparedStatement ps = conn.prepareStatement(sql)) {
            ps.setString(1, user.getUname());
            ps.setString(2, user.getPwd());
            return ps.executeUpdate() > 0;
        } catch (SQLException ex) {
            throw new IllegalStateException("添加用户失败", ex);
        }
    }
}
