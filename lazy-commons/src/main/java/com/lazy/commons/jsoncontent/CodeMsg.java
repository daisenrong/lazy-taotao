package com.lazy.commons.jsoncontent;

/**
 * Coding......
 * Created by D.SR on 2017/3/5.
 */
public enum CodeMsg {
    SUCCESS(200, "成功"),
    USER_PASSWORD_ERROR(501, "用户名密码错误"),
    OLD_PASSWORD_ERROR(503, "旧密码错误"),
    USER_NOT_FOUND(502, "用户不存在"),
    NETWORK_ERROR(404, "网络连接失败"),
    SERVER_ERROR(500, "服务器错误"),
    OPERAT_FAILED(504, "操作失败"),
    USER_REGIST_ERROR(510, "用户注册失败");


    private int code;
    private String msg;


    CodeMsg() {
    }

    CodeMsg(int code, String msg) {
        this.code = code;
        this.msg = msg;
    }

    public int getCode() {
        return code;
    }

    public void setCode(int code) {
        this.code = code;
    }

    public String getMsg() {
        return msg;
    }

    public void setMsg(String msg) {
        this.msg = msg;
    }
}