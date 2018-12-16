import com.mchange.v2.c3p0.ComboPooledDataSource;
import org.apache.commons.dbutils.DbUtils;
import org.apache.commons.dbutils.QueryRunner;
import org.apache.commons.dbutils.handlers.BeanHandler;
import org.apache.commons.dbutils.handlers.MapHandler;
import org.junit.Test;
import xyz.vaith.bean.Goods;
import xyz.vaith.util.DBUtil;


import javax.sql.DataSource;
import java.sql.Connection;
import java.sql.ResultSet;
import java.sql.Statement;
import java.util.Map;

public class C3p0Test {
    @Test
    public void connectDatabase() throws Exception {
        DataSource dataSource = new ComboPooledDataSource();
        Connection connection = dataSource.getConnection();
        Statement statement = connection.createStatement();
        ResultSet resultSet = statement.executeQuery("select * from goods;");
        while (resultSet.next()) {
            System.out.println(resultSet.getString("name"));
        }
    }

    @Test
    public void queryByRunner() throws Exception {
        DataSource dataSource = new ComboPooledDataSource();
        QueryRunner runner = new QueryRunner(dataSource);
        Map map = runner.query("select * from goods where id = 5", new MapHandler());
        System.out.println(map);
    }

    @Test
    public void queryBean() throws Exception {
        DataSource dataSource = new ComboPooledDataSource();
        QueryRunner runner = new QueryRunner(dataSource);
        Goods goods = runner.query("select * from goods where id = 5", new BeanHandler<Goods>(Goods.class));
        System.out.println(goods);
    }

    @Test
    public void testDBUitl() throws Exception {
        QueryRunner runner = new QueryRunner(DBUtil.getDataSource());
        Goods goods = runner.query("select * from goods where id = 5", new BeanHandler<Goods>(Goods.class));
        System.out.println(goods);
    }
}
