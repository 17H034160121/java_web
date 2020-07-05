package dao.daoImpl;

import dao.DataDao;
import domain.*;
import org.springframework.jdbc.core.BeanPropertyRowMapper;
import org.springframework.jdbc.core.JdbcTemplate;
import utils.JDBCUtils;

import java.util.ArrayList;
import java.util.List;
import java.util.Map;
import java.util.Set;

public class DataDaoImpl implements DataDao {

    //获取一个jdbcTemplate对象
    private JdbcTemplate jdbcTemplate = new JdbcTemplate(JDBCUtils.getDataSource());


    @Override
    public int findTotalCount(String type, Map<String, String[]> condition) {

        //定义一个模板sql,为了方便之后添加条件
        String sql = "select count(*) from " + type.toLowerCase() + " where 1 = 1";
        StringBuilder stringBuilder = new StringBuilder(sql);

        //遍历map添加条件,组成最终sql
        Set<String> keySet = condition.keySet();
        //存储条件中的value值,用于后面执行语句传参
        List<Object> params = new ArrayList<>();
        for (String key : keySet) {
            //排除不需要的条件
            if ("currentPage".equals(key) || "goTo".equals(key) || "type".equals(key) || "rows".equals(key)) {
                continue;
            }

            //获取条件map中的值,也就是条件内容
            String value = condition.get(key)[0];
            //判断条件是否存在
            if (value != null || !"".equals(value)) {
                stringBuilder.append(" and " + key + " like ? ");
                params.add("%" + value + "%");
            }
        }

        try {
            return jdbcTemplate.queryForObject(stringBuilder.toString(), Integer.class, params.toArray());
        } catch (Exception e) {
            e.printStackTrace();
            return 0;
        }
    }


    @Override
    public List findByPage(int start, int rows, String type, Map<String, String[]> condition) {
        String sql = "select * from " + type.toLowerCase() + " where 1 = 1";
        StringBuilder stringBuilder = new StringBuilder(sql);

        //遍历map添加条件,组成最终sql
        Set<String> keySet = condition.keySet();
        //存储条件中的value值,用于后面执行语句传参
        List<Object> params = new ArrayList<>();
        for (String key : keySet) {
            //排除不需要的条件
            if ("currentPage".equals(key) || "goTo".equals(key) || "type".equals(key) || "rows".equals(key)) {
                continue;
            }

            //获取条件map中的值,也就是条件内容
            String value = condition.get(key)[0];
            //判断条件是否存在
            if (value != null || !"".equals(value)) {
                stringBuilder.append(" and " + key + " like ? ");
                params.add("%" + value + "%");
            }
        }

        //添加sql末尾语句
        stringBuilder.append(" limit ?,?");

        //添加params缺少的参数
        params.add(start);
        params.add(rows);
        System.out.println(params);

        try {
            return jdbcTemplate.query(stringBuilder.toString(), new BeanPropertyRowMapper<>(Class.forName("domain." + type)), params.toArray());
        } catch (ClassNotFoundException e) {
            e.printStackTrace();
            return null;
        }
    }

    @Override
    public void delete(int id, String type) {
        String sql = "delete from " + type.toLowerCase() + " where id = ?";
        jdbcTemplate.update(sql, id);
    }

    @Override
    public void addFood(Food food) {
        String sql = "insert into food values(null,?,?,?,?,?)";
        jdbcTemplate.update(sql, food.getName(), food.getImage(), food.getIntroduce(),
                food.getPrice(), food.getAddress());
    }

    @Override
    public void addView(View view) {
        String sql = "insert into view values(null,?,?,?,?,?)";
        jdbcTemplate.update(sql, view.getName(), view.getImage(), view.getIntroduce(),
                view.getPrice(), view.getAddress());
    }

    @Override
    public void addPerson(Person person) {
        String sql = "insert into person values(null,?,?,?,?,?,?,?)";
        jdbcTemplate.update(sql, person.getName(), person.getSchool(), person.getAcademy(),
                person.getMajor(), person.getInterest(), person.getHonor(), person.getImage());
    }

    @Override
    public void addCulture(Culture culture) {
        String sql = "insert into culture values(null,?,?,?)";
        jdbcTemplate.update(sql, culture.getName(), culture.getIntroduce(), culture.getTime());
    }

    @Override
    public List findById(int id, String type) {
        String sql = "select * from " + type.toLowerCase() + " where id = ?";
        try {
            return jdbcTemplate.query(sql, new BeanPropertyRowMapper<>(Class.forName("domain." + type)), id);
        } catch (ClassNotFoundException e) {
            e.printStackTrace();
            return null;
        }
    }

    @Override
    public void updatePerson(Person person) {
        String sql = "update person set name=?,school=?,academy=?,major=?,interest=?,honor=?,image=? where id = " + person.getId();
        jdbcTemplate.update(sql, person.getName(), person.getSchool(), person.getAcademy(), person.getMajor(),
                person.getInterest(), person.getHonor(), person.getImage());
    }

    @Override
    public void updateView(View view) {
        String sql = "update view set name=?,image=?,introduce=?,price=?,address=? where id = " + view.getId();
        jdbcTemplate.update(sql, view.getName(), view.getImage(), view.getIntroduce(), view.getPrice(), view.getAddress());
    }

    @Override
    public void updateFood(Food food) {
        String sql = "update food set name=?,image=?,introduce=?,price=?,address=? where id = " + food.getId();
        jdbcTemplate.update(sql, food.getName(), food.getImage(), food.getIntroduce(), food.getPrice(), food.getAddress());
    }

    @Override
    public void updateCulture(Culture culture) {
        String sql = "update culture set name=?,introduce=?,time=? where id = " + culture.getId();
        jdbcTemplate.update(sql, culture.getName(), culture.getIntroduce(), culture.getTime());
    }


    @Override
    public List findView(int start, int rows) {
        String sql = "select * from View limit ?,?";
        return jdbcTemplate.query(sql, new BeanPropertyRowMapper<>(View.class), start, rows);
    }

    @Override
    public List findFood(int start, int rows) {
        String sql = "select * from Food limit ?,?";
        return jdbcTemplate.query(sql, new BeanPropertyRowMapper<>(Food.class), start, rows);
    }

    @Override
    public List findCulture(int start, int rows) {
        String sql = "select * from Culture limit ?,?";
        return jdbcTemplate.query(sql, new BeanPropertyRowMapper<>(Culture.class), start, rows);
    }

    @Override
    public List findPerson(int start, int rows) {
        String sql = "select * from Person limit ?,?";
        return jdbcTemplate.query(sql, new BeanPropertyRowMapper<>(Person.class), start, rows);
    }

}
