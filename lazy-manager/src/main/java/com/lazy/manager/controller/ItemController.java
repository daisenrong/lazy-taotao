package com.lazy.manager.controller;


import com.lazy.manager.base.BaseController;
import com.lazy.manager.pojo.TbItem;
import com.lazy.manager.service.TbItemService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.ResponseBody;

/**
 * Coding......
 * Created by D.SR on 2017/2/25.
 */
@Controller
@RequestMapping("item")
public class ItemController extends BaseController<ItemController> {
    @Autowired
    private TbItemService tbItemService;

    @RequestMapping("findByPrimaryKey/{id}")
    @ResponseBody
    public TbItem findByPrimaryKey(@PathVariable Long id) {
        TbItem item = tbItemService.findByPrimaryKey(id);
        System.out.println(id);
        System.out.println(item);
        return item;
    }

}
