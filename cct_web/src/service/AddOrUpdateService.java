package service;

import java.util.Map;

/**
 * 增加服务的接口
 */
public interface AddOrUpdateService {
    /**
     * 增加数据
     * @param parameterMap 数据的Map集合
     * @param type         数据实际的类型
     */
    void addOrUpdate(Map<String, String[]> parameterMap, String type);
}
