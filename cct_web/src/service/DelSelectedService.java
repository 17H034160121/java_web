package service;

/**
 * 删除服务的接口
 */
public interface DelSelectedService {
    /**
     * 删除选中内容的接口,单选的删除也是过这个接口,为了减少代码量
     * @param ids
     */
    void delSelected(String[] ids, String type);
}
