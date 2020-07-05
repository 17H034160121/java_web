package service;

import domain.User;

import java.util.Map;

/**
 * 用户管理的业务接口
 */
public interface UserService {
    /**
     * 登陆接口方法
     * @param map  用户输入信息
     * @return  确认的用户实体类
     */
    public User login(Map<String, String[]> map);

    /**
     * 注册接口方法
     * @param map  用户输入信息
     * @return  确认注册状态
     */
    public int register(Map<String, String[]> map);

    /**
     * 根据用户名查找
     * @param username 用户名
     * @return  json格式的用户是否存在数据
     */
    String findUser(String username);
}
