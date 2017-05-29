<%--
  Coding......
  User: D.SR
  Date: 2017/3/6
  Time: 18:14
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>


<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<!DOCTYPE html>
<html>
<head>
    <meta charset="utf-8">
    <title>
        方正集团创新大赛
    </title>
    <meta name="Keywords"
          content="北大科技园新闻,通知通告,最新活动,北京大学成府园区,北大科技园南区,北京上地创业园,包头北大科技园,江西北大科技园,天津宝坻北大科技园,天津武清北大科技园,金华北大科技园,北京大学金华信息科技园,美国硅谷分园,西安北大科技园,天津武清北大科技园,北大中电石家庄北大科技园,青岛北大科技园,南京北大科技园,杭州北大科技园"/>
    <meta name="Description" content="为您实时报道北大科技园及所属企业的相关新闻资讯。"/>

    <%@include file="/WEB-INF/page/public/header.jsp" %>

    <script language="javascript" type="text/javascript" src='${ctx}/static/plugins/jquery/jquery.migrate.js'></script>

    <%--<script type="text/javascript" src="${ctx}/static/js/bshare.b.js"></script>--%>
    <%--<!-- bshare一键分享到其他平台 插件 -->--%>
    <%--<script type="text/javascript" src="${ctx}/static/js/bshareC0.js"></script>--%>
    <%--<!-- bshare一键分享到其他平台 插件 -->--%>
    <link type="text/css" href='${ctx}/static/css/index_regist.css' rel="stylesheet"/>
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
            top.location.href=ctx+"/user/page/regist";
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
    <%--<script language="javascript" src="${ctx}/static/js/DD_belatedPNG_0.0.8a.js"></script>--%>
    <%--<script type="text/javascript">     /* EXAMPLE */   DD_belatedPNG.fix('img,.png');</script> <![endif]-->--%>

    <style>
        #left_child_nav {
            display: none;
        }

        #right_banner {
            display: none;
        }

        .IntentionPark {
            height: 36px;
            border: 0;
            width: 295px;
            color: #999;
        }
    </style>
    <script>


        $(function () {

            loadGroupInfo(function (data) {
                if (data.code != 200) {
                    $(".emailerror").html("数据加载失败，请刷新重试！");
                    $(".emailerror").show();
                    $(".cmail_wrong_ico").removeClass("right_ico");
                    return false;
                } else {
                    var _html = "";
                    var groups = data.data;
                    $.each(groups, function (index, value) {
                        _html += "<option value=" + groups[index].id + ">" + groups[index].name + "</option>";
                    })
                    $("#groupId").append(_html);
                }
            });


            $("#groupId").change(function () {
                var _html = "<option value=''>--请选择--</option>";
                $("#companyId").html("");
                $("#companyId").append(_html);
                var _v = $("#groupId").val();
                if (_v != "") {
                    loadCompanyInfo(_v, function (data) {
                        if (data.code != 200) {
                            $(".emailerror").html("数据加载失败，请刷新重试！");
                            $(".emailerror").show();
                            $(".cmail_wrong_ico").removeClass("right_ico");
                            return false;
                        } else {
                            var _html = "<option value=''>--请选择--</option>";
                            var companys = data.data;
                            $.each(companys, function (index, value) {
                                _html += "<option value=" + companys[index].id + ">" + companys[index].name + "</option>";
                            })
                            $("#companyId").html("");
                            $("#companyId").append(_html);
                        }
                    });
                }
            });

            $("#groupId").blur(function () {
                var $usename = $(this).val();
                if ($usename == "") {
                    $(".grouperror").html('请选择集团!');
                    $(".grouperror").show();
                    //$(".realname_right_ico").addClass("wrong_ico");
                    $(".group_right_ico").removeClass("right_ico");
                    return false;
                }
                else {
                    $(".grouperror").hide();
                    $(".group_right_ico").addClass("right_ico");
                }
            })
            $("#companyId").blur(function () {
                var $usename = $(this).val();
                if ($usename == "") {
                    $(".companyerror").html('请选择公司!');
                    $(".companyerror").show();
                    //$(".realname_right_ico").addClass("wrong_ico");
                    $(".company_right_ico").removeClass("right_ico");
                    return false;
                }
                else {
                    $(".companyerror").hide();
                    $(".company_right_ico").addClass("right_ico");
                }
            })
            $("#department").blur(function () {
                var $usename = $(this).val().replace("部门", "");
                if ($usename == "") {
                    $(".departmenterror").html('请填写部门!');
                    $(".departmenterror").show();
                    //$(".realname_right_ico").addClass("wrong_ico");
                    $(".department_right_ico").removeClass("right_ico");
                    return false;
                }
                else {
                    $(".departmenterror").hide();
                    $(".department_right_ico").addClass("right_ico");
                }
            })


            $(".realname").blur(function () {
                var $usename = $(this).val().replace("姓名", "");
                if ($usename == "") {
                    $(".nameerror").html('请输入姓名!');
                    $(".nameerror").show();
                    //$(".realname_right_ico").addClass("wrong_ico");
                    $(".realname_right_ico").removeClass("right_ico");
                    return false;
                }
                else {
                    $(".nameerror").hide();
                    //$(".realname_right_ico").removeClass("wrong_ico");
                    $(".realname_right_ico").addClass("right_ico");
                }
            })

            $(".mobile").blur(function () {
                var $mobile = $(this).val().replace("手机", "");
                if ($mobile == "") {
                    $(".mobileerror").html('请输入手机!');
                    $(".mobileerror").show();
                    $(".mobile_right_ico").removeClass("right_ico");
                    return false;
                } else {
                    var mail = /^(1\d{10})$/;
                    if (!mail.test($mobile)) {
                        $(".mobileerror").html("手机格式不正确!");
                        $(".mobileerror").show();
                        $(".mobile_wrong_ico").removeClass("right_ico");
                        return false;
                    } else {
                        $(".mobileerror").hide();
                        $(".mobile_right_ico").addClass("right_ico");
                        return true;
//                        $.ajax({
//                            type: "get",
//                            url: encodeURI("../ashx/IsUserMobile.ashx?Mobile=" + $mobile + "&ram=" + Math.random()),
//                            async: false,
//                            success: function (data) {
//                                //返回的数据用data.d获取内容;
//                                if (data == "1") {
//
//                                    $(".mobileerror").html("手机号已存在!");
//                                    $(".mobileerror").show();
//                                    $(".mobile_wrong_ico").removeClass("right_ico");
//                                    return false;
//                                } else {
//                                    $(".mobileerror").hide();
//                                    $(".mobile_right_ico").addClass("right_ico");
//                                    return true;
//                                }
//
//                            }, error: function () {
//                                $(".mobileerror").html("网络异常，请稍后!");
//                                $(".mobileerror").show();
//                                $(".mobile_wrong_ico").removeClass("right_ico");
//                                return false;
//                            }
//                        });
                    }


                }
            })

            $(".email").blur(function () {
                var $email = $(this).val().replace("邮箱", "");
                if ($email == "") {
                    $(".emailerror").html("请输入邮箱!");
                    $(".emailerror").show();
                    //$(".cmail_wrong_ico").addClass("wrong_ico");
                    $(".cmail_wrong_ico").removeClass("right_ico");
                    return false;
                } else {
                    //var mail = /^(\w)+(\.\w+)*@(\w)+((\.\w+)+)$/;
                    //var mail = /^[a-z]([a-z0-9]*[-_]?[a-z0-9]+)*@([a-z0-9]*[-_]?[a-z0-9]+)+[\.][a-z]{2,3}([\.][a-z]{2})?$/i;
                    //var mail = /^[A-Za-zd]+([-_.][A-Za-zd]+)*@([A-Za-zd]+[-.])+[A-Za-zd]{2,5}$/;
                    var mail = /\w+([-+.']\w+)*@\w+([-.]\w+)*\.\w+([-.]\w+)*/;
                    if (!mail.test($email)) {
                        $(".emailerror").html("邮箱格式不正确!");
                        $(".emailerror").show();
                        //$(".cmail_wrong_ico").addClass("wrong_ico");
                        $(".cmail_wrong_ico").removeClass("right_ico");
                        return false;
                    }
                    //判断用户名是否存在
//                    $.ajax({
//                        type: "Post",
//                        url: "Reg.aspx/DoUseremail",
//                        data: "{'email':'" + $email + "'}",
//                        contentType: "application/json; charset=utf-8",
//                        dataType: "json",
//                        success: function (data) {
//                            //返回的数据用data.d获取内容;
//                            if (data.d) {
//                                if (data.d != "") {
//                                    if (data.d == true) {
//                                        $(".emailerror").html("邮箱已存在!");
//                                        $(".emailerror").show();
//                                        $(".cmail_wrong_ico").removeClass("right_ico");
//                                        return false;
//                                    }
//
//                                }
//                            }
//                        }
//                    });
                    $(".emailerror").hide();
                    //$(".cmail_wrong_ico").removeClass("wrong_ico");
                    $(".cmail_wrong_ico").addClass("right_ico");
                }
            })

            $(".loginId").blur(function () {
                var Through = true;
                var $usename = $(this).val().replace("用户名", "");
                if ($usename == "") {
                    $(".usernameerror").html("请输入用户名!");
                    $(".usernameerror").show();

                    //$(".username_wrong_ico").addClass("wrong_ico");
                    $(".username_wrong_ico").removeClass("right_ico");
                    Through = false;
                }
                else {

                    var usrnameyzm = /^([a-zA-Z0-9]|[_]){6,16}$/;
                    if (!usrnameyzm.test($usename)) {
                        $(".usernameerror").html("用户名必须输入6~16位字母或数字!");
                        $(".usernameerror").show();

                        //$(".username_wrong_ico").addClass("wrong_ico");
                        $(".username_wrong_ico").removeClass("right_ico");
                        Through = false;
                    }

                    //判断用户名是否存在
                    $.ajax({
                        type: "Post",
                        url: ctx + "/user/findUserByLoginId/" + $usename,
                        //data: "{'loginId':'" + $usename + "'}",
                        contentType: "application/json; charset=utf-8",
                        dataType: "json",
                        success: function (data) {
                            //返回的数据用data.d获取内容;
                            if (data.code == 200) {

                                $(".usernameerror").html("用户名已存在!");
                                $(".usernameerror").show();

                                //$(".username_wrong_ico").addClass("wrong_ico");
                                $(".username_wrong_ico").removeClass("right_ico");
                                Through = false;

                            }
                        },error:function () {
                            layer.msg("服务拒绝")
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

            $(".password").blur(function () {
                var $password = $(this).val();
                if ($password == "") {
                    $(".passworderor").html("请输入密码!");
                    $(".passworderor").show();

                    //$(".password_wrong_ico").addClass("wrong_ico");
                    $(".password_wrong_ico").removeClass("right_ico");
                    return false;
                }
                else {
                    $(".passworderor").hide();
                    //$(".password_wrong_ico").removeClass("wrong_ico");
                    $(".password_wrong_ico").addClass("right_ico");
                }
            })


            $(".l_towcode").blur(function () {
                var $l_towcode = $(this).val().replace("请输入验证码，5分钟内有效", "");
                if ($l_towcode == "") {
                    $(".SMSVerificationCodeError").html("请输入短信验证码!");
                    $(".SMSVerificationCodeError").show();

                    // $(".password_wrong_ico").addClass("wrong_ico");
                    $(".SMSVerificationCode_wrong_ico").removeClass("right_ico");
                    return false;
                }
                else {
                    $(".SMSVerificationCodeError").hide();
                    //$(".password_wrong_ico").removeClass("wrong_ico");
                    //$(".SMSVerificationCode_wrong_ico").addClass("right_ico");
                }
            });

        })

        function ckreg() {
            var isbool = true;

            $(".realname").trigger("blur");
            $(".email").trigger("blur");
            $(".mobile").trigger("blur");
            $("#loginId").trigger("blur");
            $(".password").trigger("blur");
            $("#groupId").trigger("blur");
            $("#companyId").trigger("blur");
            $("#department").trigger("blur");
            //$(".l_towcode").trigger("blur");

            var errorNum = $(".registerTb td .error:visible").length;
            if (errorNum > 0) {
                isbool = false;
            }
            return isbool;

        }

        function Change() {
            var imgs = document.getElementById('ctl00_main_imgCaptcha');
            imgs.src = imgs.src + '?';
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
    </style>
</head>
<body>
<form  id="registSubmit">


    <!--登陆head start-->
    <div id="ctl00_main_Panel_login" class="loginHead">

        <h1 class="pageName">会员注册</h1>

    </div>
    <!--登陆head end-->
    <!--body start-->
    <div class="loginBody wm" style="padding-top: 40px;">
        <!--登陆表单 开始-->
        <div class="loginMod mb30">
            <h1><span class="font14px">已有账号？</span><a class="gray" href="${ctx}/user/page/login">立即登录</a></h1>
            <table width="420" cellspacing="0" cellpadding="0" border="0" class="registerTb mt10">
                <colgroup>
                    <col width="356">
                </colgroup>
                <tbody>
                <tr>
                    <td><span class="tdtitle">姓&emsp;&emsp;名：</span></td>
                    <td>
                        <div class="userName_mod">
                            <input name="name" type="text" id="ctl00_main_txtTitle" tabindex="1"
                                   class="input_com on focus_blur realname" defalutVlue="姓名" value="姓名"/>
                        </div>
                    </td>
                    <td>
                        <div class="error nameerror" style="display: none; width: 200px;"><span
                                style="float: left"></span></div>
                        <span class="realname_right_ico" style="float: left"></span></td>
                </tr>
                <tr>
                    <td><span class="tdtitle">集&emsp;&emsp;团：</span></td>
                    <td>
                        <div class="company_mod">
                            <select name="groupId" id="groupId" class="IntentionPark">
                                <option value="">--请选择--</option>
                            </select>
                        </div>
                    </td>
                    <td>
                        <div class="error grouperror" style="display: none; width: 200px;"><span
                                style="float: left"></span></div>
                        <span class="group_right_ico" style="float: left"></span></td>
                </tr>
                <tr>
                    <td><span class="tdtitle">公&emsp;&emsp;司：</span></td>
                    <td>
                        <div class="company_mod">
                            <select name="companyId" id="companyId" class="IntentionPark">
                                <option value="">--请选择--</option>
                            </select>
                        </div>
                    </td>
                    <td>
                        <div class="error companyerror" style="display: none; width: 200px;"><span
                                style="float: left"></span></div>
                        <span class="company_right_ico" style="float: left"></span></td>
                </tr>
                <tr>
                    <td><span class="tdtitle">部&emsp;&emsp;门：</span></td>
                    <td>

                        <div class="company_mod">
                            <input name="department" type="text" id="department" tabindex="2"
                                   class="input_com on focus_blur" defalutVlue="部门" value="部门"/>
                        </div>
                    </td>
                    <td>
                        <div class="error departmenterror" style="display: none; width: 200px;"><span
                                style="float: left"></span></div>
                        <span class="department_right_ico" style="float: left"></span></td>
                </tr>
                <tr>
                    <td><span class="tdtitle">邮&emsp;&emsp;箱：</span></td>
                    <td>
                        <div class="mail_mod">
                            <input name="email" type="text" id="ctl00_main_txtEmail" tabindex="3"
                                   class="input_com on focus_blur email" defalutVlue="邮箱" value="邮箱"/>

                        </div>
                    </td>
                    <td>
                        <div class="error emailerror" style="display: none; width: 200px;"><span
                                style="float: left"></span></div>
                        <span class="cmail_wrong_ico" style="float: left"></span></td>

                </tr>
                <tr>
                    <td><span class="tdtitle">手&emsp;&emsp;机：</span></td>
                    <td>
                        <div class="phone_mod">
                            <input name="phone" type="text" id="ctl00_main_txtMobile" tabindex="4"
                                   class="input_com on focus_blur mobile" defalutVlue="手机" value="手机"/>
                        </div>
                    </td>
                    <td>
                        <div class="error mobileerror" style="display: none; width: 200px;"><span
                                style="float: left"></span></div>
                        <span class="mobile_right_ico" style="float: left"></span></td>
                </tr>

                <tr>
                    <td><span class="tdtitle">用&nbsp;户&nbsp;名：</span></td>
                    <td>
                        <div class="loginNmae_mod">
                            <input name="loginId" type="text" id="loginId" tabindex="5"
                                   class="input_com on focus_blur loginId" defalutVlue="用户名" value="用户名"/>

                        </div>
                    </td>
                    <td>
                        <div class="error usernameerror" style="display: none; width: 200px;"><span
                                style="float: left"></span></div>
                        <span class="username_wrong_ico" style="float: left"></span></td>

                </tr>
                <tr>
                    <td><span class="tdtitle">密&emsp;&emsp;码：</span></td>
                    <td>
                        <div class="password_mod">
                            <input name="password" type="password" id="password" tabindex="6"
                                   class="input_com on password" placeholder="密码"/>
                        </div>
                    </td>
                    <td>
                        <div class="error passworderor" style="display: none; width: 200px;"><span
                                style="float: left"></span></div>
                        <span class="password_wrong_ico" style="float: left"></span></td>

                </tr>
                <%--<tr class="tr_park">--%>
                <%--<td><span class="tdtitle">用户类型：</span></td>--%>
                <%--<td>--%>
                <%--<div class="radio_mod">--%>
                <%--<table id="ctl00_main_chkCategory" border="0">--%>
                <%--<tr>--%>
                <%--<td><input id="ctl00_main_chkCategory_0" type="radio" name="ctl00$main$chkCategory"--%>
                <%--value="2"/><label for="ctl00_main_chkCategory_0">在园用户</label></td>--%>
                <%--<td><input id="ctl00_main_chkCategory_1" type="radio" name="ctl00$main$chkCategory"--%>
                <%--value="4" checked="checked"/><label--%>
                <%--for="ctl00_main_chkCategory_1">非在园用户</label></td>--%>
                <%--<td></td>--%>
                <%--<td></td>--%>
                <%--</tr>--%>
                <%--</table>--%>
                <%--</div>--%>
                <%--</td>--%>
                <%--</tr>--%>
                <%--<tr class="tr_park">--%>
                <%--<td colspan="2"><span class="tdtitle">您希望在本站获取哪些信息：</span></td>--%>
                <%--<td></td>--%>
                <%--</tr>--%>
                <%--<tr class="tr_park">--%>
                <%--<td colspan="2">--%>
                <%--<div class="checked_mod">--%>
                <%--<table id="ctl00_main_ckXGXX" border="0">--%>
                <%--<tr>--%>
                <%--<td><input id="ctl00_main_ckXGXX_0" type="checkbox"--%>
                <%--name="ctl00$main$ckXGXX$0"/><label for="ctl00_main_ckXGXX_0">找资本</label>--%>
                <%--</td>--%>
                <%--<td><input id="ctl00_main_ckXGXX_1" type="checkbox"--%>
                <%--name="ctl00$main$ckXGXX$1"/><label for="ctl00_main_ckXGXX_1">找人才</label>--%>
                <%--</td>--%>
                <%--<td><input id="ctl00_main_ckXGXX_2" type="checkbox"--%>
                <%--name="ctl00$main$ckXGXX$2"/><label for="ctl00_main_ckXGXX_2">找项目</label>--%>
                <%--</td>--%>
                <%--<td><input id="ctl00_main_ckXGXX_3" type="checkbox"--%>
                <%--name="ctl00$main$ckXGXX$3"/><label for="ctl00_main_ckXGXX_3">找团队</label>--%>
                <%--</td>--%>
                <%--<td><input id="ctl00_main_ckXGXX_4" type="checkbox"--%>
                <%--name="ctl00$main$ckXGXX$4"/><label for="ctl00_main_ckXGXX_4">找空间</label>--%>
                <%--</td>--%>
                <%--<td><input id="ctl00_main_ckXGXX_5" type="checkbox"--%>
                <%--name="ctl00$main$ckXGXX$5"/><label for="ctl00_main_ckXGXX_5">找技术</label>--%>
                <%--</td>--%>
                <%--<td><input id="ctl00_main_ckXGXX_6" type="checkbox"--%>
                <%--name="ctl00$main$ckXGXX$6"/><label for="ctl00_main_ckXGXX_6">其他</label>--%>
                <%--</td>--%>
                <%--</tr>--%>
                <%--</table>--%>
                <%--</div>--%>
                <%--</td>--%>
                <%--<td></td>--%>
                <%--</tr>--%>
                <%--<tr style="display: none;">--%>
                <%--<td><span class="tdtitle">验&nbsp;证&nbsp;码：</span></td>--%>
                <%--<td>--%>
                <%--<input name="ctl00$main$txtCaptcha" type="text" id="ctl00_main_txtCaptcha" tabindex="8"--%>
                <%--class="l_towcode input_com on focus_blur" defalutVlue="验证码" value="验证码"/>--%>
                <%--<img id="ctl00_main_imgCaptcha" class="imgcaptcha" src=""--%>
                <%--style="border-width:0px;"/>&nbsp;<a style="cursor: pointer" class="blue"--%>
                <%--onclick="Change()">换一换</a></td>--%>
                <%--</tr>--%>
                <%--<tr>--%>
                <%--<td><span class="tdtitle">邮箱验证码：</span></td>--%>
                <%--<td>--%>
                <%--<input name="ctl00$main$txtSMSVerificationCode" type="text"--%>
                <%--id="ctl00_main_txtSMSVerificationCode" tabindex="8"--%>
                <%--class="l_towcode input_com on focus_blur" defalutVlue="请输入验证码，5分钟内有效"--%>
                <%--value="请输入验证码，5分钟内有效"/>--%>
                <%--<a id="btnCaptcha" href="javascript:;" style="margin-left: -9px; width: 200px; cursor: pointer"--%>
                <%--class="blue"--%>
                <%--onclick="f_GenCaptcha($('input:text[id$=txtMobile]').val(),1,f_Second)">获取验证码</a>--%>
                <%--<input type="hidden" name="ctl00$main$hidCaptcha" id="ctl00_main_hidCaptcha"/>--%>
                <%--</td>--%>
                <%--<td>--%>
                <%--<div class="error SMSVerificationCodeError" style="display: none; width: 200px;"><span--%>
                <%--style="float: left"></span></div>--%>
                <%--<span class="SMSVerificationCode_wrong_ico" style="float: left"></span></td>--%>
                <%--</tr>--%>
                <tr>
                    <td style="padding-top: 25px" colspan="2">
                        <a onclick="return ckreg();" id="ctl00_main_btnLogin" tabindex="9" class="login_btn"
                           href="javascript:registSubmit()">提交</a>
                    </td>
                </tr>

                </tbody>
            </table>
        </div>
        <!--登陆表单 结束-->
    </div>


    <script language='javascript'>$('.tr_park_IntentionPark').hide();
    ;</script>
</form>
</body>
</html>

