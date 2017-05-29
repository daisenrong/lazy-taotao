package com.lazy.manager.base;

import com.lazy.commons.base.BaseBean;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.jdbc.core.JdbcTemplate;
import org.springframework.stereotype.Repository;

/**
 * Coding......
 * Created by D.SR on 2017/3/3.
 */
@Repository
public class BaseDao<T> extends BaseBean<T> {
    @Autowired
    protected JdbcTemplate jdbcTemplate;
}
