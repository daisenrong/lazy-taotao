<%--
  Coding......
  User: D.SR
  Date: 2017/3/6
  Time: 18:14
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>


<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head id="ctl00_Head1">
    <meta http-equiv="Content-Type" content="text/html; charset=utf-8"/>
    <meta http-equiv="X-UA-Compatible" content="IE=edge"/>
    <meta name="viewport" content="width=device-width, initial-scale=1"/>
    <title>
        方正集团创新大赛
    </title>
    <meta name="Keywords"
          content="北大科技园新闻,通知通告,最新活动,北京大学成府园区,北大科技园南区,北京上地创业园,包头北大科技园,江西北大科技园,天津宝坻北大科技园,天津武清北大科技园,金华北大科技园,北京大学金华信息科技园,美国硅谷分园,西安北大科技园,天津武清北大科技园,北大中电石家庄北大科技园,青岛北大科技园,南京北大科技园,杭州北大科技园"/>
    <meta name="Description" content="为您实时报道北大科技园及所属企业的相关新闻资讯。"/>

    <%@include file="/WEB-INF/page/public/header.jsp" %>

    <link type="text/css" href='${ctx}/static/css/index.css' rel="stylesheet"/>
    <link type="text/css" href='${ctx}/static/css/bit_common.css' rel="stylesheet"/>
    <link type="text/css" href='${ctx}/static/css/global.css' rel="stylesheet"/>
    <script language="javascript" src='${ctx}/static/js/bit_js.js'></script>
    <script src='${ctx}/static/js/AjaxGenCaptcha.js' type="text/javascript"></script>
    <%--<script language="javascript" type="text/javascript" src='/Service/InlineEditor.ashx'></script>--%>


    <script src='${ctx}/static/plugins/jquery/jquery.queryParser.js' type="text/javascript"></script>
    <script src='${ctx}/static/plugins/jquery/jquery.depend.js' type="text/javascript"></script>
    <script src='${ctx}/static/plugins/jquery/jquery.cookie.js' type="text/javascript"></script>
    <script src='${ctx}/static/plugins/jquery/jquery.storageapi.js' type="text/javascript"></script>
    <script src='${ctx}/static/plugins/assist/Math.uuid.js' type="text/javascript"></script>
    <script src='${ctx}/static/plugins/bitech/bitech.analysis.js' type="text/javascript"></script>

    <script type="text/javascript">
        //判断是否是top，如果不是，那么就重新跳转
        if(this!=top){
            top.location.href=ctx+"/user/page/login";
        }
        var lurl = "http://www.pkusp.com.cn";
        //北大科技园主网站：das-pkusp.com.cn
        var PkuspCRMDASUrl = "";
        //创业大赛：das-innovation.pkusp.com.cn
        var PkuspInnovationDASUrl = "";
        //创业孵化营：das-incubator.pkusp.com.cn
        var PkuspIncubatorDASUrl = "";
        //企业百家行：das-qybjx.pkusp.com.cn
        var PkuspQybjxDASUrl = "";
    </script>

    <%--<!--[if IE 6]>--%>
    <%--<script language="javascript" src="js/DD_belatedPNG_0.0.8a.js"></script>--%>
    <%--<script type="text/javascript">     /* EXAMPLE */   DD_belatedPNG.fix('img,.png');</script> <![endif]-->--%>

    <style>
        #left_child_nav {
            display: none;
        }

        #right_banner {
            display: none;
        }
    </style>

    <script src="${ctx}/static/plugins/jquery/jquery.cookie.js" type="text/javascript"></script>
    <script>

        function ajaxLogin() {

            $.ajax({
                cache: false,
                type: "POST",
                url: ctx + "/user/login",
                data: $('#loginForm').serialize(),// 你的formid
//                async: false,
                dataType: "json",
                error: function (request) {
                    layer.alert("网络连接错误，请刷新重试！");
                },
                success: function (data) {
                    if (data.code != 200) {
                        layer.msg(data.msg);
                    } else {
                        layer.msg("登录成功，正在跳转页面");
                        window.location.href=ctx+"/";
                    }

                }
            });
        }
        function ajaxLogout() {

            $.ajax({
                cache: false,
                type: "POST",
                url: ctx + "/user/logout",
//                data: $('#loginForm').serialize(),// 你的formid
//                async: false,
                dataType: "json",
                error: function (request) {
                    layer.alert("网络连接错误，请刷新重试！");
                },
                success: function (data) {
                    if (data.code != 200) {
                        layer.msg(data.msg);
                    } else {
                        layer.msg("退出成功");
                        window.location.href=ctx+"/";
                    }

                }
            });
        }

        $(function () {
//            var loginId = $.cookie("uName");

//            if (loginId != null) {
//                $("#rememebe_Password").prop("checked", true);
//                $('#ctl00_main_txtUserName').val(loginId);
//            }


            //if ($("input[id$=txtUserName]").val())
            //$("input[id$=txtPwd]").focus();
            //else
            //$("input[id$=txtUserName]").focus();

//            $("input[id$=txtCaptcha]").on("keypress", function (event) {
//                if (event.keyCode == 13)
//                    $("a[id$=btnLogin]")[0].click();
//            });
//
//            $("input[id$=txtPwd]").on("keypress", function (event) {
//                if (event.keyCode == 13)
//                    $("a[id$=btnLogin]")[0].click();
//            })

            $(".login_uName").blur(function () {

                var Through = true;
                var $usename = $(this).val().replace("用户名", "");
                if ($usename.trim() == "") {
                    $(".usernameerror").html("请输入账号!");
                    $(".usernameerror").show();

                    //$(".username_wrong_ico").addClass("wrong_ico");
                    $(".username_wrong_ico").removeClass("right_ico");
                    Through = false;
                } else {

                    var usrnameyzm = /^([a-zA-Z0-9]|[_]){6,16}$/;
                    if (!usrnameyzm.test($usename)) {
                        $(".usernameerror").html("账号必须输入6~16位字母或数字!");
                        $(".usernameerror").show();

                        //$(".username_wrong_ico").addClass("wrong_ico");
                        $(".username_wrong_ico").removeClass("right_ico");
                        Through = false;
                    }

                    //判断账号是否存在
                    $.ajax({
                        type: "Post",
                        url: ctx + "/user/findUserByLoginId/" + $usename,
                        //data: "{'loginId':'" + $usename + "'}",
                        contentType: "application/json; charset=utf-8",
                        dataType: "json",
                        success: function (data) {
                            //返回的数据用data.d获取内容;
                            if (data.code == 200) {

                                $(".usernameerror").hide();
                                //$(".username_wrong_ico").removeClass("wrong_ico");
                                $(".username_wrong_ico").addClass("right_ico");

                            } else {
                                $(".usernameerror").html("账号不存在!");
                                $(".usernameerror").show();

                                //$(".username_wrong_ico").addClass("wrong_ico");
                                $(".username_wrong_ico").removeClass("right_ico");
                                Through = false;
                            }
                        }
                    });

                    if (Through == true) {
                        $(".usernameerror").hide();
                        //$(".username_wrong_ico").removeClass("wrong_ico");
                        $(".username_wrong_ico").addClass("right_ico");
                    } else {
                        $(".usernameerror").show();
                        //$(".username_wrong_ico").addClass("wrong_ico");
                        $(".username_wrong_ico").removeClass("right_ico");
                    }
                }
            })

            $(".login_password").blur(function () {
                var $password = $(this).val();
                if ($password == "") {
                    $(".passworderor").html("请输入密码!");
                    $(".passworderor").show();

                    $(".password_wrong_ico").removeClass("right_ico");
                    return false;
                }
                else {
                    $(".passworderor").hide();
                    //$(".password_wrong_ico").removeClass("wrong_ico");
                    $(".password_wrong_ico").addClass("right_ico");
                }
            })
        });

        function ckreg() {
            var isbool = true;


            $("#loginId").trigger("blur");
            $("#password").trigger("blur");

            var errorNum = $(".loginTb td .error:visible").length;
            if (errorNum > 0) {
                isbool = false;
            }
            return isbool;
        }


    </script>

    <style>
        .error {
            color: #e4393c;
            line-height: 36px;
            height: 36px;
            top: 0px;
            padding: 0 5px;
            background: #FFEBEB;
            border: 1px solid #ffbdbe;
        }

        .loginTb td .input_com.on {
            font-size: 12px;
            color: #999999;
        }
    </style>


</head>
<body>
<form name="loginForm" method="post" action="" id="loginForm">


    <!--登陆head start-->
    <div id="ctl00_main_Panel_login" class="loginHead">

        <h1 class="pageName">会员登录</h1>

    </div>
    <!--登陆head end-->
    <!--body start-->
    <div class="loginBody wm">
        <!--登陆表单 开始-->
        <div class="loginMod">
            <h1 class="font14px">请输入账号和密码登录：</h1>
            <table width="570" cellspacing="0" cellpadding="0" border="0" class="loginTb mt10">

                <tbody>
                <tr>
                    <td style="width: 100px;"><span class="tdtitle">账&emsp;&emsp;号：</span></td>
                    <td>
                        <div class="userName_mod">
                            <input name="loginId" type="text" id="loginId" tabindex="1"
                                   class="l_userName login_uName focus_blur input_com on" defalutVlue="用户名"
                                   value="用户名"/>
                        </div>
                    </td>
                    <td><span class="username_wrong_ico" style="float: left"></span>
                        <div class="error usernameerror" style="display: none; width: 100px;"><span
                                style="float: left"></span></div>
                    </td>
                </tr>
                <tr>
                    <td style="width: 100px;"><span class="tdtitle">密&emsp;&emsp;码：</span></td>
                    <td>
                        <div class="passWord_mod">
                            <input name="password" type="password" id="password" tabindex="2"
                                   class="l_password login_password input_com on" placeholder="密码"/>
                        </div>
                    </td>
                    <td><span class="password_wrong_ico" style="float: left"></span>
                        <div class="error passworderor" style="display: none"><span style="float: left"></span></div>
                    </td>
                </tr>
                <tr>
                    <td style="padding-top: 25px; padding-left: 100px;" colspan="3">
                        <a onclick="return ckreg()"
                           id="ctl00_main_btnLogin" tabindex="4" class="login_btn"
                           href="javascript:ajaxLogin()">立即登录</a>
                    </td>
                </tr>
                <tr>
                    <td></td>
                    <td colspan="2">
                        <div class="bottomDetail">
                            <a href="${ctx}/user/page/regist" class="go_register fr">注册账号&gt;&gt;</a>
                            <a class="gray" href="javascript:layer.msg('暂不提供重置密码')">忘记密码？</a>
                        </div>
                    </td>
                </tr>
                </tbody>
            </table>
        </div>
        <!--登陆表单 结束-->
    </div>


</form>
</body>
</html>
