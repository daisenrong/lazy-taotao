package com.lazy.manager.controller;

import com.lazy.manager.base.BaseController;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.ResponseBody;
import org.springframework.web.multipart.MultipartFile;


import java.util.Map;

/**
 * PictureController
 * PROJECT_NAME: lazy-taotao
 * PACKAGE_NAME: com.lazy.manager.controller
 * Created by Lazy on 2017/6/4 21:45
 * Version: 0.1
 * Info: 上传图片
 */
@Controller
@RequestMapping("pic")
public class PictureController extends BaseController<PictureController> {
    @RequestMapping("upload")
    @ResponseBody
    public Map uploadPicture(MultipartFile uploadFile) {
        Map map = pictureService.uploadPic(uploadFile);
        return map;
    }
}
