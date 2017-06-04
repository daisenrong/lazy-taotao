package com.lazy.web.service;

import com.lazy.web.base.BaseService;
import com.lazy.web.pojo.Item;

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
    List<Item> getTbItems();
    List<Item> getTbItems(Long[] ids);
}
