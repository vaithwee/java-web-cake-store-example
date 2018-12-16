package xyz.vaith.dao;

import xyz.vaith.bean.Type;

import java.sql.SQLException;
import java.util.List;

public interface TypeDao {
    List<Type> getAllType() throws SQLException;
}
