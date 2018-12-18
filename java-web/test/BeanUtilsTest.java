import org.apache.commons.beanutils.BeanUtils;
import org.junit.Test;
import xyz.vaith.bean.User;

import java.lang.reflect.InvocationTargetException;
import java.util.HashMap;
import java.util.Map;

public class BeanUtilsTest {
    @Test
    public void copy() {
        User user = new User();
        Map map = new HashMap();
        map.put("username", "username");
        map.put("password", "password");
        map.put("email", "vaithwee@yeah.net");
        try {
            BeanUtils.copyProperties(user, map);
        } catch (IllegalAccessException e) {
            e.printStackTrace();
        } catch (InvocationTargetException e) {
            e.printStackTrace();
        }
        System.out.println(user);
    }
}
