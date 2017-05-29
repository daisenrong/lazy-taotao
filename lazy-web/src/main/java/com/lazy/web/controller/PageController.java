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
public class PageController extends BaseController<PageController> {
    @RequestMapping("{model}/page/{page}")
    public String showPageOneModel(@PathVariable String model, @PathVariable String page) {
        return model + "/" + page;
    }

    @RequestMapping("{model1}/{model2}/page/{page}")
    public String showPageOneModel(@PathVariable String model1,@PathVariable String model2,@PathVariable String page) {
        return model1 + "/" + model2 + "/" + page;
    }
}
