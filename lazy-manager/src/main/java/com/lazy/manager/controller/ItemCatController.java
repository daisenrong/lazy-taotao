package com.lazy.manager.controller;

import com.lazy.manager.base.BaseController;
import com.lazy.manager.pojo.ItemCat;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.annotation.ResponseBody;

import java.util.ArrayList;
import java.util.HashMap;
import java.util.List;
import java.util.Map;

/**
 * ItemCatController
 * PROJECT_NAME: lazy-taotao
 * PACKAGE_NAME: com.lazy.manager.controller
 * Created by Lazy on 2017/5/31 21:44
 * Version: 0.1
 * Info: @TODO:...
 */
@Controller
@RequestMapping("itemCat")
public class ItemCatController extends BaseController<ItemCatController>{
    @RequestMapping("itemCatParentList")
    @ResponseBody
    public List<ItemCat> getItemCatParentList(@RequestParam(value = "id",defaultValue = "0") Long parentId){
        List result=new ArrayList();
        List<ItemCat> cats = itemCatService.getItemCatParentList(parentId);
        for (ItemCat cat:cats){
            Map node=new HashMap();
            node.put("id",cat.getId());
            node.put("text",cat.getName());
            node.put("state",cat.getIsParent()?"closed":"open");
            result.add(node);
        }
        return result;
    }
}
