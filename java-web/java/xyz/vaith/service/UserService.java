package xyz.vaith.service;

import xyz.vaith.bean.User;

import java.sql.SQLException;

public interface UserService {
    boolean register(User user) throws SQLException;
    User login(String username, String password) throws SQLException;
    void updateAddress(User user) throws SQLException;
    void updatePassword(User user) throws SQLException;
}
