package com.lazy.manager.pojo;

/**
 * Coding......
 * Created by D.SR on 2017/2/28.
 * 1是，0否
 */
public class Menu {
    private long id;//":"1",菜单id
    private long parentId;//":"0",父菜单id
    private String enName;//":"SysManage",菜单英文名称
    private String name;//":"系统管理",菜单中文名称
    private String icon;//":"fa fa-desktop",图表
    private String urlAddress;//":null,菜单路径
    private String target;//":"expand",打开方式 iframe，new Table,_self
    private String isPublic;//":0,是否公开
    private String allowEdit;//":null,是否允许编辑
    private String allowDelete;//":null,是否允许删除
    private long sortCode;//":1,排序
    private String deleteMark;//":0,删除标记
    private String description;//":null,描述
    private String createDate;//":null,创建时间
    private long createUserId;//":null,创建用户id
    private String createUserName;//":null,创建者name
    private String modifyDate;//":"2015-11-17 11:22:46",最后修改时间
    private long modifyUserId;//":"System",最后修改者id
    private String modifyUserName;//":"超级管理员"最后修改者name
    private int status; //状态，1为正常，0为禁用


    @Override
    public String toString() {
        return "Menu{" +
                "id=" + id +
                ", parentId=" + parentId +
                ", enName='" + enName + '\'' +
                ", name='" + name + '\'' +
                ", icon='" + icon + '\'' +
                ", urlAddress='" + urlAddress + '\'' +
                ", target='" + target + '\'' +
                ", isPublic='" + isPublic + '\'' +
                ", allowEdit='" + allowEdit + '\'' +
                ", allowDelete='" + allowDelete + '\'' +
                ", sortCode=" + sortCode +
                ", deleteMark='" + deleteMark + '\'' +
                ", description='" + description + '\'' +
                ", createDate='" + createDate + '\'' +
                ", createUserId=" + createUserId +
                ", createUserName='" + createUserName + '\'' +
                ", modifyDate='" + modifyDate + '\'' +
                ", modifyUserId=" + modifyUserId +
                ", modifyUserName='" + modifyUserName + '\'' +
                '}';
    }

    public long getId() {
        return id;
    }

    public void setId(long id) {
        this.id = id;
    }

    public long getParentId() {
        return parentId;
    }

    public void setParentId(long parentId) {
        this.parentId = parentId;
    }

    public String getEnName() {
        return enName;
    }

    public void setEnName(String enName) {
        this.enName = enName;
    }

    public String getName() {
        return name;
    }

    public void setName(String name) {
        this.name = name;
    }

    public String getIcon() {
        return icon;
    }

    public void setIcon(String icon) {
        this.icon = icon;
    }

    public String getUrlAddress() {
        return urlAddress;
    }

    public void setUrlAddress(String urlAddress) {
        this.urlAddress = urlAddress;
    }

    public String getTarget() {
        return target;
    }

    public void setTarget(String target) {
        this.target = target;
    }

    public String getIsPublic() {
        return isPublic;
    }

    public void setIsPublic(String isPublic) {
        this.isPublic = isPublic;
    }

    public String getAllowEdit() {
        return allowEdit;
    }

    public void setAllowEdit(String allowEdit) {
        this.allowEdit = allowEdit;
    }

    public String getAllowDelete() {
        return allowDelete;
    }

    public void setAllowDelete(String allowDelete) {
        this.allowDelete = allowDelete;
    }

    public long getSortCode() {
        return sortCode;
    }

    public void setSortCode(long sortCode) {
        this.sortCode = sortCode;
    }

    public String getDeleteMark() {
        return deleteMark;
    }

    public void setDeleteMark(String deleteMark) {
        this.deleteMark = deleteMark;
    }

    public String getDescription() {
        return description;
    }

    public void setDescription(String description) {
        this.description = description;
    }

    public String getCreateDate() {
        return createDate;
    }

    public void setCreateDate(String createDate) {
        this.createDate = createDate;
    }

    public long getCreateUserId() {
        return createUserId;
    }

    public void setCreateUserId(long createUserId) {
        this.createUserId = createUserId;
    }

    public String getCreateUserName() {
        return createUserName;
    }

    public void setCreateUserName(String createUserName) {
        this.createUserName = createUserName;
    }

    public String getModifyDate() {
        return modifyDate;
    }

    public void setModifyDate(String modifyDate) {
        this.modifyDate = modifyDate;
    }

    public long getModifyUserId() {
        return modifyUserId;
    }

    public void setModifyUserId(long modifyUserId) {
        this.modifyUserId = modifyUserId;
    }

    public String getModifyUserName() {
        return modifyUserName;
    }

    public void setModifyUserName(String modifyUserName) {
        this.modifyUserName = modifyUserName;
    }

    public int getStatus() {
        return status;
    }

    public void setStatus(int status) {
        this.status = status;
    }
}
