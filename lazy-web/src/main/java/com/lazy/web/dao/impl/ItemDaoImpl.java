package com.lazy.web.dao.impl;

import com.lazy.web.base.BaseDao;
import com.lazy.web.dao.TbItemDao;
import com.lazy.web.pojo.Item;
import org.junit.Test;
import org.springframework.context.support.ClassPathXmlApplicationContext;
import org.springframework.jdbc.core.BeanPropertyRowMapper;
import org.springframework.jdbc.core.JdbcTemplate;

import java.util.List;

/**
 * ItemDaoImpl
 * PROJECT_NAME: lazy-taotao
 * PACKAGE_NAME: com.lazy.web.dao.impl
 * Created by Lazy on 2017/5/29 17:05
 * Version: 0.1
 * Info: @TODO:...
 */
public class ItemDaoImpl extends BaseDao<Item> implements TbItemDao {
    @Override
    public Item getTbItemById(Long id) {
        return null;
    }

    @Override
    public List<Item> getTbItems() {
        return null;
    }

    @Override
    public List<Item> getTbItems(Long ids) {
        return null;
    }

    @Test
    public void test1(){
        ClassPathXmlApplicationContext ctx = new ClassPathXmlApplicationContext("classpath:conf/app*");
        System.out.println(ctx);
        jdbcTemplate= (JdbcTemplate) ctx.getBean("jdbcTemplate");
        Item item = jdbcTemplate.queryForObject("select * from tb_item where id=?", new BeanPropertyRowMapper<Item>(Item.class), 562379);
        System.out.println(item);
    }
}