package xyz.vaith.servlet;

import xyz.vaith.bean.Goods;
import xyz.vaith.service.GoodsService;
import xyz.vaith.service.impl.GoodsServiceImpl;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import java.io.IOException;
import java.sql.SQLException;

@WebServlet(name = "GoodsDetailServlet", urlPatterns = {"/goodsDetail"})
public class GoodsDetailServlet extends HttpServlet {
    @Override
    protected void doGet(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
        int id = 0;
        try {
            id = Integer.parseInt(req.getParameter("id"));
        } catch (NumberFormatException e) {
            e.printStackTrace();
        }
        GoodsService service = new GoodsServiceImpl();
        Goods goods = null;
        try {
            goods = service.getGoodsById(id);
        } catch (SQLException e) {
            e.printStackTrace();
        }
        System.out.println(goods);
        req.setAttribute("goods", goods);
        req.setCharacterEncoding("utf-8");
        req.getRequestDispatcher("/WEB-INF/jsp/goodsDetail.jsp").forward(req, resp);
    }
}
