package service.serviceImpl;

import com.fasterxml.jackson.core.JsonProcessingException;
import com.fasterxml.jackson.databind.JsonMappingException;
import com.fasterxml.jackson.databind.ObjectMapper;
import dao.DataDao;
import dao.daoImpl.DataDaoImpl;
import domain.*;
import redis.clients.jedis.Jedis;
import service.FindService;
import utils.JedisPoolUtils;

import java.util.List;
import java.util.Map;

public class FindServiceImpl implements FindService {

    private DataDao dataDao = new DataDaoImpl();

    @Override
    public PageBean findByPage(String _currentPage, String _rows, String _type, Map<String, String[]> condition) {
        //转换数据格式
        int currentPage = Integer.parseInt(_currentPage);
        int rows = Integer.parseInt(_rows);

        //创建PageBean空对象并赋值
        PageBean pageBean = new PageBean();
        //设置pageBean基本参数
        pageBean.setCurrentPage(currentPage);
        pageBean.setRows(rows);

        //调用dao工具类得到数据总数
        int totalCount = dataDao.findTotalCount(_type, condition);
        pageBean.setTotalCount(totalCount);

        //计算开始页面并且查询对应数据,返回为List
        int start = (currentPage - 1) * rows;
        List list = dataDao.findByPage(start, rows, _type, condition);
        pageBean.setList(list);

        //计算总共有多少页面并赋值
        int totalPage = (totalCount % rows) == 0 ? (totalCount / rows) : (totalCount / rows) + 1;
        pageBean.setTotalPage(totalPage);

        return pageBean;


    }

    @Override
    public List findById(String id, String type) {
        return dataDao.findById(Integer.parseInt(id), type);
    }

    @Override
    public PageBean findByTable(String name) {

        //获取Jedis连接并查询表名数据是否存在
        Jedis jedis = JedisPoolUtils.getJedis();
        String table = jedis.get(name);

        //创建PageBean空对象并赋值
        PageBean pageBean = new PageBean();

        //获取json转换对象
        ObjectMapper objectMapper = new ObjectMapper();

        //如果缓存中没有数据就查找数据库并存入缓存
        if (table == null || table.length() == 0) {
            //判断调用的查找方法
            if ("hometownView".equals(name)) {
                pageBean.setList(dataDao.findView(0, 6));
            } else if ("hometownFood".equals(name)) {
                pageBean.setList(dataDao.findFood(0, 6));
            } else if ("hometownCulture".equals(name)) {
                pageBean.setList(dataDao.findCulture(0, 6));
            } else if ("personalIntroduce".equals(name)) {
                pageBean.setList(dataDao.findPerson(0, 1));
            }

            //转换对象为json数据并存入缓存
            try {
                String value = objectMapper.writeValueAsString(pageBean);
                jedis.set(name,value);
            } catch (JsonProcessingException e) {
                e.printStackTrace();
            }finally {
                jedis.close();
            }

            //查找到缓存就直接转换json回对象
        }else {
            try {
                pageBean= objectMapper.readValue(table, PageBean.class);
            } catch (JsonMappingException e) {
                e.printStackTrace();
            } catch (JsonProcessingException e) {
                e.printStackTrace();
            }
        }

        return pageBean;
    }

}
