package xyz.vaith.dao.impl;

import org.apache.commons.dbutils.QueryRunner;
import org.apache.commons.dbutils.handlers.BeanListHandler;
import org.apache.commons.dbutils.handlers.MapListHandler;
import org.apache.commons.dbutils.handlers.ScalarHandler;
import xyz.vaith.bean.Goods;
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

    @Override
    public List<Goods> getGoodsList(int page, int size, int type) throws SQLException {
        QueryRunner runner = new QueryRunner(DBUtil.getDataSource());
        if (type == 0) {
            String sql = "select * from goods limit ?,?";
            return runner.query(sql, new BeanListHandler<Goods>(Goods.class), page * size, size);
        } else {
            String sql = "select * from goods where type_id = ? limit ?,?;";
            return runner.query(sql, new BeanListHandler<Goods>(Goods.class), type, page * size, size);
        }
    }

    @Override
    public int getGoodsCount(int type) throws SQLException {
        QueryRunner runner = new QueryRunner(DBUtil.getDataSource());
        if (type == 0) {
            String sql = "select count(*) from goods";
            return runner.query(sql, new ScalarHandler<Long>()).intValue();
        } else  {
            String sql = "select count(*) from goods where type_id = ?";
            return runner.query(sql, new ScalarHandler<Long>(), type).intValue();
        }
    }

    @Override
    public List<Goods> getRecommendGoodsList(int page, int size, int recommendType) throws SQLException {
        String sql = "select g.id, g.name, g.cover, g.image1, g.image2, g.intro, g.price, g.stock from goods g, recommend r where g.id = r.goods_id and r.type = ? limit ?,?";
        QueryRunner runner = new QueryRunner(DBUtil.getDataSource());
        return runner.query(sql, new BeanListHandler<Goods>(Goods.class), recommendType, page * size, size);
    }

    @Override
    public int getRecommendGoodsCount(int type) throws SQLException {
        String sql = "select count(*) from goods g, recommend r where g.id = r.goods_id and r.type = ?";
        QueryRunner runner = new QueryRunner(DBUtil.getDataSource());
        return runner.query(sql, new ScalarHandler<Long>(), type).intValue();
    }
}
