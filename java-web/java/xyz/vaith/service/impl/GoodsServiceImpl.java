package xyz.vaith.service.impl;

import xyz.vaith.bean.RecommendType;
import xyz.vaith.dao.GoodsDao;
import xyz.vaith.dao.impl.GoodsDaoImpl;
import xyz.vaith.service.GoodsService;

import java.sql.SQLException;
import java.util.List;
import java.util.Map;

public class GoodsServiceImpl implements GoodsService {
    @Override
    public List<Map<String, Object>> getHotList() throws SQLException {
        GoodsDao dao = new GoodsDaoImpl();
        return dao.getGoodsList(RecommendType.Hot);
    }

    @Override
    public List<Map<String, Object>> getNewArrivalList() throws SQLException {
        GoodsDao dao = new GoodsDaoImpl();
        return dao.getGoodsList(RecommendType.New);
    }
}
