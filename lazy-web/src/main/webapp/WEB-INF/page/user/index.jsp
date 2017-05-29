<%@ page import="com.lazy.web.pojo.User" %><%--
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
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <title>方正集团创新大赛</title>
    <meta content="width=device-width, initial-scale=1, maximum-scale=1, user-scalable=no" name="viewport">
    <%@include file="/WEB-INF/page/public/header.jsp" %>
    <link rel="stylesheet" href="${ctx}/static/plugins/bootstrap/css/bootstrap.min.css">
    <link rel="stylesheet" href="${ctx}/static/fonts/font-awesome.min.css?v=1.0">
    <script src="${ctx}/static/plugins/bootstrap/js/bootstrap.min.js"></script>

</head>
<body>
<script>
    //判断是否是top，如果不是，那么就重新跳转
    if (this != top) {
        top.location.href = ctx + "/user/page/index";
    }
</script>
<div class="header">
    <div class="row">
        <div style="padding-left: 0;padding-right: 0;" class="col-sm-12">
            <nav style="margin-bottom: 0px" class="navbar navbar-default open-hover" role="navigation">
                <!-- Brand and toggle get grouped for better mobile display -->
                <div class="navbar-header">
                    <button type="button" class="navbar-toggle" data-toggle="collapse"
                            data-target=".navbar-ex1-collapse">
                        <span class="sr-only">Toggle navigation</span>
                        <span class="icon-bar"></span>
                        <span class="icon-bar"></span>
                        <span class="icon-bar"></span>
                    </button>
                    <a class="navbar-brand" href="#">方正集团创新大赛</a>
                </div>

                <!-- Collect the nav links, forms, and other content for toggling -->
                <div class="collapse navbar-collapse navbar-ex1-collapse">
                    <ul class="nav navbar-nav">
                        <li><a href="${ctx}/">主页</a></li>
                        <li class="active"><a onclick="iframeShow('${ctx}/match/page/signUpList');return false;"
                                              href="#">我的报名信息</a>
                        </li>
                        <li><a href="#" onclick="iframeShow('${ctx}/user/page/userInfoShow')">个人信息</a></li>
                        <li><a href="#" onclick="iframeShow('${ctx}/user/page/userPwdModify')">修改密码</a></li>
                        <%--<li><a href="高管团队素质评价.html">高管团队素质评价</a></li>--%>
                        <%--<li><a href="管理风格及能力倾向评价.html">管理风格及能力倾向评价</a></li>--%>
                    </ul>
                    <script>
                        //点击菜单之后添加选中样式
                        $(".nav.navbar-nav li").click(function () {
                            $(".nav.navbar-nav li").removeAttr("class");
                            $(this).attr("class", "active");
                        });
                    </script>


                </div><!-- /.navbar-collapse -->
            </nav>
        </div>
    </div>
</div>
<div>
    <div class="row">
        <div style="padding-left: 0;padding-right: 0;" class="col-sm-12">
            <iframe id="iframeMain" src="${ctx}/match/page/signUpList" frameborder="0" scrolling="auto"
                    style="border:0px; width: 100%;height: 100%"></iframe>
        </div>
    </div>
</div>
<script>
    $("#iframeMain").load(function () {
        var mainheight = $(this).contents().find("body").height() + 200;
        $(this).height(mainheight);
    });

    function iframeShow(url) {
        var _href = $(this).attr("href");
        if (_href == ctx + "/") {
            window.location.href = url;
        } else {
            $("#iframeMain").attr("src", url);
//                $("#iframeMain").load(function () {
//                    var mainheight = $(this).contents().find("body").height() + 30;
//                    $(this).height(mainheight);
//                });
            return false;
        }


    }

</script>

<%@include file="/WEB-INF/page/public/footer.jsp" %>
<script src="${ctx}/static/plugins/charts/Chart.min.js"></script>
</body>
</html>

