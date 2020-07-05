package service.serviceImpl;

import dao.DataDao;
import dao.daoImpl.DataDaoImpl;
import service.DelSelectedService;


public class DelSelectedServiceImpl implements DelSelectedService {

    DataDao dataDao = new DataDaoImpl();

    @Override
    public void delSelected(String[] ids, String type) {
        for (String id : ids) {
            dataDao.delete(Integer.parseInt(id), type);
        }
    }
}
