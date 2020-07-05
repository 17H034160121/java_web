package dao;

import domain.User;
/**
 * 用户操作类的接口
 */
public interface UserDao {
    public User login(User user);
    public int register(User user);

    /**
     * 查找用户名是否重复
     * @param username
     * @return
     */
    int findUser(String username);
}
