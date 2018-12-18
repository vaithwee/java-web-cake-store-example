package xyz.vaith.dao;

import xyz.vaith.bean.User;

import java.sql.SQLException;

public interface UserDao {
    boolean register(User user) throws SQLException;
    boolean isExistUsername(String username) throws SQLException;
    boolean isExistEmail(String username) throws SQLException;
    User getUser(String username, String password) throws SQLException;
}
