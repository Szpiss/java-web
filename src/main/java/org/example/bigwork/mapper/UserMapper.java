package org.example.bigwork.mapper;

import java.util.List;
import org.apache.ibatis.annotations.Param;
import org.example.bigwork.entity.User;

public interface UserMapper {
    int insert(User user);

    User findByUsernameAndPassword(@Param("username") String username, @Param("password") String password);

    User findByUsername(@Param("username") String username);

    List<User> findAll();

    int update(User user);

    int deleteById(@Param("id") Integer id);
}
