package com.lazy.manager.service;

import com.lazy.manager.pojo.ItemCat;

import java.util.List;

/**
 * ItemCatService
 * PROJECT_NAME: lazy-taotao
 * PACKAGE_NAME: com.lazy.manager.service
 * Created by Lazy on 2017/5/31 22:00
 * Version: 0.1
 * Info: @TODO:...
 */
public interface ItemCatService {
    List<ItemCat> getItemCatParentList(long parentId);
}
