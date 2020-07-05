package service.serviceImpl;

import com.fasterxml.jackson.core.JsonProcessingException;
import com.fasterxml.jackson.databind.ObjectMapper;
import dao.daoImpl.UserDaoImpl;
import dao.UserDao;
import domain.User;
import service.UserService;
import utils.ChangeUtils;

import java.util.HashMap;
import java.util.Map;

/**
 * 用户管理的实现类
 */
public class UserServiceImpl implements UserService {

    private UserDao userDao = new UserDaoImpl();    //用户的工具类

    /**
     * 登陆服务的实体方法
     * @param map  用户输入信息
     * @return  确认的用户实体类
     */
    @Override
    public User login(Map<String, String[]> map) {
        User user = ChangeUtils.changeUser(map);
        return userDao.login(user);
    }

    /**
     * 注册服务的实体方法
     * @param map  用户输入信息
     * @return  确认注册状态
     */
    @Override
    public int register(Map<String, String[]> map) {
        User user = ChangeUtils.changeUser(map);
        return userDao.register(user);
    }

    @Override
    public String findUser(String username) {
        int key = userDao.findUser(username);
        Map<String,Object> map = new HashMap<>();
        map.put("userExsit",key);
        ObjectMapper mapper = new ObjectMapper();
        try {
            return mapper.writeValueAsString(map);
        } catch (JsonProcessingException e) {
            e.printStackTrace();
        }
        return null;
    }
}
