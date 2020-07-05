package utils;

import redis.clients.jedis.Jedis;
import redis.clients.jedis.JedisPool;
import redis.clients.jedis.JedisPoolConfig;

import java.io.IOException;
import java.io.InputStream;
import java.util.Properties;

public class JedisPoolUtils {
    private static JedisPool jedisPool;

    static {
        InputStream resourceAsStream = JedisPoolUtils.class.getClassLoader()
                .getResourceAsStream("jedis.properties");
        Properties properties = new Properties();
        try {
            properties.load(resourceAsStream);
        } catch (IOException e) {
            e.printStackTrace();
        }

        JedisPoolConfig config = new JedisPoolConfig();
        config.setMaxIdle(Integer.parseInt(properties.getProperty("maxIdle")));
        config.setMaxTotal(Integer.parseInt(properties.getProperty("maxTotal")));

        jedisPool = new JedisPool(config,properties.getProperty("host"),
                Integer.parseInt(properties.getProperty("port")));

    }

    public static Jedis getJedis(){
        return jedisPool.getResource();
    }
}
