package xyz.vaith.dao;

import xyz.vaith.bean.Goods;
import xyz.vaith.bean.RecommendType;

import java.sql.SQLException;
import java.util.List;
import java.util.Map;

public interface GoodsDao {
    List<Map<String, Object>> getGoodsList(RecommendType recommendType) throws SQLException;
    List<Goods> getGoodsList(int page, int size, int type) throws SQLException;
    int getGoodsCount(int type) throws SQLException;
    List<Goods> getRecommendGoodsList(int page, int size, int recommendType) throws SQLException;
    int getRecommendGoodsCount(int type) throws SQLException;
}
