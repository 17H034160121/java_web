package utils;

import com.alibaba.druid.pool.DruidDataSourceFactory;

import javax.sql.DataSource;
import java.io.IOException;
import java.io.InputStream;
import java.sql.Connection;
import java.sql.SQLException;
import java.util.Properties;

/*
JDBC的工具类,使用Druid来获取数据库连接池,提供连接
 */
public class JDBCUtils {
    private static DataSource dataSource;

    /**
     * 初始化获取数据库连接池
     */
    static{
        Properties properties = new Properties();
        InputStream resourceAsStream = JDBCUtils.class.getClassLoader().getResourceAsStream("druid.properties");
        try {
            //加载配置信息到properties中
            properties.load(resourceAsStream);
            //使用Druid的数据库连接池工厂获取数据库
            dataSource = DruidDataSourceFactory.createDataSource(properties);
        } catch (IOException e) {
            e.printStackTrace();
        } catch (Exception e) {
            e.printStackTrace();
        }
    }

    /**
     * 获取数据库资源
     * @return  数据库资源
     */
    public static DataSource getDataSource(){
        return dataSource;
    }

    public static Connection getConnection() throws SQLException {
        return dataSource.getConnection();
    }
}
