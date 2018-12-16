package xyz.vaith.servlet;

import xyz.vaith.bean.Goods;
import xyz.vaith.bean.Page;
import xyz.vaith.bean.Type;
import xyz.vaith.service.GoodsService;
import xyz.vaith.service.impl.GoodsServiceImpl;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import java.io.IOException;
import java.sql.SQLException;
import java.util.List;

@WebServlet(name = "GoodsListServlet", urlPatterns = {"/goodsList"})
public class GoodsListServlet extends HttpServlet {
    protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        int id = 0;
        try {
            id = Integer.parseInt(request.getParameter("typeid"));
        } catch (NumberFormatException e) {
            e.printStackTrace();
        }
        int page = 0;
        try {
            page = Integer.parseInt(request.getParameter("page"));
        } catch (NumberFormatException e) {
            e.printStackTrace();
        }
        GoodsService service = new GoodsServiceImpl();
        try {
            Page goodsPage = service.getGoodsPage(page, id);
            request.setAttribute("page", goodsPage);
        } catch (SQLException e) {
            e.printStackTrace();
        }
        request.setAttribute("typeid", id);
        request.getRequestDispatcher("/WEB-INF/jsp/goodsList.jsp").forward(request, response);
    }
}
