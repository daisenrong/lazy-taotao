package com.lazy.web.dao;

import com.lazy.web.pojo.Item;

import java.util.List;

/**
 * TbItemDao
 * PROJECT_NAME: lazy-taotao
 * PACKAGE_NAME: com.lazy.web.dao.impl
 * Created by Lazy on 2017/5/29 17:02
 * Version: 0.1
 * Info: @TODO:...
 */
public interface TbItemDao {
    Item getTbItemById(Long id);
    List<Item> getTbItems();
    List<Item> getTbItems(Long ids);

}
