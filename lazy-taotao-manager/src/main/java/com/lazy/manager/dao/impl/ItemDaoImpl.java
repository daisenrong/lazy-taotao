package com.lazy.manager.dao.impl;

import com.lazy.commons.paging.PageBean;
import com.lazy.manager.base.BaseDao;
import com.lazy.manager.dao.ItemDao;
import com.lazy.manager.pojo.Item;
import com.lazy.manager.pojo.PageInfoDataGrid;
import org.junit.Test;
import org.springframework.context.support.ClassPathXmlApplicationContext;
import org.springframework.jdbc.core.JdbcTemplate;
import org.springframework.stereotype.Repository;

import java.util.ArrayList;
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
    public Item getItemById(Long id) {
        Item item = null;
        try {
            item = jdbcTemplate.queryForObject("SELECT * FROM tb_item WHERE id=?", itemRowMapper, id);
        } catch (Exception e) {
            this.writeLog("ItemDaoImpl.getItemById Exception: " + e);
        }
        return item;
    }

    @Override
    public Long getItemCount() {
        Long count = 0L;
        try {
            count = jdbcTemplate.queryForObject("select count(1) from tb_item", Long.class);
        } catch (Exception e) {
            this.writeLog("ItemDaoImpl.getItems Exception:" + e);
        }
        return count;
    }

    @Override
    public PageInfoDataGrid getItems(Long currPage, Long pageSize) {
        PageInfoDataGrid result = null;
        PageBean pageBean = new PageBean(getItemCount(), currPage, pageSize);
        try {
            List<Item> items = jdbcTemplate.query("select * from tb_item limit ?,?", itemRowMapper, pageBean.getStartSize(), pageSize);
            result = new PageInfoDataGrid();
            result.setTotal(pageBean.getTotalCount());
            result.setRows(items);
        } catch (Exception e) {
            this.writeLog("ItemDaoImpl.getItems Exception:" + e);
        }
        return result;
    }

    @Override
    public List<Item> getItems() {
        List<Item> items = null;
        try {
            items = jdbcTemplate.query("select * from tb_item", itemRowMapper);
        } catch (Exception e) {
            this.writeLog("ItemDaoImpl.getItems Exception:" + e);
        }
        return items;
    }

    @Override
    public List<Item> getItems(Long[] ids) {
        return null;
    }

    @Test
    public void test1() {
        ClassPathXmlApplicationContext ctx = new ClassPathXmlApplicationContext("classpath:conf/app*");
        System.out.println(ctx);
        jdbcTemplate = (JdbcTemplate) ctx.getBean("jdbcTemplate");

        Integer count = jdbcTemplate.queryForObject("select count(1) from tb_item", Integer.class);
        System.out.println(count);
        PageBean pageBean = new PageBean(count.longValue(), 1L, 10L);
        List<Item> items = jdbcTemplate.query("select title from tb_item limit ?,?", itemRowMapper, pageBean.getStartSize(), 10);
        for (int i = 0; i < items.size(); i++) {
            System.out.println(items.get(i).getTitle());
        }

    }

}