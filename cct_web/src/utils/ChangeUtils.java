package utils;

import domain.*;
import org.apache.commons.beanutils.BeanUtils;

import java.lang.reflect.InvocationTargetException;
import java.util.Map;

/*

 */
public class ChangeUtils {
    /**
     * 使用BeanUtils将数据转换成对象
     * @param map request中所有数据的map集合
     * @return  返回转换后的User对象
     */
    public static User changeUser(Map<String,String[]> map){
        User user = new User();
        try {
            BeanUtils.populate(user,map);
        } catch (IllegalAccessException e) {
            e.printStackTrace();
        } catch (InvocationTargetException e) {
            e.printStackTrace();
        }
        return user;
    }

    /**
     * 转换Map为View对象
     * @param map request中的数据
     * @return    封装的View对象
     */
    public static View changeView(Map<String,String[]> map){
        View view = new View();
        try {
            BeanUtils.populate(view,map);
        } catch (IllegalAccessException e) {
            e.printStackTrace();
        } catch (InvocationTargetException e) {
            e.printStackTrace();
        }
        return view;
    }

    /**
     * 转换Map为Food对象
     * @param map request中的数据
     * @return    封装的Food对象
     */
    public static Food changeFood(Map<String,String[]> map){
        Food food = new Food();
        try {
            BeanUtils.populate(food,map);
        } catch (IllegalAccessException e) {
            e.printStackTrace();
        } catch (InvocationTargetException e) {
            e.printStackTrace();
        }
        return food;
    }

    /**
     * 转换Map为Person对象
     * @param map request中的数据
     * @return    封装的Person对象
     */
    public static Person changePerson(Map<String,String[]> map){
        Person person = new Person();
        try {
            BeanUtils.populate(person,map);
        } catch (IllegalAccessException e) {
            e.printStackTrace();
        } catch (InvocationTargetException e) {
            e.printStackTrace();
        }
        return person;
    }

    /**
     * 转换Map为Person
     * @param map request中的Map数据
     * @return    封装的Person对象
     */
    public static Culture changeCulture(Map<String,String[]> map){
        Culture culture = new Culture();
        try {
            BeanUtils.populate(culture,map);
        } catch (IllegalAccessException e) {
            e.printStackTrace();
        } catch (InvocationTargetException e) {
            e.printStackTrace();
        }
        return culture;
    }

}
