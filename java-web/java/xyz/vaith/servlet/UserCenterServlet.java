package xyz.vaith.servlet;

import xyz.vaith.bean.User;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import java.io.IOException;

@WebServlet(name = "UserCenterServlet", urlPatterns = {"/user/center"})
public class UserCenterServlet extends HttpServlet {
    @Override
    protected void doGet(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
        User user = (User)req.getSession().getAttribute("user");
        if (user==null) {
            req.getRequestDispatcher("/user/login").forward(req, resp);
        } else  {
            req.getRequestDispatcher("/WEB-INF/jsp/userCenter.jsp").forward(req, resp);
        }
    }
}
