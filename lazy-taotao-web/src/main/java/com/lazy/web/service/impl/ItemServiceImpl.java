package com.lazy.web.service.impl;

import com.lazy.web.base.BaseService;
import com.lazy.web.pojo.Item;
import com.lazy.web.service.ItemService;
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
        return itemDao.getTbItemById(id);
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
