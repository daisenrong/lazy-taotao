package com.lazy.util.MD5;

import org.apache.commons.codec.digest.DigestUtils;

/**
 * MD5工具类
 * Coding......
 * Created by D.SR on 2017/3/7.
 */
public class UtilMD5 {
    /**
     * 将字符串转换为大写的MD5
     *
     * @param str 需要加密的字符串
     * @return 加密之后的大写MD5
     */
    public static String strToMD5UpCase(String str) {
        //System.out.println(DigestUtils.md5Hex(str));
        return DigestUtils.md5Hex(str).toUpperCase();
        //return str;
    }

    /**
     * 将字符串转换为小写的MD5
     *
     * @param str 需要加密的字符串
     * @return 加密之后的小写MD5
     */
    public static String strToMD5LowCase(String str) {
        return DigestUtils.md5Hex(str).toLowerCase();
    }
}
