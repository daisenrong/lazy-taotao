<%--
  Coding......
  User: D.SR
  Date: 2017/2/25
  Time: 17:17
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<!DOCTYPE html>
<html>
<head>
    <meta charset="utf-8">
    <title>菜单管理</title>
    <meta content="width=device-width, initial-scale=1, maximum-scale=1, user-scalable=no" name="viewport">
    <%@include file="/WEB-INF/view/public/header.jsp" %>
    <%@include file="/WEB-INF/view/public/ztree.jsp" %>
</head>
<body style="background-color: #ffffff;margin-top: 20px">
<%@include file="/WEB-INF/view/public/ajax-loader.jsp" %>

<div class="container-fluid">
    <i class='fa fa-plus' aria-hidden='true'></i>
    <i class='fa fa-plus' aria-hidden='true'></i>
    <div class="row">
        <div id="lazy_ztree" class="ztree"></div>
    </div>
</div>


<%@include file="/WEB-INF/view/public/footer.jsp" %>

<script>
    var name = "";
    var enName = "";
    var description = "";
    var urlAddress = "";
    var target = "";
    var icon = "";


    var setting = {
        view: {
            addHoverDom: addHoverDom,
            removeHoverDom: removeHoverDom,
            selectedMulti: false
        },
        edit: {
            enable: true,
            editNameSelectAll: true,
            showRemoveBtn: showRemoveBtn,
            showRenameBtn: showRenameBtn
        },
        data: {
            simpleData: {
                enable: true,
                idKey: "id",
                pIdKey: "parentId",
                rootPId: 0
            }
        },
        callback: {
            beforeDrag: beforeDrag,
            beforeEditName: beforeEditName,
            beforeRemove: beforeRemove,
            beforeRename: beforeRename,
            onRemove: onRemove,
            onRename: onRename
        }
    };

    var log, className = "dark";
    function beforeDrag(treeId, treeNodes) {
        return false;
    }
    function beforeEditName(treeId, treeNode) {
        className = (className === "dark" ? "" : "dark");
        //showLog("[ " + getTime() + " beforeEditName ]&nbsp;&nbsp;&nbsp;&nbsp; " + treeNode.name);
        var zTree = $.fn.zTree.getZTreeObj("lazy_ztree");
        zTree.selectNode(treeNode);
        setTimeout(function () {
            if (confirm("进入节点 -- " + treeNode.name + " 的编辑状态吗？")) {
                setTimeout(function () {
                    zTree.editName(treeNode);
                }, 0);
            }
        }, 0);
        return false;
    }
    function beforeRemove(treeId, treeNode) {
        className = (className === "dark" ? "" : "dark");
        showLog("[ " + getTime() + " beforeRemove ]&nbsp;&nbsp;&nbsp;&nbsp; " + treeNode.name);
        var zTree = $.fn.zTree.getZTreeObj("lazy_ztree");
        zTree.selectNode(treeNode);
        return confirm("确认删除 节点 -- " + treeNode.name + " 吗？");
    }
    function onRemove(e, treeId, treeNode) {
        showLog("[ " + getTime() + " onRemove ]&nbsp;&nbsp;&nbsp;&nbsp; " + treeNode.name);
    }
    function beforeRename(treeId, treeNode, newName, isCancel) {
        className = (className === "dark" ? "" : "dark");
        showLog((isCancel ? "<span style='color:red'>" : "") + "[ " + getTime() + " beforeRename ]&nbsp;&nbsp;&nbsp;&nbsp; " + treeNode.name + (isCancel ? "</span>" : ""));
        if (newName.length == 0) {
            setTimeout(function () {
                var zTree = $.fn.zTree.getZTreeObj("lazy_ztree");
                zTree.cancelEditName();
                layer.alert("节点名称不能为空.");
            }, 0);
            return false;
        }
        return true;
    }
    function onRename(e, treeId, treeNode, isCancel) {
        showLog((isCancel ? "<span style='color:red'>" : "") + "[ " + getTime() + " onRename ]&nbsp;&nbsp;&nbsp;&nbsp; " + treeNode.name + (isCancel ? "</span>" : ""));
    }
    function showRemoveBtn(treeId, treeNode) {
//        return !treeNode.isFirstNode;
        return true;
    }
    function showRenameBtn(treeId, treeNode) {
//        return !treeNode.isLastNode;
        return true;
    }
    function showLog(str) {
        if (!log) log = $("#log");
        log.append("<li class='" + className + "'>" + str + "</li>");
        if (log.children("li").length > 8) {
            log.get(0).removeChild(log.children("li")[0]);
        }
    }
    function getTime() {
        var now = new Date(),
            h = now.getHours(),
            m = now.getMinutes(),
            s = now.getSeconds(),
            ms = now.getMilliseconds();
        return (h + ":" + m + ":" + s + " " + ms);
    }

    var newCount = 1;
    function addHoverDom(treeId, treeNode) {
        var sObj = $("#" + treeNode.tId + "_span");
        if (treeNode.editNameFlag || $("#addBtn_" + treeNode.tId).length > 0) return;
        var addStr = "<span class='button add' id='addBtn_" + treeNode.tId
            + "' title='添加' onfocus='this.blur();'></span>";
        sObj.after(addStr);
        var btn = $("#addBtn_" + treeNode.tId);


        if (btn) btn.bind("click", function () {
            layer.open({
                type: 2,
                title: '添加菜单',
                area: ['600px', '500px'],
                fixed: false, //不固定
                maxmin: true,
                content: '${ctx}/view/menu/addMenu',
                end: function () {
                    if (name.trim() == "")
                        return false;
                    else {
                        var zTree = $.fn.zTree.getZTreeObj("lazy_ztree");
                        zTree.addNodes(treeNode, {id: (100 + newCount), pId: treeNode.id, name: name.trim()});
                        name = "";
                        enName = "";
                        description = "";
                        urlAddress = "";
                        target = "";
                        icon = "";
                        return false;
                    }
                }
            });


        });
    };
    function removeHoverDom(treeId, treeNode) {
        $("#addBtn_" + treeNode.tId).unbind().remove();
    };
    function selectAll() {
        var zTree = $.fn.zTree.getZTreeObj("lazy_ztree");
        zTree.setting.edit.editNameSelectAll = $("#selectAll").attr("checked");
    }

    $(document).ready(function () {
        getMenuJsonList(function (zNodes) {
//            console.log(zNodes);
            $.fn.zTree.init($("#lazy_ztree"), setting, zNodes);
            var zTree = $.fn.zTree.getZTreeObj("lazy_ztree");
            zTree.expandAll(true);
        })

//        $.fn.zTree.init($("#lazy_ztree"), setting, zNodes);
    });


    function statusChange(id, status) {
        $.ajax({
            type: "get",
            url: ctx + "/menu/changeStatus",
            data: {id: id, status: status},
            //data:$('#yourformid').serialize(),// 你的formid
            //data:JSON.stringify(object),// 你的formid
            contentType: "application/json; charset=utf-8",
            dataType: "json",
            beforeSend: function (XMLHttpRequest) {
                $("#ajax-loader").show();
            },
            complete: function (XMLHttpRequest, textStatus) {
                $("#ajax-loader").hide();
            },
            error: function () {
                layer.msg("网络连接失败，请重试");
            },
            success: function (data, textStatus) {
                getMenuJsonList($("#currentPage").val() || 1, $("#pageSize").val() || 10);
            }
        });
    }
    function delMenuById(id) {
        $.ajax({
            type: "get",
            url: ctx + "/menu/delMenuById",
            data: {id: id},
            //data:$('#yourformid').serialize(),// 你的formid
            //data:JSON.stringify(object),// 你的formid
            contentType: "application/json; charset=utf-8",
            dataType: "json",
            beforeSend: function (XMLHttpRequest) {
                $("#ajax-loader").show();
            },
            complete: function (XMLHttpRequest, textStatus) {
                $("#ajax-loader").hide();
            },
            error: function () {
                layer.msg("网络连接失败，请重试");
            },
            success: function (data, textStatus) {
                getMenuJsonList($("#currentPage").val() || 1, $("#pageSize").val() || 10);
            }
        });
    }

    function getMenuJsonList(callback) {
        $.ajax({
            type: "post",
            url: ctx + "/menu/getMenus",
            //data: {currentPage: currentPage, pageSize: pageSize},
            //data:$('#yourformid').serialize(),// 你的formid
            //data:JSON.stringify(object),// 你的formid
            contentType: "application/json; charset=utf-8",
            //contentType: "application/x-www-form-urlencoded",
            dataType: "json",
            beforeSend: function (XMLHttpRequest) {
                $("#ajax-loader").show();
            },
            complete: function (XMLHttpRequest, textStatus) {
                $("#ajax-loader").hide();
            },
            error: function () {
                layer.msg("网络连接失败，请重试");
            },
            success: function (data, textStatus) {
                var json = data.data;
                callback(json);

            }
        });
    }
    //    $(function () {
    //        getMenuJsonList(1, $("#pageSize").val());
    //    })
</script>
</body>
</html>

