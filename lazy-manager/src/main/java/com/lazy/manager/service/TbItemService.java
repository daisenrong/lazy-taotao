package com.lazy.manager.service;


import com.lazy.manager.pojo.TbItem;

/**
 * Coding......
 * Created by D.SR on 2017/2/25.
 */
public interface TbItemService {
    int deleteByPrimaryKey(Long id);

    int add(TbItem record);

    TbItem findByPrimaryKey(Long id);

    int updateByPrimaryKey(TbItem record);
}
