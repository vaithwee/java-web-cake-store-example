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

@WebServlet(name = "ShoppingCarReduceServlet", urlPatterns = {"/shoppingCar/reduce"})
public class ShoppingCarReduceServlet extends HttpServlet {
    @Override
    protected void doPost(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
        int goodsId = 0;

        try {
            goodsId = Integer.parseInt(req.getParameter("goodsId"));
        } catch (NumberFormatException e) {
            e.printStackTrace();
        }

            ShoppingCar shoppingCar = (ShoppingCar) req.getSession().getAttribute("shoppingCar");
            if (shoppingCar == null) {
                shoppingCar = new ShoppingCar();
            }
            shoppingCar.reduceGooods(goodsId);
            req.getSession().setAttribute("shoppingCar", shoppingCar);
            resp.getWriter().print("ok");

    }
}
