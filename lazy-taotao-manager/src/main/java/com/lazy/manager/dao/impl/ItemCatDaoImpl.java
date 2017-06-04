package com.lazy.manager.dao.impl;

import com.lazy.manager.base.BaseDao;
import com.lazy.manager.dao.ItemCatDao;
import com.lazy.manager.pojo.ItemCat;
import org.springframework.stereotype.Repository;

import java.util.List;

/**
 * ItemCatDaoImpl
 * PROJECT_NAME: lazy-taotao
 * PACKAGE_NAME: com.lazy.manager.dao.impl
 * Created by Lazy on 2017/5/31 21:55
 * Version: 0.1
 * Info: @TODO:...
 */
@Repository
public class ItemCatDaoImpl extends BaseDao<ItemCatDaoImpl> implements ItemCatDao {
    @Override
    public List<ItemCat> getItemCatParentList(long parentId) {
        List<ItemCat> itemCats=null;
        try {
            itemCats= jdbcTemplate.query("select * from tb_item_cat where parent_id=?", itemCatRowMapper, parentId);
        } catch (Exception e) {
            this.writeLog("ItemCatDaoImpl.getItemCatParentList Exception :"+e);
        }
        return itemCats;
    }
}
