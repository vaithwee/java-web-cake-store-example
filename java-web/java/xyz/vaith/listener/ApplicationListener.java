package xyz.vaith.listener;

import xyz.vaith.bean.Type;
import xyz.vaith.service.GoodsService;
import xyz.vaith.service.TypeService;
import xyz.vaith.service.impl.GoodsServiceImpl;
import xyz.vaith.service.impl.TypeServiceImpl;

import javax.servlet.ServletContextEvent;
import javax.servlet.ServletContextListener;
import java.sql.SQLException;
import java.util.List;
import java.util.Map;

public class ApplicationListener implements ServletContextListener {
    @Override
    public void contextInitialized(ServletContextEvent sce) {
        TypeService service = new TypeServiceImpl();
        try {
            List<Type> types = service.getAllType();
            sce.getServletContext().setAttribute("types", types);
        } catch (SQLException e) {
            e.printStackTrace();
        }

    }

    @Override
    public void contextDestroyed(ServletContextEvent sce) {

    }
}
