package xyz.vaith.servlet;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import java.io.IOException;

@WebServlet(name = "ShoppingCarAddServlet", urlPatterns = {"/shoppingCar/add"})
public class ShoppingCarAddServlet extends HttpServlet {
    @Override
    protected void doPost(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
        String goodsId = req.getParameter("goodsId");
        System.out.println("goodsId:" + goodsId);
    }
}
