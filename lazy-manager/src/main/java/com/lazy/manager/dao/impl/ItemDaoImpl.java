package com.lazy.manager.dao.impl;

import com.lazy.manager.base.BaseDao;
import com.lazy.manager.dao.ItemDao;
import com.lazy.manager.pojo.Item;
import org.springframework.stereotype.Repository;

import java.util.List;

/**
 * ItemDaoImpl
 * PROJECT_NAME: lazy-taotao
 * PACKAGE_NAME: com.lazy.web.dao.impl
 * Created by Lazy on 2017/5/29 17:05
 * Version: 0.1
 * Info: @TODO:...
 */
@Repository
public class ItemDaoImpl extends BaseDao<ItemDaoImpl> implements ItemDao {
    @Override
    public Item getTbItemById(Long id) {
        Item item = null;
        try {
            item = jdbcTemplate.queryForObject("SELECT * FROM tb_item WHERE id=?", itemRowMapper, id);
        } catch (Exception e) {
            this.writeLog("ItemDaoImpl.getTbItemById Exception: " + e);
        }
        return item;
    }

    @Override
    public List<Item> getTbItems() {
        List<Item> items = null;
        try {
            items = jdbcTemplate.query("select * from tb_item", itemRowMapper);
        } catch (Exception e) {
            this.writeLog("ItemDaoImpl.getTbItems Exception:" + e);
        }
        return items;
    }

    @Override
    public List<Item> getTbItems(Long[] ids) {
        return null;
    }

}