package com.lazy.manager.dao.impl;


import com.lazy.manager.base.BaseDao;
import com.lazy.manager.dao.TbItemDao;
import com.lazy.manager.pojo.TbItem;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.jdbc.core.JdbcTemplate;
import org.springframework.jdbc.core.RowMapper;
import org.springframework.stereotype.Repository;

import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.List;

/**
 * Coding......
 * Created by D.SR on 2017/2/25.
 */
@Repository
public class TbItemDaoImpl extends BaseDao<TbItemDaoImpl> implements TbItemDao {
    @Autowired
    private JdbcTemplate jdbcTemplate;

    @Override
    public int add(TbItem record) {
        return 0;
    }

    @Override
    public int deleteByPrimaryKey(Long id) {
        return 0;
    }

    @Override
    public int updateByPrimaryKey(TbItem record) {
        return 0;
    }


    @Override
    public TbItem findByPrimaryKey(Long id) {
        String sql = "select * from tb_item where id=? ";

        TbItem tbItem = jdbcTemplate.queryForObject(sql, new TbItemRowMapper(), id);
        System.out.println(findAll());
        return tbItem;
    }

    @Override
    public List<TbItem> findAll() {
        String sql = "select * from tb_item";
        List<TbItem> items = jdbcTemplate.query(sql, new TbItemRowMapper());
        return items;
    }


    class TbItemRowMapper implements RowMapper<TbItem> {

        @Override
        public TbItem mapRow(ResultSet resultSet, int i) throws SQLException {
            TbItem item = null;
            item = new TbItem();
            item.setId(resultSet.getLong("id"));
            return item;
        }
    }


}
