package com.lazy.manager.dao;

import com.lazy.manager.pojo.Item;

import java.util.List;

/**
 * ItemDao
 * PROJECT_NAME: lazy-taotao
 * PACKAGE_NAME: com.lazy.web.dao.impl
 * Created by Lazy on 2017/5/29 17:02
 * Version: 0.1
 * Info: @TODO:...
 */
public interface ItemDao {
    Item getTbItemById(Long id);
    List<Item> getTbItems();
    List<Item> getTbItems(Long[] ids);

}
