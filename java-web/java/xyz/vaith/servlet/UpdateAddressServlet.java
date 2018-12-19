package xyz.vaith.servlet;

import xyz.vaith.bean.User;
import xyz.vaith.service.UserService;
import xyz.vaith.service.impl.UserServiceImpl;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import java.io.IOException;
import java.sql.SQLException;

@WebServlet(name = "UpdateAddressServlet", urlPatterns = {"/address/update"})
public class UpdateAddressServlet extends HttpServlet {
    @Override
    protected void doPost(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
        req.setCharacterEncoding("utf-8");
        String name = req.getParameter("name");
        String phone = req.getParameter("phone");
        String address = req.getParameter("address");
        User user = (User) req.getSession().getAttribute("user");
        user.setName(name);
        user.setAddress(address);
        user.setPhone(phone);
        UserService service = new UserServiceImpl();
        try {
            service.updateAddress(user);
            req.getSession().setAttribute("user", user);
            req.setAttribute("msg", "更新成功");
        } catch (SQLException e) {
            e.printStackTrace();
        }

        req.getRequestDispatcher("/WEB-INF/jsp/userCenter.jsp").forward(req, resp);
    }
}
