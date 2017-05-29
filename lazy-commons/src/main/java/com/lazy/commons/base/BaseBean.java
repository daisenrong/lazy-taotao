package com.lazy.commons.base;


import org.apache.commons.logging.Log;
import org.apache.commons.logging.LogFactory;

import java.lang.reflect.ParameterizedType;
import java.lang.reflect.Type;

/**
 * Coding......
 * Created by D.SR on 2017/3/3.
 */

public class BaseBean<T> {

    protected static Log logbean = null;

    public BaseBean() {
        //Class<T> entityClass = (Class<T>) ((ParameterizedType) getClass().getGenericSuperclass()).getActualTypeArguments()[0];
        Type genType = getClass().getGenericSuperclass();
        Type[] params = ((ParameterizedType) genType).getActualTypeArguments();
        Class<T> entityClass = (Class) params[0];
        logbean = LogFactory.getLog(entityClass);
    }

    /**
     * 打印日志工具累
     *
     * @param log 日志内容
     */
    public  void writeLog(Object log) {
        logbean.error(log);
        //update("insert into t_logs_other (log,date) values (?,?)",log, "");
    }
}
