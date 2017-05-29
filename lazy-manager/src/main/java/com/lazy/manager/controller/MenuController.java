package com.lazy.manager.controller;


import com.lazy.commons.jsoncontent.CodeMsg;
import com.lazy.commons.jsoncontent.ResponseContent;
import com.lazy.commons.paging.PageBean;
import com.lazy.manager.base.BaseController;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.ResponseBody;

/**
 * Coding......
 * Created by D.SR on 2017/3/3.
 */
@Controller
@RequestMapping("menu")
public class MenuController extends BaseController<MenuController> {
    @RequestMapping("getMenus")
    @ResponseBody
    public ResponseContent getMenus() {
        ResponseContent responseContent = new ResponseContent();
        try {
            responseContent.setCodeMsg(CodeMsg.SUCCESS);
            responseContent.setData(menuService.getMenus());
        } catch (Exception e) {
            System.out.println(e);
            responseContent.setCodeMsg(CodeMsg.SERVER_ERROR);
        }

        return responseContent;
    }

    @RequestMapping("getMenuPage")
    @ResponseBody
    public ResponseContent getMenuPage(Long currentPage, Long pageSize) {
        ResponseContent responseContent = new ResponseContent();
        try {
            PageBean pageBean = menuService.getMenuPageBean(currentPage, pageSize);
            if (pageBean.getTotalPage() < currentPage) {
                pageBean = menuService.getMenuPageBean(pageBean.getTotalPage(), pageSize);
                pageBean.setCurrentPage(pageBean.getTotalPage());
            }
            responseContent.setCodeMsg(CodeMsg.SUCCESS);
            responseContent.setData(pageBean);
        } catch (Exception e) {
            e.printStackTrace();
            responseContent.setCodeMsg(CodeMsg.SERVER_ERROR);
        }

        return responseContent;
    }

    @RequestMapping("getMenuById/{id}")
    @ResponseBody
    public ResponseContent getMenuById(@PathVariable Long id) {
        ResponseContent responseContent = new ResponseContent();
        try {
            responseContent.setCodeMsg(CodeMsg.SUCCESS);
            responseContent.setData(menuService.getMenuById(id));
        } catch (Exception e) {
            System.out.println(e);
            responseContent.setCodeMsg(CodeMsg.SERVER_ERROR);
        }

        return responseContent;
    }

    @RequestMapping("changeStatus")
    @ResponseBody
    public ResponseContent changeStatus(Long id, Integer status) {
        ResponseContent responseContent = new ResponseContent();
        try {
            if (menuService.changeStatus(id, status) != null) {
                responseContent.setCodeMsg(CodeMsg.SUCCESS);
            } else {
                responseContent.setCodeMsg(CodeMsg.OPERAT_FAILED);
            }
        } catch (Exception e) {
            System.out.println(e);
            responseContent.setCodeMsg(CodeMsg.SERVER_ERROR);
        }

        return responseContent;
    }

    @RequestMapping("delMenuById")
    @ResponseBody
    public ResponseContent delMenuById(Long id) {
        ResponseContent responseContent = new ResponseContent();
        try {
            if (menuService.delMenuById(id) > 0) {
                responseContent.setCodeMsg(CodeMsg.SUCCESS);
            } else {
                responseContent.setCodeMsg(CodeMsg.OPERAT_FAILED);
            }
        } catch (Exception e) {
            System.out.println(e);
            responseContent.setCodeMsg(CodeMsg.SERVER_ERROR);
        }

        return responseContent;
    }

}
