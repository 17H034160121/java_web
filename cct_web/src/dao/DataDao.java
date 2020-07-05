package dao;

import domain.*;

import java.util.List;
import java.util.Map;

/**
 * 数据操作的接口
 */
public interface DataDao {
    /**
     * 获取某类型实体类对应表的数据总数
     * @param type  实体类类型
     * @param condition 查询总数的条件
     * @return  表中数据总数
     */
    int findTotalCount(String type, Map<String, String[]> condition);

    /**
     * 分页查询表中数据
     * @param start 开始位置
     * @param rows  一页数据量
     * @param type  实体类类型,用来获取实体类对应的表
     * @param condition 查询分页数据的条件
     * @return  实体类的数据List集合
     */
    List findByPage(int start, int rows, String type, Map<String, String[]> condition);

    /**
     * 删除数据
     * @param id 需要删除数据的id,也就是主键
     * @param type 数据的实体类类型,用来获取对应表
     */
    void delete(int id, String type);

    /**
     * 增加Food实体类数据
     * @param food 转换后的Food对象
     */
    void addFood(Food food);

    /**
     * 增加View实体类数据
     * @param view 转换后的View对象
     */
    void addView(View view);

    /**
     * 增加Person实体类数据
     * @param person 转换后的Person对象
     */
    void addPerson(Person person);

    /**
     * 增加Culture实体类数据
     * @param culture 转换后的Culture对象
     */
    void addCulture(Culture culture);

    /**
     * 根据id查找
     * @param id    数据的id
     * @param type  数据的实体类类型
     * @return     结果实体类类型,其实只会有一个,传入list是为了不同类型的转换
     */
    List findById(int id, String type);

    /**
     * 更新Person类
     * @param person 期望的Person
     */
    void updatePerson(Person person);

    /**
     * 更新View对象
     * @param view 期望的View
     */
    void updateView(View view);

    /**
     * 更新Food对象
     * @param food 期望的Food
     */
    void updateFood(Food food);

    /**
     * 更新Culture对象
     * @param culture 期望的Culture
     */
    void updateCulture(Culture culture);

    /**
     * 查询View数据作为前台数据
     * @param start 开始索引
     * @param rows  查询数
     * @return  数据List
     */
    List findView(int start, int rows);

    /**
     * 查询Food数据作为前台数据
     * @param start 开始索引
     * @param rows  查询数
     * @return  数据List
     */
    List findFood(int start, int rows);

    /**
     * 查询Culture数据作为前台数据
     * @param start 开始索引
     * @param rows  查询数
     * @return  数据List
     */
    List findCulture(int start, int rows);

    /**
     * 查询Person数据作为前台数据
     * @param start 开始索引
     * @param rows  查询数
     * @return  数据List
     */
    List findPerson(int start, int rows);

}
