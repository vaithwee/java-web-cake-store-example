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

@WebServlet(name = "UserChangePwdServlet", urlPatterns = {"/user/changePwd"})
public class UserChangePwdServlet extends HttpServlet {
    @Override
    protected void doPost(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
        String password = req.getParameter("password");
        String newPassword = req.getParameter("newPassword");
        User user = (User)req.getSession().getAttribute("user");
        if (user == null || !user.getPassword().equals(password)) {
            req.setAttribute("msg","密码错误");
        } else  {
            UserService service = new UserServiceImpl();
            user.setPassword(newPassword);
            try {
                service.updatePassword(user);
                req.setAttribute("msg", "密码修改成功");
                req.getSession().setAttribute("user", user);
            } catch (SQLException e) {
                e.printStackTrace();
            }
        }
        req.getRequestDispatcher("/WEB-INF/jsp/userCenter.jsp").forward(req, resp);
    }
}
