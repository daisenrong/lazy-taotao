package com.lazy.manager.service.impl;


import com.lazy.manager.base.BaseService;
import com.lazy.manager.dao.TbItemDao;
import com.lazy.manager.pojo.TbItem;
import com.lazy.manager.service.TbItemService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

/**
 * Coding......
 * Created by D.SR on 2017/2/25.
 */
@Service
public class TbItemServiceImpl extends BaseService<TbItemServiceImpl> implements TbItemService {
    @Autowired
    private TbItemDao tbItemDao;

    @Override
    public int deleteByPrimaryKey(Long id) {
        return 0;
    }

    @Override
    public int add(TbItem record) {
        return 0;
    }

    @Override
    public TbItem findByPrimaryKey(Long id) {
        return tbItemDao.findByPrimaryKey(id);
    }

    @Override
    public int updateByPrimaryKey(TbItem record) {
        return 0;
    }
}
