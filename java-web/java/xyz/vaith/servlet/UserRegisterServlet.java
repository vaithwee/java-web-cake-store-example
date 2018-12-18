package xyz.vaith.servlet;

import org.apache.commons.beanutils.BeanUtils;
import xyz.vaith.bean.User;
import xyz.vaith.service.UserService;
import xyz.vaith.service.impl.UserServiceImpl;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import java.io.IOException;
import java.lang.reflect.InvocationTargetException;
import java.sql.SQLException;

@WebServlet(name = "UserRegisterServlet", urlPatterns = {"/user/register"})
public class UserRegisterServlet extends HttpServlet {
    @Override
    protected void doGet(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
        req.getRequestDispatcher("/WEB-INF/jsp/register.jsp").forward(req, resp);
    }

    @Override
    protected void doPost(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
        req.setCharacterEncoding("utf-8");
        User user = new User();
        try {
            BeanUtils.copyProperties(user, req.getParameterMap());
        } catch (IllegalAccessException e) {
            e.printStackTrace();
        } catch (InvocationTargetException e) {
            e.printStackTrace();
        }
        System.out.println(user);
        UserService service = new UserServiceImpl();
        req.setCharacterEncoding("utf-8");
        try {
            if (service.register(user)) {
                req.setAttribute("msg","注册成功");
                req.getRequestDispatcher("/WEB-INF/jsp/login.jsp").forward(req, resp);
            } else {
                req.setAttribute("msg", "注册失败");
                req.getRequestDispatcher("/WEB-INF/jsp/register.jsp").forward(req, resp);
            }

        } catch (SQLException e) {
            e.printStackTrace();
            req.setAttribute("msg", "注册失败");
            req.getRequestDispatcher("/WEB-INF/jsp/register.jsp").forward(req, resp);
        }

    }
}
