package xyz.vaith.servlet;

import xyz.vaith.dao.GoodsDao;
import xyz.vaith.dao.impl.GoodsDaoImpl;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import java.io.IOException;
import java.sql.SQLException;
import java.util.List;
import java.util.Map;

@WebServlet(name = "IndexServlet", urlPatterns = {"/index"})
public class IndexServlet extends HttpServlet {
    @Override
    protected void doGet(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
        GoodsDao dao = new GoodsDaoImpl();
        try {
            List<Map<String, Object>> hotList = dao.getHotList();
            req.setCharacterEncoding("utf-8");
            req.setAttribute("hostList", hotList);
            System.out.println(hotList);
        } catch (SQLException e) {
            e.printStackTrace();
        }
        req.getRequestDispatcher("WEB-INF/jsp/index.jsp").forward(req, resp);
    }
}
