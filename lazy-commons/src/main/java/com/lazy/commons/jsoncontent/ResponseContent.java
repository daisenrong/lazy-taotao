package com.lazy.commons.jsoncontent;

import com.lazy.commons.paging.PageBean;

import java.io.Serializable;

/**
 * Coding......
 * Created by D.SR on 2017/3/5.
 */
public class ResponseContent implements Serializable {
    public static final String JSON = "json";
    public static final String HTML = "html";
    public static final String TEXT = "text";

    private int code;
    private String msg;
    private String url;
    private String dataType;
    private Object data;


    public ResponseContent() {
    }

    public ResponseContent(int code, String msg, String url, String dataType, Object data) {
        this.code = code;
        this.msg = msg;
        this.url = url;
        this.dataType = dataType;
        this.data = data;
    }

    public ResponseContent(int code, String msg, Object data, String dataType) {
        this.code = code;
        this.msg = msg;
        this.data = data;
        this.dataType = dataType;
    }

    public ResponseContent(int code, String msg, Object data) {
        this.code = code;
        this.msg = msg;
        this.data = data;
    }

    public ResponseContent(int code, String msg) {
        this.code = code;
        this.msg = msg;
    }


    public ResponseContent(CodeMsg codeMsg) {
        this.code = codeMsg.getCode();
        this.msg = codeMsg.getMsg();
    }

    public ResponseContent(CodeMsg codeMsg, String msg) {
        this.code = codeMsg.getCode();
        this.msg = codeMsg.getMsg() + ":(" + msg + ")";
    }

    public void setCodeMsg(CodeMsg codeMsg) {
        this.code = codeMsg.getCode();
        this.msg = codeMsg.getMsg();
    }

    public void setCodeMsg(CodeMsg codeMsg, String msg) {
        this.code = codeMsg.getCode();
        this.msg = codeMsg.getMsg() + ":(" + msg + ")";
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

    public Object getData() {
        return data;
    }

    public void setData(Object data) {
        this.data = data;
    }

    public String getDataType() {
        return dataType;
    }

    public void setDataType(String dataType) {
        this.dataType = dataType;
    }

    public String getUrl() {
        return url;
    }

    public void setUrl(String url) {
        this.url = url;
    }

    public String toString() {
        return "ResponseContent{" +
                "code=" + code +
                ", msg='" + msg + '\'' +
                ", data=" + data +
                ", dataType='" + dataType + '\'' +
                ", url='" + url + '\'' +
                '}';
    }
}
