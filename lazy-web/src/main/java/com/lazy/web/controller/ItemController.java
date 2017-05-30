package com.lazy.web.controller;

import com.lazy.web.base.BaseController;
import com.lazy.web.base.BaseService;
import com.lazy.web.pojo.Item;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.ResponseBody;

/**
 * ItemController
 * PROJECT_NAME: lazy-taotao
 * PACKAGE_NAME: com.lazy.web.controller
 * Created by Lazy on 2017/5/30 14:43
 * Version: 0.1
 * Info: @TODO:...
 */
@Controller
@RequestMapping("item")
public class ItemController extends BaseController<ItemController> {
    @RequestMapping("getItemById/{id}")
    @ResponseBody
    public Item getItemById(@PathVariable Long id) {
        System.out.println(id);
        return itemService.getTbItemById(id);
    }
}
