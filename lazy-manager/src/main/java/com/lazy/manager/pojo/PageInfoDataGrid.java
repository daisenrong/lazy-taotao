package com.lazy.manager.pojo;

import com.lazy.commons.base.BaseBean;

import java.util.List;

/**
 * PageInfoDataGrid
 * PROJECT_NAME: lazy-taotao
 * PACKAGE_NAME: com.lazy.manager.pojo
 * Created by Lazy on 2017/5/30 18:36
 * Version: 0.1
 * Info: 针对easyUI datagtid封装的分页对象
 */
public class PageInfoDataGrid extends BaseBean<PageInfoDataGrid> {
    private Long Total;
    private List<?> rows;

    public Long getTotal() {
        return Total;
    }

    public void setTotal(Long total) {
        Total = total;
    }

    public List<?> getRows() {
        return rows;
    }

    public void setRows(List<?> rows) {
        this.rows = rows;
    }
}
