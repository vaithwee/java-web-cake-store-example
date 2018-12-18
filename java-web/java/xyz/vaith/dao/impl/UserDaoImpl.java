package xyz.vaith.dao.impl;

import org.apache.commons.dbutils.QueryRunner;
import org.apache.commons.dbutils.handlers.BeanHandler;
import org.apache.commons.dbutils.handlers.ScalarHandler;
import xyz.vaith.bean.User;
import xyz.vaith.dao.UserDao;
import xyz.vaith.util.DBUtil;

import java.sql.SQLException;

public class UserDaoImpl implements UserDao {
    @Override
    public boolean register(User user) throws SQLException {
        String sql = "insert into user (username, email, password, name, phone, address, isadmin, isvalidate) values (?,?,?,?,?,?,?,?)";
        QueryRunner runner = new QueryRunner(DBUtil.getDataSource());
        int update = runner.update(sql, user.getUsername(), user.getEmail(), user.getPassword(), user.getName(), user.getPhone(), user.getAddress(), user.isIsadmin(), user.isIsvalidate());
        return update>0;
    }

    @Override
    public boolean isExistUsername(String username) throws SQLException {
        String sql = "select count(*) from user where username = ?";
        QueryRunner runner = new QueryRunner(DBUtil.getDataSource());
         return runner.query(sql, new ScalarHandler<Long>(), username).intValue() > 0;
    }

    @Override
    public boolean isExistEmail(String email) throws SQLException {
        String sql = "select count(*) from user where email = ?";
        QueryRunner runner = new QueryRunner(DBUtil.getDataSource());
        return runner.query(sql, new ScalarHandler<Long>(), email).intValue() > 0;
    }

    @Override
    public User getUser(String username, String password) throws SQLException {
        String sql = "select * from user where username = ? and password = ?";
        QueryRunner runner = new QueryRunner(DBUtil.getDataSource());
        return runner.query(sql, new BeanHandler<User>(User.class), username, password);
    }
}
