package domain;

/**
 *用户实体类,就是将登陆的用户信息封装成一个实体类,然后进行操作
 */
public class User {
    private int id;             //用户id唯一
    private String username;    //用户名
    private String password;    //密码

    @Override
    public String toString() {
        return "User{" +
                "id=" + id +
                ", username='" + username + '\'' +
                ", password='" + password + '\'' +
                '}';
    }

    public int getId() {
        return id;
    }

    public void setId(int id) {
        this.id = id;
    }

    public String getUsername() {
        return username;
    }

    public void setUsername(String username) {
        this.username = username;
    }

    public String getPassword() {
        return password;
    }

    public void setPassword(String password) {
        this.password = password;
    }
}
