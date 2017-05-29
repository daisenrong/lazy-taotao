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
</head>
<body style="background-color: #ffffff;margin-top: 20px">
<div id="ajax-loader"
     style="cursor: progress; position: fixed; top: -50%; left: -50%; width: 200%; height: 200%; z-index: 10000; overflow: hidden;"
     hidden>
    <img src="${ctx}/static/img/ajax-loader.gif"
         style="position: absolute; top: 0; left: 0; right: 0; bottom: 0; margin: auto;"/>
</div>
<div class="container-fluid">
    <div class="row">
        <style>

        </style>
        <table class="table table-striped table-bordered table-hover table-condensed">
            <thead>
            <tr>
                <td width="60px" align='center'><input type="checkbox" id="checkAll"><label for="checkAll">全选</label>
                </td>
                <td>序号</td>
                <td>父菜单</td>
                <td>名称</td>
                <td>图表</td>
                <td>地址</td>
                <td>状态</td>
                <td>操作</td>
            </tr>
            </thead>
            <tbody id="listCont">
            <tr>
                <td colspan="7">无数据</td>
            </tr>
            </tbody>
        </table>
    </div>
    <div class="row">
        <div style="padding-bottom: 50px">
            <%--<span id="pageinfo"></span>--%>
            <span style="float: right">
                <span id="page"></span>
                <span>每页
                    <select class="btn btn-default" name="pageSize" id="pageSize">
                        <option value="10" selected>10</option>
                        <option value="20">20</option>
                        <option value="50">50</option>
                        <option value="100">100</option>
                    </select> 行
                </span>
            </span>

            <input type="text" hidden id="currentPage" value="1">
        </div>

    </div>
</div>


<%@include file="/WEB-INF/view/public/footer.jsp" %>

<script>
    $("#checkAll").click(function () {
        $("input[name='check']").prop('checked', this.checked);
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
    $("#pageSize").change(function () {
        getMenuJsonList(1, $(this).val())
    })
    function getMenuJsonList(currentPage, pageSize) {
        $.ajax({
            type: "get",
            url: ctx + "/menu/getMenuPage",
            data: {currentPage: currentPage, pageSize: pageSize},
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
                var json = data.data;
                if (json.totalCount > 0) {
                    var listCont = $("#listCont");
                    listCont.html("");
                    for (var i = 0; i < json.pageData.length; i++) {
                        var id = json.pageData[i].id;
                        var num = json.startSize + i;
                        var parentId = json.pageData[i].parentId;
                        var parentName = json.pageData[i].parentName == null ? '无' : json.pageData[i].parentName;
                        var name = json.pageData[i].name;
                        var icon = json.pageData[i].icon;
                        var urlAddress = json.pageData[i].urlAddress || "";
                        var status = json.pageData[i].status == 1 ? '正常' : '禁用';
                        var html = "";
                        html += "<tr>";
                        html += "<td style='vertical-align: middle' align='center'><input name='check' value='" + id + "' type='checkbox'></td>";
                        html += "<td hidden><input type='text' name='id" + i + "' value='" + id + "'></td>";
                        html += "<td style='vertical-align: middle'>" + num + "</td>";
                        html += "<td style='vertical-align: middle'><input type='text' hidden value='" + parentId + "'>" + parentName + "</td>";
                        html += "<td style='vertical-align: middle'>" + name + "</td>";
                        html += "<td style='vertical-align: middle'>" + icon + "</td>";
                        html += "<td style='vertical-align: middle'>" + urlAddress + "</td>";
                        html += "<td style='vertical-align: middle'>" + status + "</td>";

                        html += "<td style='vertical-align: middle;text-align: center'>";
                        html += " <div class='btn-group'> ";
                        html += " <button type='button' class='btn btn-default btn-xs'>查看</button> ";
                        html += " <button type='button' class='btn btn-default btn-xs dropdown-toggle' data-toggle='dropdown' > ";
                        html += " <span class='caret'></span> ";
                        html += " <span class='sr-only'>Toggle Dropdown</span> ";
                        html += " </button> ";
                        html += " <ul class='dropdown-menu'> ";
                        if (status == '禁用') {
                            html += " <li><a href='#' onclick='statusChange(" + id + ",1)'>启用</a></li> ";
                        } else {
                            html += " <li><a href='#' onclick='statusChange(" + id + ",0)'>禁用</a></li> ";
                        }
                        html += " <li><a href='#'>编辑</a></li> ";
                        html += " <li role='separator' class='divider'></li> ";
                        html += " <li><a onclick='delMenuById("+id+")' href='#'>删除</a></li> ";
                        html += " </ul> ";
                        html += " </div> ";

                        html += "</td>";
                        html += "</tr>";
                        listCont.append(html);
                    }
                    //修改数据行数
                    $("#pageinfo").html("共有" + json.totalCount + "行数据");
                    $("#currentPage").val(currentPage);
//                    $("#pageSize").val();

                    //显示分页
                    laypage({
                        cont: 'page', //容器。值支持id名、原生dom对象，jquery对象。【如该容器为】：<div id="page1"></div>
                        pages: json.totalPage || 1, //通过后台拿到的总页数
                        curr: currentPage || 1, //当前页
                        groups: 3,
                        prev: false,
                        next: false,
                        skip: true, //是否开启跳页
                        jump: function (obj, first) { //触发分页后的回调
                            if (!first) { //点击跳页触发函数自身，并传递当前页：obj.curr
                                getMenuJsonList(obj.curr, $("#pageSize").val() || 10);
                            }
                        }
                    });

                }
            }
        });
    }
    $(function () {
        getMenuJsonList(1, $("#pageSize").val());
    })
</script>
</body>
</html>

