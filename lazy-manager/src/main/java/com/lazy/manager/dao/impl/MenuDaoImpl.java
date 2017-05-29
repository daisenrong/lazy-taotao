package com.lazy.manager.dao.impl;


import com.lazy.commons.paging.PageBean;
import com.lazy.manager.base.BaseDao;
import com.lazy.manager.dao.MenuDao;
import com.lazy.manager.pojo.Menu;
import org.springframework.dao.DataAccessException;
import org.springframework.jdbc.core.RowMapper;
import org.springframework.stereotype.Repository;

import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.List;
import java.util.Map;

/**
 * Coding......
 * Created by D.SR on 2017/3/2.
 */
@Repository
public class MenuDaoImpl extends BaseDao<MenuDaoImpl> implements MenuDao {


    @Override
    public List<Menu> getMenus() {
        List<Menu> menus = null;
        try {
            String sql = "select * from t_menu  WHERE status=1 order by sortCode";
            menus = jdbcTemplate.query(sql, new MenuRowMapper());
        } catch (DataAccessException e) {
            e.printStackTrace();
            System.out.println("xxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxx");
        }
        return menus;
    }

    @Override
    public PageBean getMenuPageBean(Long currentPage, Long pageSize) {
        String sqlCount = "select count(a.id) from t_menu a LEFT JOIN t_menu b ON a.parentId=b.id ";
        String sql = "select a.id,a.parentId,a.name,a.icon,a.urlAddress,a.status,b.name parentName from t_menu a LEFT JOIN t_menu b ON a.parentId=b.id ORDER BY a.id  limit ?,?";
        Long count = jdbcTemplate.queryForObject(sqlCount, Long.TYPE);
        PageBean pageBean = new PageBean(count, currentPage, pageSize);
        List<Map<String, Object>> list = jdbcTemplate.queryForList(sql, pageBean.getStartSize() - 1, pageSize);

        pageBean.setPageData(list);
        return pageBean;
    }

    @Override
    public Menu getMenuById(Long id) {
        String sql = "select * from t_menu where id=?";
        List<Menu> menus = jdbcTemplate.query(sql, new MenuRowMapper(), id);
        if (menus.size() > 0)
            return menus.get(0);
        return null;
    }

    @Override
    public Menu changeStatus(Long id, Integer status) {
        //if (status == 0) {
        //    boolean b = changeStatusSon(id);
        //    if (!b) {
        //        return null;
        //    }
        //}
        String sql = "update t_menu set status=? where id=?";
        int update = jdbcTemplate.update(sql, status, id);
        if (update > 0) {
            return getMenuById(id);
        }
        return null;
    }

    @Override
    public int delMenuById(Long id) {
        String sql="delete from t_menu where id=?";
        int i = jdbcTemplate.update(sql, id);
        return i;
    }

    //递归
    //暂时不使用
    private boolean changeStatusSon(Long id) {
        String sql = "select id from t_menu where parentId=?";
        List<Long> ids = jdbcTemplate.queryForList(sql, Long.TYPE, id);
        if (ids == null || ids.size() <= 0) {
            return true;
        } else {
            //for (int i = 0; i < ids.size(); i++) {
            //    String sql1 = "update t_menu set status=? where id=?";
            //    int update = jdbcTemplate.update(sql, 0, ids.get(i));
            //    if (update <= 0)
            //        return false;
            //    else
            //        return changeStatusSon(ids.get(i));
            //}
        }
        return false;
    }

    class MenuRowMapper implements RowMapper<Menu> {

        @Override
        public Menu mapRow(ResultSet resultSet, int i) throws SQLException {
            Menu menu = new Menu();
            menu.setId(resultSet.getLong("id"));
            menu.setParentId(resultSet.getLong("parentId"));
            menu.setEnName(resultSet.getString("enName"));
            menu.setName(resultSet.getString("name"));
            menu.setIcon(resultSet.getString("icon"));
            menu.setUrlAddress(resultSet.getString("urlAddress"));
            menu.setTarget(resultSet.getString("target"));
            menu.setIsPublic(resultSet.getString("isPublic"));
            menu.setAllowEdit(resultSet.getString("allowEdit"));
            menu.setAllowDelete(resultSet.getString("allowDelete"));
            menu.setSortCode(resultSet.getLong("sortCode"));
            menu.setDeleteMark(resultSet.getString("deleteMark"));
            menu.setDescription(resultSet.getString("description"));
            menu.setCreateDate(resultSet.getString("createDate"));
            menu.setCreateUserId(resultSet.getLong("createUserId"));
            menu.setCreateUserName(resultSet.getString("createUserName"));
            menu.setModifyDate(resultSet.getString("modifyDate"));
            menu.setModifyUserId(resultSet.getLong("modifyUserId"));
            menu.setModifyUserName(resultSet.getString("modifyUserName"));
            menu.setStatus(resultSet.getInt("status"));
            return menu;
        }
    }
}

