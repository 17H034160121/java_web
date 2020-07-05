package service.serviceImpl;

import dao.DataDao;
import dao.daoImpl.DataDaoImpl;
import domain.Culture;
import domain.Food;
import domain.Person;
import domain.View;
import service.AddOrUpdateService;
import utils.ChangeUtils;

import java.lang.reflect.InvocationTargetException;
import java.util.Map;

public class AddOrUpdateServiceImpl implements AddOrUpdateService {

    private DataDao dataDao = new DataDaoImpl();

    @Override
    public void addOrUpdate(Map<String, String[]> parameterMap, String type) {
        Object object = null;
        try {
            //通过传入的类型名,获取ChangeUtils中对应转换类型的方法,将Map数据转换成指定的类型.
            object = ChangeUtils.class.getMethod("change" + type, Map.class)
                    .invoke(new ChangeUtils(), parameterMap);
        } catch (NoSuchMethodException e) {
            e.printStackTrace();
        } catch (IllegalAccessException e) {
            e.printStackTrace();
        } catch (InvocationTargetException e) {
            e.printStackTrace();
        }


        if ("Person".equals(type)) {
            Person person = (Person) object;
            if (person.getId() == 0) {
                dataDao.addPerson(person);
            } else {
                dataDao.updatePerson(person);
            }
        } else if ("View".equals(type)) {
            View view = (View) object;
            if (view.getId() == 0) {
                dataDao.addView(view);
            } else {
                dataDao.updateView(view);
            }
        } else if ("Food".equals(type)) {
            Food food = (Food) object;
            if (food.getId() == 0) {
                dataDao.addFood(food);
            } else {
                dataDao.updateFood(food);
            }
        } else if ("Culture".equals(type)) {
            Culture culture = (Culture) object;
            if (culture.getId() == 0) {
                dataDao.addCulture(culture);
            } else {
                dataDao.updateCulture(culture);
            }
        }

    }
}
