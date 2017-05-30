package com.lazy.manager.service;

import com.lazy.manager.pojo.Item;
import com.lazy.manager.pojo.PageInfoDataGrid;

import java.util.List;

/**
 * ItemService
 * PROJECT_NAME: lazy-taotao
 * PACKAGE_NAME: com.lazy.web.service.impl
 * Created by Lazy on 2017/5/29 21:38
 * Version: 0.1
 * Info: @TODO:...
 */
public interface ItemService {
    Item getTbItemById(Long id);
    PageInfoDataGrid getItemList(long page,long rows);
    List<Item> getTbItems();
    List<Item> getTbItems(Long[] ids);
}
