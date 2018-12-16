package xyz.vaith.service.impl;

import xyz.vaith.bean.Goods;
import xyz.vaith.bean.Page;
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

    @Override
    public Map<String, Object> getBannerGoods() throws SQLException {
        GoodsDao dao = new GoodsDaoImpl();
        List<Map<String, Object>> goodsList = dao.getGoodsList(RecommendType.Banner);
        return goodsList.get(0);
    }

    @Override
    public Page getGoodsPage(int page, int type) throws SQLException {
        Page p = new Page();
        GoodsDao dao = new GoodsDaoImpl();
        List list = dao.getGoodsList(page, 8, type);
        p.setList(list);
        p.setPage(page);
        int count = dao.getGoodsCount(type);
        p.setTotalCount(count);
        p.setTotalCountAndSize(count, 8);
        return p;
    }
}
