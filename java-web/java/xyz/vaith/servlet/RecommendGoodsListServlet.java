package xyz.vaith.servlet;

import xyz.vaith.bean.Page;
import xyz.vaith.bean.RecommendType;
import xyz.vaith.service.GoodsService;
import xyz.vaith.service.impl.GoodsServiceImpl;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import java.io.IOException;
import java.sql.SQLException;

@WebServlet(name = "RecommendGoodsListServlet", urlPatterns = {"/recommendGoodsList"})
public class RecommendGoodsListServlet extends HttpServlet {
    @Override
    protected void doGet(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
        int typeId = Integer.parseInt(req.getParameter("typeid"));
        int page = 0;
        try {
            page = Integer.parseInt(req.getParameter("page"));
        } catch (NumberFormatException e) {
            e.printStackTrace();
        }
        GoodsService service = new GoodsServiceImpl();
        try {
            Page p = service.getRecommendGoodsList(page, RecommendType.values()[typeId-1]);
            req.setCharacterEncoding("utf-8");
            req.setAttribute("page", p);
        } catch (SQLException e) {
            e.printStackTrace();
        }
        req.setAttribute("typeid", typeId);
        req.getRequestDispatcher("WEB-INF/jsp/recommendGoodsList.jsp").forward(req, resp);

    }
}
