<%@ page import="com.lazy.web.pojo.User" %><%--
  Coding${ctx}/static/images/404/404-1.gif${ctx}/static/images/404/404-1.gif
  User: D.SR
  Date: 2017/2/9
  Time: 21:00
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<!DOCTYPE html>
<html>
<head>
    <title>方正集团创新大赛</title>
    <%@include file="/WEB-INF/page/public/header.jsp" %>
    <meta name="Keywords" content="创启未来，创业大赛，北大创业，科技创业，创业投资"/>
    <meta name="Description"
          content="方正创新大赛，是由方正集团总部发起，以“创新驱动”国家战略为方向，“世界在变，创新不变”为宗旨，旨在“激活方正创新基因，营造方正创新文化”，充分唤起全集团三万五千名员工的创新意识，致力于持续提供卓越的产品与服务，为人们创造更智能、更健康、更富足的生活。本届大赛，所有方正员工均可组团参赛，将分为技术、管理、运营、模式等维度进行评比，最终角逐年度创新、创业大奖。"/>


    <link rel="stylesheet" href="${ctx}/static/css/index.css">
    <%--<link rel="stylesheet" href="${ctx}/static/css/bit_common.css">--%>
    <link rel="stylesheet" href="${ctx}/static/css/global.css">
    <%--<link rel="stylesheet" href="${ctx}/static/css/skins/_all-skins.css?v=1.0">--%>
    <%--<link rel="stylesheet" href="${ctx}/static/plugins/layui/css/layui.css?v=1.0">--%>

    <link rel="stylesheet" href="${ctx}/static/plugins/bootstrap/css/bootstrap.min.css?v=1.0">
    <link rel="stylesheet" href="${ctx}/static/fonts/font-awesome.min.css?v=1.0">
    <link rel="stylesheet" href="${ctx}/static/plugins/layui/css/layui.css">
    <style>
        a:link {
            text-decoration: none;
        }

        a:visited {
            text-decoration: none;
        }

        a:hover {
            text-decoration: none;
        }

        a:active {
            text-decoration: none;
        }

        .mymain {
            width: 1000px;
        }

        .centermy {
            margin: 0 auto;
            text-align: center;
        }

        h3 {
            font-size: 24px;
            margin-top: 20px;
            margin-bottom: 10px;
        }
    </style>
</head>
<body>
<div class="bi_head">
    <div class="bi_head_con wm">
        <a class="fl" href="http://www.founder.com/" target="_blank"><img
                src="${ctx}/static/images/logo-cqwl.png?v=1.0"/></a>
        <%--<img class="fl" src="${ctx}/static/images/logo003.png"/>--%>
        <%--<a class="fl" href="${ctx}"><img src="${ctx}/static/images/logo002.png"/></a>--%>
        <ul class="bi_nav fl clearfix" style="margin-bottom: 0px;">
            <li><a class="home" href="${ctx}/">大赛首页</a></li>
            <li><a class="dsjj" href="${ctx}/home/page/contestIntroduction">大赛简介</a></li>
            <li><a class="xwzx on" href="">LOGO大赛</a></li>
            <li><a class="pwds" href="#">创新课堂</a></li>
            <li><a class="hzjg" href="#">新闻资讯</a></li>
            <%--<li><a class="wjds" href="${ctx}/ReviewSelectionYear.aspx">往届大赛</a></li>--%>
        </ul>

        <%
            User user = (User) request.getSession().getAttribute("user");
            if (user == null) {
        %>
        <span style="font-size: 12px;box-sizing: initial" class='loginRegister fr'><a class='login_a'
                                                                                      href='${ctx}/user/page/login'>登录</a><a
                class='register_a' href='${ctx}/user/page/regist'>注册</a> </span>
        <%
        } else {
        %>
        <span style="font-size: 12px;box-sizing: initial" class='loginRegister fr'><a class='login_a'
                                                                                      href='${ctx}/user/page/index'>${user.name}</a><a
                class='register_a' href='javascript:ajaxLogout()'>退出</a> </span>
        <%
            }
        %>

    </div>
</div>
<!--头部 结束-->

<div class="container mymain" style="padding-top: 100px">
    <div class="row">
        <div class="col-lg-12 col-md-12 col-md-12 centermy">
            <h1 style="font-size: 50px;font-weight: bold">Logo投票</h1>
        </div>
    </div>
    <script>
        $(function () {
            initLogoImg(1, 40);
            function initLogoImg(currentPage, pageSize) {
                $.ajax({
                    type: "get",
                    url: ctx + "/logo/getLogoPage",
                    data: {currentPage: currentPage, pageSize: 40},
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
                        if (json.currentPageSize > 0) {
                            var listCont = $("#layer-photos");
                            listCont.html("");
                            var _html = "";
                            for (var i = 0; i < json.pageData.length; i++) {
                                _html+="<div class='col-sm-3 col-md-3'>";
                                _html += " <div class='thumbnail'>";
                                _html += " <img name='logo' onclick='layerImg(this)' style='width: 200px;height: 200px;' src='${ctx}" + json.pageData[i].img + "' alt='" + json.pageData[i].name + "' />";
                                _html += " <div class='caption'>";
                                _html += " <h3>" + json.pageData[i].name + "</h3>";
                                _html += " <p>" + json.pageData[i].info + "</p>";
                                _html += " <p class='centermy center-block'><a href='#' class='btn btn-primary' role='button'>投票</a></p>";
                                _html += " </div>";
                                _html += " </div>";
                                _html += " </div>";
                            }
                            listCont.append(_html);
                            $("img[name='logo']").attr("onerror","this.src='${ctx}/static/images/404/404-1.gif'");
                            //显示分页
                            laypage({
                                cont: 'pageInfo', //容器。值支持id名、原生dom对象，jquery对象。【如该容器为】：<div id="page1"></div>
                                pages: json.totalPage, //通过后台拿到的总页数
                                curr: json.currentPage, //当前页
                                jump: function (obj, first) { //触发分页后的回调
                                    if (!first) { //点击跳页触发函数自身，并传递当前页：obj.curr
//                                        layer.msg("ss")
                                        initLogoImg(obj.curr);
                                    }
                                }
                            });

                        }
                        layer.photos({
                            photos: '#layer-photos'
                            , anim: 5 //0-6的选择，指定弹出图片动画类型，默认随机（请注意，3.0之前的版本用shift参数）
                        });
                    }
                });
            }



        })


    </script>
    <div class="row" id="layer-photos" style="margin-top: 60px">
        <div class="col-sm-3 col-md-3">
            <div class="thumbnail">
                <img onclick="layerImg(this)" style="width: 200px;height: 200px;"
                     src="${ctx}/static/images/404/404-1.gif" alt="logo名称" >
                <div class="caption">
                    <h3>logo名称</h3>
                    <p>logo简介</p>
                    <p class="centermy center-block"><a href="#" class="btn btn-primary" role="button">投票</a></p>
                </div>
            </div>

        </div>
    </div>
    <div class="row">
        <div id="pageInfo" class="centermy"></div>
    </div>

</div>

<script>
    //    $(function () {
    //        laypage({
    //            cont: $('#pageInfo'), //容器。值支持id名、原生dom对象，jquery对象,
    //            pages: 100, //总页数
    ////        skip: true, //是否开启跳页
    //            skin: '#4b7caf',
    //            groups: 3 //连续显示分页数
    //        });
    //    })
</script>


<%@include file="/WEB-INF/page/public/footer.jsp" %>

</body>
</html>

