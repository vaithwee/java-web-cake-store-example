package xyz.vaith.service;

import xyz.vaith.bean.Type;

import java.sql.SQLException;
import java.util.List;

public interface TypeService {
    List<Type> getAllType() throws SQLException;
    Type getType(int id) throws SQLException;
}
