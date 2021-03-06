package xyz.vaith.servlet;

import xyz.vaith.bean.Goods;
import xyz.vaith.bean.ShoppingCar;
import xyz.vaith.service.GoodsService;
import xyz.vaith.service.impl.GoodsServiceImpl;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import java.io.IOException;
import java.sql.SQLException;

@WebServlet(name = "ShoppingCarAddServlet", urlPatterns = {"/shoppingCar/add"})
public class ShoppingCarAddServlet extends HttpServlet {
    @Override
    protected void doPost(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
        int goodsId = 0;

        try {
            goodsId = Integer.parseInt(req.getParameter("goodsId"));
        } catch (NumberFormatException e) {
            e.printStackTrace();
        }
        GoodsService service = new GoodsServiceImpl();
        Goods goods = null;
        try {
            goods = service.getGoodsById(goodsId);
        } catch (SQLException e) {
            e.printStackTrace();
        }

        if (goods.getId() > 0 && goods.getStock() > 0) {
            ShoppingCar shoppingCar = (ShoppingCar) req.getSession().getAttribute("shoppingCar");
            if (shoppingCar == null) {
                shoppingCar = new ShoppingCar();
            }
            shoppingCar.addGoods(goods);
            req.getSession().setAttribute("shoppingCar", shoppingCar);
            resp.getWriter().print("ok");
        } else {
            resp.getWriter().print("fail");
        }


    }
}
