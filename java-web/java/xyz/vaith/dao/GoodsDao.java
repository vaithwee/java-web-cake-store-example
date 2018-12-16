package xyz.vaith.dao;

import xyz.vaith.bean.RecommendType;

import java.sql.SQLException;
import java.util.List;
import java.util.Map;

public interface GoodsDao {
    public List<Map<String, Object>> getGoodsList(RecommendType recommendType) throws SQLException;
}
