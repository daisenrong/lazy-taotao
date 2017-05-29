package com.lazy.manager.dao;


import com.lazy.commons.paging.PageBean;
import com.lazy.manager.pojo.Menu;

import java.util.List;

/**
 * Coding......
 * Created by D.SR on 2017/3/2.
 */
public interface MenuDao {
    List<Menu> getMenus();
    PageBean getMenuPageBean(Long currentPage, Long pageSize);

    Menu getMenuById(Long id);

    Menu changeStatus(Long id, Integer status);

    int delMenuById(Long id);
}
