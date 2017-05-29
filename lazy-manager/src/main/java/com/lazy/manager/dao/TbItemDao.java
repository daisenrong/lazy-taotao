package com.lazy.manager.dao;


import com.lazy.manager.pojo.TbItem;

import java.util.List;

/**
 * Coding......
 * Created by D.SR on 2017/2/25.
 */
public interface TbItemDao {
    int add(TbItem record);

    int deleteByPrimaryKey(Long id);

    int updateByPrimaryKey(TbItem record);

    TbItem findByPrimaryKey(Long id);

    List<TbItem> findAll();


}
