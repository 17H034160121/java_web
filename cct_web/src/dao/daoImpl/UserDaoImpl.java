package dao.daoImpl;

import dao.UserDao;
import domain.User;
import org.springframework.jdbc.core.BeanPropertyRowMapper;
import org.springframework.jdbc.core.JdbcTemplate;
import utils.JDBCUtils;

/*
用户相关操作的实现类,也就是操作数据库中User表的类
 */
public class UserDaoImpl implements UserDao {

    //获取一个jdbcTemplate对象
    private JdbcTemplate jdbcTemplate = new JdbcTemplate(JDBCUtils.getDataSource());

    /**
     * 用户登陆的方法
     * @param loginUser 用户输入的实体类信息
     * @return 包含账户全部信息,之后可以考虑对用户进行权限分级
     */
    @Override
    public User login(User loginUser){
        //查询用户账号密码正确性sql语句
        String sql = "SELECT * FROM users where username = ? and password = ?";
        try {
            //使用jdbcTemplate封装的查询,执行sql语句并返回成User对象
            User user = jdbcTemplate.queryForObject(
                    sql, new BeanPropertyRowMapper<>(User.class),
                    loginUser.getUsername(), loginUser.getPassword());
            return user;
        }catch (Exception e){
            //出现空对象异常,也就是没有查询到用户时,打印错误信息并返回空对象
            e.printStackTrace();
            return null;
        }
    }

    /**
     * 用户注册方法
     * @param registerUser 用户输入的实体类信息
     * @return 包含账户全部信息,之后可以考虑对用户进行权限分级
     */
    @Override
    public int register(User registerUser){
        String sql = "INSERT INTO users VALUES(null,?,?)";
        try {
            return jdbcTemplate.update(sql,registerUser.getUsername(),registerUser.getPassword());
        }catch (Exception e){
            e.printStackTrace();
            return 0;
        }
    }

    @Override
    public int findUser(String username) {
        String sql = "select count(*) from users where username = ?";
        Integer integer = jdbcTemplate.queryForObject(sql, Integer.class, username);
        return integer;
    }

}
