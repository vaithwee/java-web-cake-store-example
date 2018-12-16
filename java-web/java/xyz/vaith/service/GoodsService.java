package xyz.vaith.service;

import xyz.vaith.bean.Goods;
import xyz.vaith.bean.Page;

import java.sql.SQLException;
import java.util.List;
import java.util.Map;

public interface GoodsService {
    List<Map<String, Object>> getHotList() throws SQLException;
    List<Map<String, Object>> getNewArrivalList() throws SQLException;
    Map<String, Object> getBannerGoods() throws SQLException;
    Page getGoodsPage(int page, int type) throws SQLException;
}
