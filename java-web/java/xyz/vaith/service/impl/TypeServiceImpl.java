package xyz.vaith.service.impl;

import xyz.vaith.bean.Type;
import xyz.vaith.dao.TypeDao;
import xyz.vaith.dao.impl.TypeDaoImpl;
import xyz.vaith.service.TypeService;

import java.sql.SQLException;
import java.util.List;

public class TypeServiceImpl implements TypeService {
    @Override
    public List<Type> getAllType() throws SQLException {
        TypeDao dao = new TypeDaoImpl();
        return dao.getAllType();
    }
}
