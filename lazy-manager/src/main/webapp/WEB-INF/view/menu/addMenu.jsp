<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%--
  addMenu
  PROJECT_NAME: lazy
  PACKAGE_NAME: 
  Created by Lazy on 2017/4/4 20:38
  Version: 0.1
  Info: @TODO:...
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>Title</title>
    <%@include file="/WEB-INF/view/public/header.jsp" %>
</head>
<body>
<div class="container" style="padding-top: 10px;">
    <div class="row">
        <form class="form-horizontal">
            <div class="form-group col-sm-6">
                <label for="name" class="col-sm-3 control-label">菜单名称</label>
                <div class="col-sm-9">
                    <input type="text" class="form-control input-sm has-success" id="name" placeholder="菜单名称">
                </div>
            </div>
            <div class="form-group col-sm-6">
                <label for="enName" class="col-sm-3 control-label">英文名称</label>
                <div class="col-sm-9">
                    <input type="password" class="form-control input-sm" id="enName" placeholder="英文名称">
                </div>
            </div>
            <div class="form-group col-sm-6">
                <label for="description" class="col-sm-3 control-label">菜单描述</label>
                <div class="col-sm-9">
                    <input type="text" class="form-control input-sm" id="description" placeholder="菜单描述">
                </div>
            </div>
            <div class="form-group col-sm-6">
                <label for="urlAddress" class="col-sm-3 control-label">地址URL</label>
                <div class="col-sm-9">
                    <input type="password" class="form-control input-sm" id="urlAddress" placeholder="地址URL">
                </div>
            </div>
            <div class="form-group col-sm-6">
                <label for="target" class="col-sm-3 control-label">打开方式</label>
                <div class="col-sm-9">
                    <select id="target" class="form-control">
                        <option>iframe</option>
                        <option>_blank</option>
                        <option>_self</option>
                    </select>
                </div>
            </div>
            <div class="form-group col-sm-6">
                <label for="icon" class="col-sm-3 control-label">图标icon</label>
                <div class="col-sm-9">
                    <input type="password" class="form-control input-sm" id="icon" placeholder="icon">
                </div>
            </div>
            <div class="form-group col-sm-12" style="margin: 0 auto;">
                <input id="addMenu" type="button" class="btn btn-default" value="添加">
                <input id="cancle" type="button" class="btn btn-default" value="取消">
            </div>

        </form>
    </div>

</div>
</body>
<%@include file="/WEB-INF/view/public/footer.jsp" %>
<script>
    $(function () {
        var index = parent.layer.getFrameIndex(window.name);
        $("#addMenu").click(function () {
            if (!checkInput())
                return false;
            parent.name = $("#name").val();
            parent.enName = $("#enName").val();
            parent.description = $("#description").val();
            parent.urlAddress = $("#urlAddress").val();
            parent.target = $("#target").val();
            parent.icon = $("#icon").val();
            parent.layer.msg(parent.name);
            parent.layer.close(index);

        })

        $("#cancle").click(function () {
            parent.layer.close(index);
        });
        function checkInput() {
            if ($("#name").val()==""){
                layer.msg("菜单名称必填", function () {
                });
                return false;
            }
            if ($("#enName").val()==""){
                layer.msg("英文名称必填", function () {
                });
                return false;
            }
            return true;
        }
        $("#name").blur(function () {
            if ($(this).val()==""){

            }
        });
    });
</script>
</html>
