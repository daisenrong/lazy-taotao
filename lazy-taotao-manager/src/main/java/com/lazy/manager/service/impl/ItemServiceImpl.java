package com.lazy.manager.service.impl;

import com.lazy.commons.paging.PageBean;
import com.lazy.manager.base.BaseService;
import com.lazy.manager.pojo.Item;
import com.lazy.manager.pojo.PageInfoDataGrid;
import com.lazy.manager.service.ItemService;
import org.springframework.stereotype.Service;

import java.util.List;

/**
 * ItemServiceImpl
 * PROJECT_NAME: lazy-taotao
 * PACKAGE_NAME: com.lazy.web.service.impl
 * Created by Lazy on 2017/5/29 21:39
 * Version: 0.1
 * Info: @TODO:...
 */
@Service
public class ItemServiceImpl extends BaseService<ItemServiceImpl> implements ItemService {
    @Override
    public Item getTbItemById(Long id) {
        return itemDao.getItemById(id);
    }

    @Override
    public PageInfoDataGrid getItemList(long page, long rows) {


        return itemDao.getItems(page,rows);
    }

    @Override
    public List<Item> getTbItems() {
        return null;
    }

    @Override
    public List<Item> getTbItems(Long[] ids) {
        return null;
    }
}
