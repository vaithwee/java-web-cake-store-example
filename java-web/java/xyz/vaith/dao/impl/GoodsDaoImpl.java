package xyz.vaith.dao.impl;

import org.apache.commons.dbutils.QueryRunner;
import org.apache.commons.dbutils.handlers.MapListHandler;
import xyz.vaith.bean.RecommendType;
import xyz.vaith.dao.GoodsDao;
import xyz.vaith.util.DBUtil;

import java.sql.SQLException;
import java.util.List;
import java.util.Map;

public class GoodsDaoImpl implements GoodsDao {
    @Override
    public List<Map<String, Object>> getGoodsList(RecommendType recommendType) throws SQLException {
        QueryRunner runner = new QueryRunner(DBUtil.getDataSource());
        String sql = "select g.id, g.name, g.cover, g.image1, g.image2, g.intro, g.price, g.stock, t.id typeid, t.name typename from recommend r, goods g, type t where type = ? and r.goods_id = g.id and g.type_id = t.id;";
        List<Map<String, Object>> maps = runner.query(sql, new MapListHandler(), recommendType.getValue());
        return maps;
    }
}
