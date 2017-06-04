package com.lazy.web.controller;

import com.lazy.web.base.BaseController;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.RequestMapping;

/**
 * Coding......
 * Created by D.SR on 2017/3/7.
 */
@Controller
public class ViewController extends BaseController<ViewController> {
    @RequestMapping("/")
    public String showHome() {
        return "home/index";
    }
    @RequestMapping("404")
    public String show404() {
        return "public/404";
    }

    @RequestMapping("view/{view}")
    public String showView(@PathVariable String view) {
        return view + ".jsp";
    }

    @RequestMapping("view/{module}/{view}")
    public String showModuleView(@PathVariable String module, @PathVariable String view) {
        return module + "/" + view;
    }

    @RequestMapping("view/{module1}/{module2}/{view}")
    public String showModule2View(@PathVariable String module1, @PathVariable String module2, @PathVariable String view) {
        return module1 + "/" + module2 + "/" + view;
    }
}