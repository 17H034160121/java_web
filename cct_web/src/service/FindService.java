package service;

import domain.PageBean;

import java.util.List;
import java.util.Map;

public interface FindService {
    /**
     * 分页条件查询service
     * @param currentPage 当前页数
     * @param rows        一页数据数
     * @param type        数据实体类类型
     * @param condition   分页查询的条件
     * @return            页面实体类对象
     */
    PageBean findByPage(String currentPage, String rows, String type, Map<String, String[]> condition);

    /**
     * 根据id查找数据
     * @param id   数据id
     * @param type 数据实体类类型
     * @return     结果实体类类型,其实只会有一个,传入list是为了不同类型的转换
     */
    List findById(String id, String type);

    /**
     * 根据表名查找数据
     * @param name 表名
     * @return  封装后的结果PageBean对象
     */
    PageBean findByTable(String name);

}
