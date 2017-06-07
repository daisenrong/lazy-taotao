package com.lazy.manager.service.impl;

import com.lazy.commons.base.BaseBean;
import com.lazy.manager.service.PictureService;
import com.lazy.util.ftp.UtilFtp;
import com.lazy.util.time.UtilTime;
import org.springframework.beans.factory.annotation.Value;
import org.springframework.stereotype.Service;
import org.springframework.web.multipart.MultipartFile;

import java.io.IOException;
import java.util.HashMap;
import java.util.Map;
import java.util.UUID;

/**
 * PictureServiceImpl
 * PROJECT_NAME: lazy-taotao
 * PACKAGE_NAME: com.lazy.manager.service.impl
 * Created by Lazy on 2017/6/4 20:25
 * Version: 0.1
 * Info: @TODO:...
 */
@Service
public class PictureServiceImpl extends BaseBean<PictureServiceImpl> implements PictureService {
    @Value("${imgftp_host}")
    private String host;
    @Value("${imgftp_port}")
    private int port;
    @Value("${imgftp_username}")
    private String username;
    @Value("${imgftp_password}")
    private String password;
    @Value("${imgftp_basePath}")
    private String basePath;

    @Value("${imgServer_url}")
    private String imgServerurl;
    @Value("${imgServer_port}")
    private String imgServerPort;
    @Value("${imgServer_path}")
    private String imgServerPath;

    @Override
    public Map uploadPic(MultipartFile uploadFile) {
        Map result = new HashMap();
        try {
            if(uploadFile==null)
                this.writeLog("null");
            String oldFilename = uploadFile.getOriginalFilename();
            String fileName = UUID.randomUUID().toString() + oldFilename.substring(oldFilename.lastIndexOf("."));
            String filePath = UtilTime.getCurrDate("yyyy/MM/dd/");
            boolean b = UtilFtp.uploadFile(host, port, username, password, basePath, filePath, fileName, uploadFile.getInputStream());
            if (b) {
                result.put("error", 0);
                result.put("url", imgServerurl + ":" + imgServerPort + imgServerPath + filePath + fileName);
            } else {
                result.put("error", 1);
                result.put("message", "上传失败");
            }
        } catch (Exception e) {
            this.writeLog("Image upload Exception :" + e);
            result.put("error", 1);
            result.put("message", "上传失败11");
        }
        return result;
    }

}
