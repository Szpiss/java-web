package org.example.bigwork.service;

import java.util.List;
import org.example.bigwork.entity.User;
import org.example.bigwork.mapper.UserMapper;
import org.springframework.stereotype.Service;
import org.springframework.util.StringUtils;

@Service
public class UserService {
    private final UserMapper userMapper;

    public UserService(UserMapper userMapper) {
        this.userMapper = userMapper;
    }

    public boolean register(User user) {
        if (!hasText(user.getUsername()) || !hasText(user.getPassword())) {
            return false;
        }
        if (userMapper.findByUsername(user.getUsername()) != null) {
            return false;
        }
        return userMapper.insert(user) > 0;
    }

    public User login(String username, String password) {
        if (!hasText(username) || !hasText(password)) {
            return null;
        }
        return userMapper.findByUsernameAndPassword(username, password);
    }

    public List<User> listUsers() {
        return userMapper.findAll();
    }

    public boolean update(User user) {
        if (user.getId() == null || !hasText(user.getUsername()) || !hasText(user.getPassword())) {
            return false;
        }
        return userMapper.update(user) > 0;
    }

    public boolean delete(Integer id) {
        return id != null && userMapper.deleteById(id) > 0;
    }

    private boolean hasText(String value) {
        return StringUtils.hasText(value);
    }
}
