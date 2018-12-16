package xyz.vaith.dao.impl;

import org.apache.commons.dbutils.QueryRunner;
import org.apache.commons.dbutils.handlers.BeanListHandler;
import xyz.vaith.bean.Type;
import xyz.vaith.dao.TypeDao;
import xyz.vaith.util.DBUtil;

import java.sql.SQLException;
import java.util.List;

public class TypeDaoImpl implements TypeDao {
    @Override
    public List<Type> getAllType() throws SQLException {
        QueryRunner runner = new QueryRunner(DBUtil.getDataSource());
        String sql = "select * from type;";
        List<Type> types = runner.query(sql, new BeanListHandler<Type>(Type.class));
        return types;
    }
}
