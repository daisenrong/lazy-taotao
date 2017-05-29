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
    <title>方正集团创新大赛</title>
    <%@include file="/WEB-INF/page/public/header.jsp" %>
    <link rel="stylesheet" href="${ctx}/static/plugins/bootstrap/css/bootstrap.min.css">
    <link rel="stylesheet" href="${ctx}/static/fonts/font-awesome.min.css?v=1.0">
    <script type="text/javascript" src="${ctx}/static/js/signUp.js?v=1.0"></script>
    <style>
        .mymain {
            width: 1000px;
        }

        .centermy {
            margin: 0 auto;
        }

        .loginHead {
            position: relative;
            height: 330px;
            overflow: hidden;
            background: url(${ctx}/static/images/login_body_bj.jpg) no-repeat scroll center 0 transparent;
        }


    </style>
    <script>
        $(function () {
            getGroupById("${user.groupId}", function (data) {
                if (data.code != 200) {
                    layer.msg("数据加载失败，请刷新重试！");
                } else {
                    $("#groupName").html(data.data.name)
                }
            })
            getCompanyById("${user.companyId}", function (data) {
                if (data.code != 200) {
                    layer.msg("数据加载失败，请刷新重试！");
                } else {
                    $("#companyName").html(data.data.name)
                }
            })
        })
    </script>

</head>
<body class="">
<div>

    <div class="loginHead">

        <h1 class="pageName"></h1>

    </div>
    <div class="mymain centermy" style="margin-top: 50px">
        <div class="page-header text-center">
            <h1 style="font-size: 40px">方正集团创业项目</h1>
        </div>
        <div class="page-header text-center">
            <div class="bs-example" data-example-id="simple-table">
                <table class="table">
                    <caption class="text-center" style="font-size: 20px">项目负责人信息</caption>
                    <tbody class="text-left">
                    <tr>
                        <%--<th scope="row">1</th>--%>
                        <td>所属产业集团/直管企业</td>
                        <td id="groupName"></td>
                        <%--<td>@mdo</td>--%>
                    </tr>
                    <tr>
                        <%--<th scope="row">1</th>--%>
                        <td>所属企业名称</td>
                        <td id="companyName"></td>
                        <%--<td>@mdo</td>--%>
                    </tr>
                    <tr>
                        <%--<th scope="row">1</th>--%>
                        <td>所属部门名称</td>
                        <td>${user.department}</td>
                        <%--<td>@mdo</td>--%>
                    </tr>
                    <tr>
                        <%--<th scope="row">1</th>--%>
                        <td>负责人姓名</td>
                        <td>${user.name}</td>
                        <%--<td>@mdo</td>--%>
                    </tr>

                    </tbody>
                </table>
            </div>
        </div>
        <div class="page-header text-center">
            <div class="bs-example" data-example-id="simple-table">
                <table class="table table-bordered table-hover">
                    <caption class="text-center" style="font-size: 20px">我的项目列表</caption>
                    <thead>
                    <tr>
                        <th>#</th>
                        <th>项目名称</th>
                        <th>项目简介</th>
                        <th>团队人数</th>
                        <th>操作</th>
                    </tr>
                    </thead>
                    <tbody id="projectList" class="text-left">


                    </tbody>
                </table>
            </div>
        </div>

        <script>
            $(function () {

//                    layer.alert($('#matchForm').serializeArray())
                $.ajax({
                    cache: false,
                    type: "POST",
                    url: ctx + "/match/findMatchByCreateUserId/" +${user.id},
                    data: $('#matchForm').serialize(),// 你的formid
                    contentType: "application/x-www-form-urlencoded; charset=UTF-8",
                    dataType: "json",
                    error: function (request) {
                        layer.alert("网络连接错误，请刷新重试！");
                    },
                    success: function (data) {
                        if (data.code != 200) {
                            layer.msg(data.msg);
                        } else {
                            var _html = "";

                            $.each(data.data, function (index, value) {
                                var _urlV = "${ctx}/match/matchView/" + value.id;
                                var _urlE = "${ctx}/match/matchEdit/" + value.id;
                                var _urlD = "${ctx}/match/matchDelete/" + value.id;
                                _html += " <tr> "
                                _html += " <th scope='row'>" + (index + 1) + "</th> "
                                _html += " <td>" + value.projectName + "</td> "
                                _html += " <td>" + value.info + "</td> "
                                _html += " <td>" + value.peopleNum + "</td> "
                                _html += " <td><a style='margin-left: 20px' href='" + _urlV + "'><i class='fa fa-eye' aria-hidden='true'></i>查看</a><a style='margin-left: 20px' href='" + _urlE + "'><i class='fa fa-pencil-square-o' aria-hidden='true'>修改</i></a><a style='margin-left: 20px' href='" + _urlD + "'><i class='fa fa-trash' aria-hidden='true'></i>删除</a></td> "
                                _html += " </tr> "

                            })
                            $("#projectList").append(_html);
                        }

                    }
                });

            })

        </script>
    </div>
</div>


<%@include file="/WEB-INF/page/public/footer.jsp" %>
</body>
</html>

