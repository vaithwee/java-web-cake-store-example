package xyz.vaith.service;

import java.sql.SQLException;
import java.util.List;
import java.util.Map;

public interface GoodsService {
    public List<Map<String, Object>> getHotList() throws SQLException;
    public List<Map<String, Object>> getNewArrivalList() throws SQLException;
}
