package com.lazy.web.dao.impl;

import com.lazy.web.base.BaseDao;
import com.lazy.web.dao.ItemDao;
import com.lazy.web.pojo.Item;
import org.junit.Test;
import org.springframework.context.support.ClassPathXmlApplicationContext;
import org.springframework.jdbc.core.JdbcTemplate;
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
            item = jdbcTemplate.queryForObject("SELECT * FROM tb_item WHERE id=?", itemRowMapper,id);
        } catch (Exception e) {
            this.writeLog("ItemDaoImpl.getTbItemById Exception: "+e);
        }
        return item;
    }

    @Override
    public List<Item> getTbItems() {
        List<Item> items=null;
        try{
            items=jdbcTemplate.query("select * from tb_item",itemRowMapper);
        }catch (Exception e){
            this.writeLog("ItemDaoImpl.getTbItems Exception:"+e);
        }
        return items;
    }

    @Override
    public List<Item> getTbItems(Long[] ids) {
        return null;
    }

    @Test
    public void test1() {
        ClassPathXmlApplicationContext ctx = new ClassPathXmlApplicationContext("classpath:conf/app*");
        System.out.println(ctx);
        jdbcTemplate = (JdbcTemplate) ctx.getBean("jdbcTemplate");
        //Item item = jdbcTemplate.queryForObject("select * from tb_item where id=?",itemRowMapper, 562379);
        //List<Integer> integers = jdbcTemplate.queryForList("SELECT COUNT(1) FROM tb_item where id>? and price>?", Integer.class, 536563, 100);
        ////jdbcTemplate.queryForList("SELECT id,title FROM tb_item",new Object[]{}, new int[Integer.class,String.class],Item.class);
        ////jdbcTemplate.queryFo
        //
        //List<Item> items = jdbcTemplate.query("select * from tb_item", itemRowMapper);
        Long[] ids={562379L,562377L};
        try {
            List<Item> item = jdbcTemplate.query("select * from tb_item where id in (?)", itemRowMapper,ids.toString());
            System.out.println(ids.toString());
            System.out.println(item);
        } catch (Exception e) {
            System.out.println(e);
        }

        //System.out.println(items.size());
    }
}