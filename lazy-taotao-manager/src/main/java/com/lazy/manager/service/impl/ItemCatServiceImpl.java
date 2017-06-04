package com.lazy.manager.service.impl;

import com.lazy.manager.base.BaseService;
import com.lazy.manager.pojo.ItemCat;
import com.lazy.manager.service.ItemCatService;
import org.springframework.stereotype.Service;

import java.util.List;

/**
 * ItemCatServiceImpl
 * PROJECT_NAME: lazy-taotao
 * PACKAGE_NAME: com.lazy.manager.service.impl
 * Created by Lazy on 2017/5/31 22:01
 * Version: 0.1
 * Info: @TODO:...
 */
@Service
public class ItemCatServiceImpl extends BaseService<ItemCatServiceImpl> implements ItemCatService {
    @Override
    public List<ItemCat> getItemCatParentList(long parentId) {
        return itemCatDao.getItemCatParentList(parentId);
    }
}
