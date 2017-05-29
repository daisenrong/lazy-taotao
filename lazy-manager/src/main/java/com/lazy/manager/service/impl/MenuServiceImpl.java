package com.lazy.manager.service.impl;


import com.lazy.commons.paging.PageBean;
import com.lazy.manager.base.BaseService;
import com.lazy.manager.pojo.Menu;
import com.lazy.manager.service.MenuService;
import org.springframework.stereotype.Service;

import java.util.List;

/**
 * Coding......
 * Created by D.SR on 2017/3/3.
 */
@Service
public class MenuServiceImpl extends BaseService<MenuServiceImpl> implements MenuService {


    @Override
    public List<Menu> getMenus() {
        return menuDao.getMenus();
    }

    @Override
    public PageBean getMenuPageBean(Long currentPage, Long pageSize) {
        return menuDao.getMenuPageBean(currentPage, pageSize);
    }

    @Override
    public Menu getMenuById(Long id) {
        return menuDao.getMenuById(id);
    }

    @Override
    public Menu changeStatus(Long id, Integer status) {
        return menuDao.changeStatus(id, status);
    }

    @Override
    public int delMenuById(Long id) {
        return menuDao.delMenuById(id);
    }
}
