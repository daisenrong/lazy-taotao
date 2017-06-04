package com.lazy.web.base;

import com.lazy.commons.base.BaseBean;
import com.lazy.web.pojo.*;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.jdbc.core.BeanPropertyRowMapper;
import org.springframework.jdbc.core.JdbcTemplate;
import org.springframework.jdbc.core.PreparedStatementCreator;
import org.springframework.jdbc.core.RowMapper;
import org.springframework.jdbc.support.GeneratedKeyHolder;
import org.springframework.jdbc.support.KeyHolder;
import org.springframework.stereotype.Repository;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.SQLException;

/**
 * Coding......
 * Created by D.SR on 2017/3/3.
 */
@Repository
public class BaseDao<T> extends BaseBean<T> {
    @Autowired
    protected JdbcTemplate jdbcTemplate;

    protected RowMapper<Content> contentRowMapper=new BeanPropertyRowMapper<Content>(Content.class);
    protected RowMapper<ContentCategory> contentCategory=new BeanPropertyRowMapper<ContentCategory>(ContentCategory.class);
    protected RowMapper<Item> itemRowMapper=new BeanPropertyRowMapper<Item>(Item.class);
    protected RowMapper<ItemCat> itemCatRowMapper=new BeanPropertyRowMapper<ItemCat>(ItemCat.class);
    protected RowMapper<ItemDesc> itemDescRowMapper=new BeanPropertyRowMapper<ItemDesc>(ItemDesc.class);
    protected RowMapper<ItemParam> itemParamRowMapper=new BeanPropertyRowMapper<ItemParam>(ItemParam.class);
    protected RowMapper<ItemParamItem> itemParamItemRowMapper=new BeanPropertyRowMapper<ItemParamItem>(ItemParamItem.class);
    protected RowMapper<Order> orderRowMapper=new BeanPropertyRowMapper<Order>(Order.class);
    protected RowMapper<OrderItem> orderItemRowMapper=new BeanPropertyRowMapper<OrderItem>(OrderItem.class);
    protected RowMapper<OrderShipping> orderShippingRowMapper=new BeanPropertyRowMapper<OrderShipping>(OrderShipping.class);
    protected RowMapper<User> userRowMapper=new BeanPropertyRowMapper<User>(User.class);


    public Long addCourse(String sql, Object[] o) {
        final String insertSql = sql;
        final Object[] objects = o;
        KeyHolder keyHolder = new GeneratedKeyHolder();
        jdbcTemplate.update(new PreparedStatementCreator() {
            @Override
            public PreparedStatement createPreparedStatement(Connection connection) throws SQLException {
                PreparedStatement ps = connection.prepareStatement(insertSql, PreparedStatement.RETURN_GENERATED_KEYS);
                for (int i = 0; i < objects.length; i++) {
                    ps.setObject(i + 1, objects[i]);
                }
                return ps;
            }
        }, keyHolder);
        Long idResult = keyHolder.getKey().longValue();
        return idResult;

    }


}

