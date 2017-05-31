package com.lazy.manager.dao;

import com.lazy.manager.pojo.ItemCat;

import java.util.List;

/**
 * ItemCatDao
 * PROJECT_NAME: lazy-taotao
 * PACKAGE_NAME: com.lazy.manager.dao
 * Created by Lazy on 2017/5/31 21:51
 * Version: 0.1
 * Info: @TODO:...
 */
public interface ItemCatDao  {
    List<ItemCat> getItemCatParentList(long parentId);
}
