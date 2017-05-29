<%@ page import="org.springframework.context.ApplicationContext" %>
<%@ page import="org.springframework.web.context.support.WebApplicationContextUtils" %>
<%@ page import="com.lazy.web.service.GroupService" %>
<%@ page import="com.lazy.web.service.CompanyService" %>
<%@ page import="java.util.List" %>
<%@ page import="com.lazy.web.pojo.*" %><%--
  Coding......
  User: D.SR
  Date: 2017/2/25
  Time: 17:17
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<!DOCTYPE HTML>
<html>
<head>
    <meta charset="utf-8">
    <title>方正集团创新大赛</title>
    <%@include file="/WEB-INF/page/public/header.jsp" %>
    <link rel="stylesheet" href="${ctx}/static/plugins/bootstrap/css/bootstrap.min.css">
    <link rel="stylesheet" href="${ctx}/static/fonts/font-awesome.min.css?v=1.0">
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
            <%--getGroupById("${user.groupId}", function (data) {--%>
            <%--if (data.code != 200) {--%>
            <%--layer.msg("数据加载失败，请刷新重试！");--%>
            <%--} else {--%>
            <%--$("#groupName").html(data.data.name)--%>
            <%--}--%>
            <%--})--%>
            <%--getCompanyById("${user.companyId}", function (data) {--%>
            <%--if (data.code != 200) {--%>
            <%--layer.msg("数据加载失败，请刷新重试！");--%>
            <%--} else {--%>
            <%--$("#companyName").html(data.data.name)--%>
            <%--}--%>
            <%--})--%>
        })
    </script>

</head>
<body class="">
<div>
    <div class="loginHead">


    </div>
    <div class="mymain centermy" style="margin-top: 50px">
        <%--<div class="page-header text-center">--%>
        <%--<h1 style="font-size: 40px">方正集团创业大赛报名信息修改</h1>--%>
        <%--</div>--%>

        <form class="form-horizontal" action="" id="userPwd" method="post">

            <input name="id" type="text" value="${user.id}" hidden>

            <div class="page-header text-center">
                <h1 style="font-size: 20px;color: #777">密码修改</h1>
            </div>
            <div name="passModify">
                <div class="form-group">
                    <label class="col-sm-2 control-label">旧密码</label>
                    <div class="col-sm-4">
                        <input required name="oldPwd" type="password"
                               class="form-control" placeholder="旧密码">
                    </div>
                </div>
                <div class="form-group">
                    <label class="col-sm-2 control-label">新密码</label>
                    <div class="col-sm-4">
                        <input required name="newPwd" type="password"
                               class="form-control" placeholder="新密码">
                    </div>
                </div>
                <div class="form-group">
                    <label class="col-sm-2 control-label">确认密码</label>
                    <div class="col-sm-4">
                        <input required name="newPwd1" type="password"
                               class="form-control" placeholder="确认密码">
                    </div>
                </div>
                <div class="form-group">
                    <label class="col-sm-2 control-label"></label>
                    <div class="col-sm-4">
                        <input id="submitBtn" class="btn btn-danger" value="修改" type="button">
                        </input>
                    </div>
                </div>
            </div>
        </form>
    </div>
</div>
<script>
    $("#submitBtn").click(function () {
        console.log($('#userPwd').serialize())
        var flag = false;
        if ($("input[name='newPwd']").val() == $("input[name='newPwd1']").val()) {
            $.ajax({
                cache: false,
                type: "POST",
                url: ctx + "/user/modifyPwd",
                data: $('#userPwd').serialize(),// 你的formid
//                contentType: "application/json; charset=utf-8",
//                async: false,
                dataType: "json",
                error: function (request) {
                    layer.alert("网络连接错误，请刷新重试！");
                },
                success: function (data) {
                    if (data.code != 200) {
                        layer.msg(data.msg);
                    } else {
                        layer.msg("密码修改成功，请重新登录！");
                        setTimeout(function () {
                            window.location.href = ctx + "/user/page/login";
                        }, 2000);
                    }
                }
            });
        } else {
            layer.msg("两次密码不一致");
        }
    });
    function modifyPwd() {

    }
</script>


<%@include file="/WEB-INF/page/public/footer.jsp" %>
</body>
</html>