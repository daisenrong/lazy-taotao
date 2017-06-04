package com.lazy.manager.service;

import org.springframework.web.multipart.MultipartFile;

import java.util.Map;

/**
 * PictureService
 * PROJECT_NAME: lazy-taotao
 * PACKAGE_NAME: com.lazy.manager.service
 * Created by Lazy on 2017/6/4 20:23
 * Version: 0.1
 * Info: @TODO:...
 */
public interface PictureService {
    Map uploadPic(MultipartFile uploadFile);
}
