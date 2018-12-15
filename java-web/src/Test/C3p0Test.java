import com.mchange.v2.c3p0.ComboPooledDataSource;
import org.apache.commons.dbutils.QueryRunner;
import org.apache.commons.dbutils.handlers.MapHandler;
import org.junit.Test;


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
}
