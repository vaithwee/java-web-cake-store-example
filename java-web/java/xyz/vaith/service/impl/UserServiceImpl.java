package xyz.vaith.service.impl;

import xyz.vaith.bean.User;
import xyz.vaith.dao.UserDao;
import xyz.vaith.dao.impl.UserDaoImpl;
import xyz.vaith.service.UserService;

import java.sql.SQLException;

public class UserServiceImpl implements UserService {
    @Override
    public boolean register(User user) throws SQLException {
        UserDao dao = new UserDaoImpl();
        if (dao.isExistEmail(user.getEmail())) {
            return false;
        }
        if (dao.isExistUsername(user.getUsername())) {
            return false;
        }
        return dao.register(user);
    }

    @Override
    public User login(String username, String password) throws SQLException {
        UserDao dao = new UserDaoImpl();
        return dao.getUser(username, password);
    }
}
