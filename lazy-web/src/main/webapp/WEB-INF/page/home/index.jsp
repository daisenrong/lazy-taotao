<%@ page import="com.lazy.web.pojo.User" %><%--
  Coding......
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
    <meta name="viewport"
          content="width=device-width,height=device-height,maximum-scale=1.0,user-scalable=no">
    <meta name="apple-mobile-web-app-capable" content="yes">
    <meta name="apple-mobile-web-app-status-bar-style" content="black">
    <meta name="format-detection" content="telephone=no">


    <link rel="stylesheet" href="${ctx}/static/css/reset.css">
    <link rel="stylesheet" href="${ctx}/static/css/pages.css?v=1.0">
    <link rel="stylesheet" href="${ctx}/static/css/newcasa.css?v=1.0">
    <link rel="stylesheet" href="${ctx}/static/css/index.css?v=1.0">
    <%--<script language="javascript" src="${ctx}/static/plugins/jquery/jquery-1.7.1.min.js"></script>--%>
    <script language="javascript" src="${ctx}/static/plugins/jquery/jquery.SuperSlide.2.1.1.js"></script>
    <script>
        //判断是否是top，如果不是，那么就重新跳转
        if (this != top) {
            top.location.href = ctx + "/";
        }
        $(function () {
            autoHeight();
            $(window).resize(function () {
                autoHeight();
            })

        })
        $(document).ready(function (e) {
            showhide(".page_award_mod .hd ul li", ".page_award_mod .bd");
            //点击切换
            function showhide(clicked, showhied) {
                $(clicked).eq(0).addClass("on").siblings().removeClass("on");
                $(showhied).eq(0).removeClass("on").siblings().addClass("on");
                $(clicked).click(function () {
                    $index = $(this).index();
                    $(clicked).eq($index).addClass("on").siblings().removeClass("on");
                    $(showhied).eq($index).removeClass("on").siblings().addClass("on");
                })
            }

        })

        function autoHeight() {
            var windowHeight = $(window).height();
            if (windowHeight < 850 && windowHeight > 632) {
                $("#container").addClass("smallContainer");
                $("#container").removeClass("smallContainerToo");
            }
            else if (windowHeight >= 850) {
                $("#container").removeClass("smallContainer");
                $("#container").removeClass("smallContainerToo");
            }
            else if (windowHeight < 632) {
                $("#container").addClass("smallContainerToo");
                $("#container").removeClass("smallContainer");
            }
        }

    </script>

    <script>
        function autoscroll(obj) {
            $(obj).find("ul:first").animate({
                marginTop: "-96px"
            }, 500, function () {
                $(this).css({marginTop: "0px"}).find("li:first").appendTo(this);
            });
        }

        $(document).ready(function () {
            var scroll = setInterval('autoscroll("#scrolldiv")', 3000)
            $("#scrolldiv li").mouseover(function () {
                clearInterval(scroll)
            })
            $("#scrolldiv li").mouseout(function () {
                scroll = setInterval('autoscroll("#scrolldiv")', 3000)
            })
        });
    </script>

    <style type="text/css">
        .smallContainer .inform {
            margin-top: -221px;
        }

        .smallContainerToo .inform {
            margin-top: -168px;
        }

        .inform {
            font-family: "微软雅黑";
            width: 260px;
            position: absolute;
            right: 30px;
            top: 50%;
            z-index: 5555;
            overflow: hidden;
            margin-top: -15%;
        }

        .inform .top {
            height: 15px;
            width: 100%;
            background: url(${ctx}/static/images/to_bg1.png) no-repeat left top;
        }

        .inform .mid {
            height: auto;
            overflow: hidden;
            width: 100%;
            background: url(${ctx}/static/images/to_bg2.png) repeat-y left center;
        }

        .inform .bottom {
            height: 15px;
            width: 100%;
            background: url(${ctx}/static/images/to_bg3.png) no-repeat left top;
        }

        .inform h2 {
            position: relative;
            height: 30px;
            background: url(${ctx}/static/images/tit_21.png) no-repeat 20px center;
            z-index: 5557;
        }

        .inform h2 a {
            z-index: 5558;
            width: 16px;
            height: 16px;
            position: absolute;
            right: 20px;
            top: 8px;
            display: inline-block;
            background: url(${ctx}/static/images/col_1.png) no-repeat center center;
        }

        .inform p {
            color: #fff;
            font-size: 14px;
            line-height: 24px;
            position: relative;
            z-index: 55557;
            padding: 0 20px;
        }

        .inform p.p_line {
            padding: 0;
            height: 4px;
            width: 90%;
            margin: 10px auto 0;
            background: url(${ctx}/static/images/to_line.png) no-repeat center center;
        }

        .inform p span {
            display: inline-block;
        }

        #scrolldiv {
            position: relative;
            height: 66px;
            overflow: hidden;
            margin: 10px 20px 0;
            z-index: 10;
            padding-bottom: 10px;
            border-bottom: #fff solid 1px;
        }

        .scrolldiv2 {
            padding: 15px 0 0 19px;
        }

        .scrolldiv2 .bd ul li {
            font-size: 12px;
            color: #fff;
            height: 20px !important;
        }

        /*.inform ul{margin-top:10px;}*/
        .inform ul li a {
            display: block;
            color: #fff;
            font-size: 14px;
            line-height: 24px;
            height: 66px;
            position: relative;
            z-index: 55557;
            /*padding: 0 20px;*/
        }

        .inform p.p2 {
            margin-top: -8px;
        }

        .smallContainerToo.inform {
            width: 260px;
            /*margin-top: -91px;*/
        }

        .smallContainer.inform .top {
            height: 15px;
            width: 100%;
            background: url(${ctx}/static/images/to_bg1.png) no-repeat left top;
        }

        .smallContainer.inform .mid {
            height: auto;
            overflow: hidden;
            width: 100%;
            background: url(${ctx}/static/images/to_bg2.png) repeat-y left center;
        }

        .smallContainer.inform .bottom {
            height: 15px;
            width: 100%;
            background: url(${ctx}/static/images/to_bg3.png) no-repeat left top;
        }

        .smallContainerToo.inform .top {
            height: 15px;
            width: 100%;
            background: url(${ctx}/static/images/to_bg1.png) no-repeat left top;
        }

        .smallContainerToo.inform .mid {
            height: auto;
            overflow: hidden;
            width: 100%;
            background: url(${ctx}/static/images/to_bg2.png) repeat-y left center;
        }

        .smallContainerToo.inform .bottom {
            height: 15px;
            width: 100%;
            background: url(${ctx}/static/images/to_bg3.png) no-repeat left top;
        }
    </style>

</head>

<body style="overflow: hidden;" class="site-casa page-stable">
<!--头部 开始-->
<div class="bi_head">
    <div id="menu" class="bi_head_con wm">

        <%
            User user = (User) request.getSession().getAttribute("user");
            if (user == null) {
        %>
        <span class='loginRegister fr'><a class='login_a' href='${ctx}/user/page/login'>登录</a><a
                class='register_a' href='${ctx}/user/page/regist'>注册</a> </span>
        <%
        } else {
        %>
        <span class='loginRegister fr'><a class='login_a' href='${ctx}/user/page/index'>${user.name}</a><a
                class='register_a' href='javascript:ajaxLogout()'>退出</a> </span>
        <%
            }
        %>

        <%--<span class='loginRegister fr'><a class='login_a' href='${ctx}/user/page/login'>${user.name}aa登录</a><a class='register_a'  href = '${ctx}/user/page/regist'> 注册 </a> </span>--%>

        <ul class="bi_nav fr clearfix">
            <li><a class="home on" href="${ctx}/">大赛首页</a></li>
            <li><a class="dsjj" href="${ctx}/home/page/contestIntroduction">大赛简介</a></li>
            <li><a class="xwzx" href="#">LOGO大赛</a></li>
            <li><a class="pwds" href="#">创新课堂</a></li>
            <li><a class="hzjg" href="#">新闻资讯</a></li>
            <%--<li><a class="wjds" href="${ctx}/Previous.aspx">往届大赛</a></li>--%>
        </ul>
        <a href="http://www.founder.com/" target="_blank"><img src="${ctx}/static/images/logo-cqwl.png?v=1.0"/></a>
        <%--<img src="${ctx}/static/images/logo-fgx.png"/>--%>
        <%--<a href="#"><img src="${ctx}/static/images/logo-kjy.png"/></a>--%>


    </div>
</div>
<!--头部 结束-->

<div id="container" class="container">
    <!--第一版 开始-->
    <div id="page_intro" class="page page-intro">
        <div class="new1111">
        </div>
        <Div class="inform" data-cmsareaid="43">
            <div class="top"></div>
            <div class="mid">
                <h2><a href="#" class="colea"></a></h2>
                <%--<div id="scrolldiv2">--%>
                <%--<ul>--%>
                <%--<li><a>方正集团2017年创新大赛火热报名中，更多信息请查看大赛简介。<br>--%>
                <%--赛事咨询：陈海燕<br>--%>
                <%--联系电话：010-82529306<br>--%>
                <%--邮箱：chenhy@founder.com<br>--%>
                <%--</a></li>--%>

                <%--</ul>--%>
                <%--</div>--%>
                <%--<div class="scrolldiv2">--%>
                <%--<div class="bd">--%>
                <%--<ul>--%>
                <%--<li>赛事咨询：</li>--%>
                <%--<li>陈海燕</li>--%>
                <%--<li>联系电话：</li>--%>
                <%--<li>010-82529306</li>--%>
                <%--<li>邮箱：</li>--%>
                <%--<li>chenhy@founder.com</li>--%>
                <%--<li>-----------------</li>--%>
                <%--&lt;%&ndash;<li>北京城市赛：</li>&ndash;%&gt;--%>
                <%--&lt;%&ndash;<li>报名截止时间：9月15日</li>&ndash;%&gt;--%>
                <%--&lt;%&ndash;<li>联系电话：</li>&ndash;%&gt;--%>
                <%--&lt;%&ndash;<li>010-56081460</li>&ndash;%&gt;--%>
                <%--&lt;%&ndash;<li>赛事咨询：</li>&ndash;%&gt;--%>
                <%--&lt;%&ndash;<li>zhangyahan@pkusp.com.cn</li>&ndash;%&gt;--%>
                <%--&lt;%&ndash;<li>-----------------</li>&ndash;%&gt;--%>
                <%--</ul>--%>
                <%--</div>--%>
                <%--</div>--%>
                <div class="scrolldiv" style="color: white;padding-left: 20px;">
                    <div class="bd">
                        <ul>
                            <li>方正集团2017年创新大赛火热报名中</li>
                            <li>更多信息请查看大赛简介。</li>
                            <li>赛事咨询：陈海燕</li>
                            <li>联系电话：010-82529306</li>
                            <li>邮箱：chenhy@founder.com</li>
                            <li>-----------------</li>
                        </ul>
                    </div>
                </div>
                <div class="scrolldiv2">
                    <div class="bd" id="groupRank">
                        <ul>
                            <li>企业申报数量排名TOP10</li>
                            <li>1.集团总部</li>
                            <li>2.信产集团</li>
                            <li>3.医疗集团</li>
                            <li>4.资源集团</li>
                            <li>5.物产集团</li>
                            <li>6.方正证券</li>
                            <li>7.方正人寿</li>
                            <li>8.中国高科</li>
                            <li>9.苏钢集团</li>
                            <li>10.方正微电子</li>
                            <li>-----------------</li>
                        </ul>
                    </div>
                </div>
                <script>
                    //替换公司排名
                    groupRank();
                    function groupRank() {
                        $.ajax({
                            async: false,
                            type: "Post",
                            url: "${ctx}/group/getGroupRank",
                            contentType: "application/json; charset=utf-8",
                            //dataType: "json",
                            success: function (data) {
                                if (data.code != 200)
                                    return;
                                var _html = "";
                                _html = "<ul> <li>企业申报数量排名TOP10</li>";
                                var maps = data.data;
                                var count=maps.length;
                                if (count>10){
                                    count=10;
                                }
                                for (var i = 0; i < count; i++) {
                                    _html += "<li>" + (i + 1) + "." + maps[i].name + "</li>";
                                }
                                _html += "<li>-----------------</li></ul>";
                                $("#groupRank").html("");
                                $("#groupRank").append(_html);
//                                Myslide();
                            },
                            error: function (err) {
                                layer.msg(err.msg);
                            }
                        });
                    }

                    jQuery(".scrolldiv2").slide({
                        mainCell: ".bd ul",
                        autoPlay: true,
                        effect: "topMarquee",
                        vis: 6,
                        interTime: 50,
                        trigger: "click"
                    });


                </script>
                <%--<div style="display:none;">--%>
                <%--<p class="p_line"></p>--%>
                <%--<p class="p2" style="padding-top: 6px;"><span>大赛组委会信息：</span></p>--%>
                <%--<p class="p3"><span>赛事QQ群：205800558</span></p>--%>
                <%--<p class="p4"><span>赛事咨询：contest@pkusp.com.cn</span></p>--%>
                <%--</div>--%>
            </div>
            <div class="bottom"></div>
            <script type="text/javascript">
                $(function () {
                    $('.inform a.colea').click(function () {
                        $(this).closest('.inform').animate({right: "-270px"}, 500);
                    });
                    if (screen.width <= 1400 && screen.width <= 1280) {
                        $('#page_intro .inform').addClass('smallContainer').removeClass('smallContainerToo');
                    } else if (screen.width < 1280) {
                        $('#page_intro .inform').addClass('smallContainerToo').removeClass('smallContainer');
                    }
                    ;


                })
            </script>
        </Div>
        <script type="text/javascript">

        </script>
        <div class="page-wrap">
            <div class="page_intro_mod">
                <p class="first_bj_01"></p>
                <div class="rukouBtn">
                    <a class="csbm_btn" href="${ctx}/match/page/signUp"></a>
                    <!--<a class="wycs_btn" href="/Activity/Watch/Registration.aspx?ID=16"></a>-->
                </div>
                <p class="weixin"></p>
                <a class="scroll-down-wrap js-next-page">
                    <img src="${ctx}/static/images/index.gif"/>
                </a>
            </div>
        </div>
    </div>
    <!--第一版 结束-->
    <!-- 第五版 开始 -->
    <div id="page_award" class="page page_award" style="display: none;">
        <div class="page-wrap">
            <div class="page_award_mod">
                <p class="jx_title">
                    <img src="${ctx}/static/images/jx_title.jpg">
                </p>
                <div class="hd">
                    <i></i>
                    <ul class="clearfix">
                        <li>团队项目</li>
                        <li>企业项目</li>
                    </ul>
                </div>
                <div class="bd">
                    <ul class="clearfix">

                        <li>
                            <a href='#'>
                                <img src='http://www.pkusp.com.cn/Upload/CRMContact/201512/fdaa711a8d81b364.gif'>
                            </a>
                            <h1><a href='#'>脑卒中眼底图自动检测云服务</a></h1>
                            <a href='#'>
                                <p>【团队组一等奖】眼底图脑卒中自动检测云服务基于云计算实现了..</p>
                            </a>
                        </li>

                        <li>
                            <a href='#'>
                                <img src='http://www.pkusp.com.cn/Upload/CRMContact/201512/c7d4cb20511bc2fc.gif'>
                            </a>
                            <h1><a href='#'>CAM MED</a></h1>
                            <a href='#'>
                                <p>【团队组二等奖】Cam Med LLC致力于开发世界上第一款真正的贴..</p>
                            </a>
                        </li>

                        <li>
                            <a href='#'>
                                <img src='http://www.pkusp.com.cn/Upload/CRMContact/201512/647004873de6a199.png'>
                            </a>
                            <h1><a href='#'>精睿土木工程无损检测</a></h1>
                            <a href='#'>
                                <p>【团队组二等奖】本公司致力于为土木工程,尤其是隧道,桥梁,道..</p>
                            </a>
                        </li>

                        <li>
                            <a href='#'>
                                <img src='http://www.pkusp.com.cn/Upload/CRMContact/201512/894788ea8e318aef.png'>
                            </a>
                            <h1><a href='#'>恶性肿瘤纳米磁粉磁热疗治疗仪</a></h1>
                            <a href='#'>
                                <p>【团队组三等奖】恶性肿瘤纳米磁粉磁热疗是一种利用肿瘤细胞对..</p>
                            </a>
                        </li>

                        <li>
                            <a href='#'>
                                <img src='http://www.pkusp.com.cn/Upload/CRMContact/201512/9c2e9ad02cc5e126.png'>
                            </a>
                            <h1><a href='#'>可变体积隔热材料</a></h1>
                            <a href='#'>
                                <p>【团队组三等奖】Thermo-Fender 是我们历时20年时间不断利用新..</p>
                            </a>
                        </li>


                    </ul>
                </div>
                <div class="bd">
                    <ul class="clearfix">

                        <li>
                            <a href='#'>
                                <img src='http://www.pkusp.com.cn/Upload/CRMContact/201512/a43e8d84383fa26f.png'>
                            </a>
                            <h1><a href='#'>深圳晶泰科技有限公司</a></h1>
                            <p><a href='#'>【企业组一等奖】深圳晶泰科技目前开发的药物晶型高精度预测结..</a></p>
                        </li>

                        <li>
                            <a href='#'>
                                <img src='http://www.pkusp.com.cn/Upload/CRMContact/201512/71e6419f95931b41.png'>
                            </a>
                            <h1><a href='#'>北京合思信息技术有限公司</a></h1>
                            <p><a href='#'>【企业组二等奖】北京合思信息技术有限公司是专业的企业报销及..</a></p>
                        </li>

                        <li>
                            <a href='#'>
                                <img src='http://www.pkusp.com.cn/Upload/CRMContact/201512/c5c3bcae9d964799.png'>
                            </a>
                            <h1><a href='#'>北京阿迈特医疗器械有限公司</a></h1>
                            <p><a href='#'>【企业组二等奖】北京阿迈特医疗器械有限公司成立于2011年4月..</a></p>
                        </li>

                        <li>
                            <a href='#'>
                                <img src='http://www.pkusp.com.cn/Upload/CRMContact/201512/246b3a82c530c5db.png'>
                            </a>
                            <h1><a href='#'>北京宠知道科技有限公司</a></h1>
                            <p><a href='#'>【企业组三等奖】宠知道是中国最专业的宠物o2o服务提供商:
                                宠..</a></p>
                        </li>

                        <li>
                            <a href='#'>
                                <img src='http://www.pkusp.com.cn/Upload/CRMContact/201512/88cbbe910de391dd.png'>
                            </a>
                            <h1><a href='#'>浙江日福莱科技股份有限公司</a></h1>
                            <p><a href='#'>【企业组三等奖】金华市区300家社区开100家线上线下实体店,自..</a></p>
                        </li>

                        <li>
                            <a href='#'>
                                <img src='http://www.pkusp.com.cn/Upload/CRMContact/201512/126ccf07f6e5ed7.png'>
                            </a>
                            <h1><a href='#'>南京博敏达生物科技有限公司</a></h1>
                            <p><a href='#'>【企业组三等奖】博敏达生物科技致力于成为专业化的宠物和动物..</a></p>
                        </li>

                    </ul>
                </div>
            </div>
        </div>
    </div>
    <!-- 第五版 结束 -->
    <!--第二版 开始-->
    <div id="page_buy" class="page page-buy">
        <div class="page_buy_mod">
            <div class="dsgk_title">
                <img id="controlImg04" src="${ctx}/static/images/dsgk_title.png"/>
            </div>
            <div class="dsgk_detail">
                “方正集团创新大赛”是由方正集团发起，以“创新驱动发展战略”为导向，以“世界在变，创新不变”的企业文化为宗旨的集团内部创新创业大赛。大赛旨在充分唤起员工的创新热情，激活方正创新基因，通过不断创新实现方正集团愿景“为人们创造更智能、更健康、更富足的生活”。本届大赛所有方正集团在职员工均可报名参赛，赛事将分为技术创新组、管理创新组、运营创新组、商业模式创新组及创业组来评比，最终角逐年度创新大奖及创业基金。
            </div>
            <div class="zzjg_title">
                <img src="${ctx}/static/images/zzjg_title.png"/>
            </div>
            <ul class="zzjg_detail_ul">
                <li class="cbdw_li">
                    <p>北京大学</p>
                    <%--<p>教育部</p>--%>
                    <%--<p>北京大学</p>--%>
                    <%--<p>北京市科委</p>--%>
                    <%--<p>中关村管委会</p>--%>
                    <%--<p>海淀区政府</p>--%>
                </li>
                <li class="zddw_li">
                    <p>北大方正集团有限公司
                    </p>
                    <%--<p>北大科技园</p>--%>
                </li>
                <%--<li class="zbdw_li">--%>
                <%--<p>集团战略部</p>--%>
                <%--<p>集团办公室</p>--%>
                <%--<p>集团品牌部</p>--%>
                <%--<p>集团信息部</p>--%>
                <%--<p>集团人力资源部</p>--%>

                <%--</li>--%>
            </ul>
        </div>
    </div>
    <!--第二版 开始-->
    <!--第三版 开始-->
    <div id="page_gps" class="page page-gps">
        <div class="scjs_title">
            <img src="${ctx}/static/images/scjs_title.png"/>
        </div>
        <div class="scjs_detail">
            <div class="scjs_detail_main">
                <div class="scjs_detail_con">
                </div>
            </div>
        </div>
        <div class="bottom_bj"></div>
    </div>
    <!--第三版 结束-->
    <!--第四版 开始-->
    <div id="page_sound" class="page page-sound">
        <div class="page-wrap">
            <div style="width: 1000px" class="page_sound_mod">
                <p align="center">
                    <img src="${ctx}/static/images/sszx.png"/>
                </p>
                <div id="controlDiv" class="mt20 clearfix">
                    <!--图片新闻左侧 开始-->

                </div>
            </div>
        </div>
    </div>
    <!--第四版 结束-->
    <!--第五版 结束-->
    <div id="page_sound5" class="page page-sound5">
        <div class="page-wrap">
            <div style="width: 1000px" class="page_sound_mod5">
                <p align="center">
                    <img src="${ctx}/static/images/zczc.png"/>
                </p>
                <div id="controlDiv5" class="mt20 clearfix">
                    <!--图片新闻左侧 开始-->

                </div>
            </div>
        </div>
    </div>
    <!--第五版 结束-->
    <!--第六版 结束-->
    <div id="page_sound6" class="page page-sound6">
        <div class="page-wrap">
            <div style="width: 1000px" class="page_sound_mod6">
                <p align="center">
                    <img src="${ctx}/static/images/dsjl.png"/>
                </p>
                <div id="controlDiv6" class="mt20 clearfix">
                    <!--图片新闻左侧 开始-->

                </div>
            </div>
        </div>
    </div>
    <!--第六版 结束-->

    <div id="wrap_page_inspect" class="pager-wrap">
        <ul class="pager-inner">
            <li class="pager pager-0"><a href="#%21p0" data-page="0"
                                         class="pager-link js-transfer-page pager-link-0"><i>开始</i></a></li>
            <li class="pager pager-1" style="display: none;"><a href="#%21p1" data-page="1"
                                                                class="pager-link js-transfer-page pager-link-1"><i>获奖项目</i></a>
            </li>
            <li class="pager pager-2"><a href="#%21p2" data-page="2"
                                         class="pager-link js-transfer-page pager-link-2"><i>概况机构</i></a></li>
            <li class="pager pager-3"><a href="#%21p3" data-page="3"
                                         class="pager-link js-transfer-page pager-link-3"><i>赛程介绍</i></a></li>
            <li class="pager pager-4"><a href="#%21p4" data-page="4"
                                         class="pager-link js-transfer-page pager-link-4"><i>评选类型</i></a></li>
            <li class="pager pager-5"><a href="#%21p5" data-page="5"
                                         class="pager-link js-transfer-page pager-link-5"><i>支持政策</i></a></li>
            <li class="pager pager-6"><a href="#%21p6" data-page="6"
                                         class="pager-link js-transfer-page pager-link-6"><i>大赛奖励</i></a></li>
        </ul>
    </div>
    <div id="wrap_page_inspect" class="pager-wrap">
        <ul class="pager-inner">
            <li class="pager pager-0"><a href="#%21p0" data-page="0"
                                         class="pager-link js-transfer-page pager-link-0"><i>开始</i></a></li>
            <li class="pager pager-1" style="display: none;"><a href="#%21p1" data-page="1"
                                                                class="pager-link js-transfer-page pager-link-1"><i>获奖项目</i></a>
            </li>
            <li class="pager pager-2"><a href="#%21p2" data-page="2"
                                         class="pager-link js-transfer-page pager-link-2"><i>概况机构</i></a></li>
            <li class="pager pager-3"><a href="#%21p3" data-page="3"
                                         class="pager-link js-transfer-page pager-link-3"><i>赛程介绍</i></a></li>
            <li class="pager pager-4"><a href="#%21p4" data-page="4"
                                         class="pager-link js-transfer-page pager-link-4"><i>评选类型</i></a></li>
            <li class="pager pager-5"><a href="#%21p5" data-page="5"
                                         class="pager-link js-transfer-page pager-link-5"><i>支持政策</i></a></li>
            <li class="pager pager-6"><a href="#%21p6" data-page="6"
                                         class="pager-link js-transfer-page pager-link-6"><i>大赛奖励</i></a></li>
        </ul>
    </div>


    <!--foot start-->
    <%--<div id="page_footer" class="bi_foot footer">--%>
    <%--<p align="center" style="text-align: left; width: 980px; margin: 0px auto; margin-top: 10px;">--%>
    <%--<img src='${ctx}/static/banner/images/f1.jpg' class="f-2 fl"><img src='${ctx}/static/banner/images/f4.jpg'--%>
    <%--class="f-1 fl">--%>
    <%--<a href='/'>--%>
    <%--<img src='${ctx}/static/banner/images/f2.jpg' class="f-1 fl"></a>--%>
    <%--<img src='${ctx}/static/banner/images/f4.jpg' class="f-1 fl"><img src='${ctx}/static/banner/images/f3.jpg'--%>
    <%--class="f-1 fl">--%>
    <%--<div style="clear: both"></div>--%>
    <%--</p>--%>
    <%--<style>--%>
    <%--.f-1 {--%>
    <%--margin-left: 50px;--%>
    <%--}--%>
    <%--</style>--%>
    <%--<p align="center" class="copy" style="text-align: left; width: 980px; margin: 0px auto; margin-top: 10px;">--%>
    <%--<span class="copy_text">Copyright 2014-2015 Peking University Science Park All rights reserved</span>--%>
    <%--<span class="copy_num">京ICP备05014306号&nbsp;&nbsp;&nbsp;&nbsp;京公网安备110108003491号</span> <span class="foot_a"><a--%>
    <%--style="display: none;" href="/cyds/About.aspx">关于我们</a><a href="/cyds/Contact.aspx">联系我们</a>--%>
    <%--<a href="${ctx}/Recruitment.aspx">常见问题</a></span>--%>
    <%--</p>--%>
    <%--</div>--%>
    <!--foot end-->


    <script defer="defer">
        var _hmt = _hmt || [];
        (function () {
            var hm = document.createElement("script");
            hm.src = "//hm.baidu.com/hm.js?116b8dca1073a38f6136ca633be6b7ce";
            var s = document.getElementsByTagName("script")[0];
            s.parentNode.insertBefore(hm, s);
        })();
    </script>


</div>
<script src="${ctx}/static/plugins/jquery/jqueryrequire.js"></script>
<script>(function () {
    var e = $("#popup_nav_qrcode_app");
    $("#btn_app_download").hover(function () {
        e.addClass("M-pqr-wrap-active")
    }, function () {
        e.removeClass("M-pqr-wrap-active")
    });
    var t = $("#popup_nav_qrcode_weixin");
    $("#btn_weixin").hover(function () {
        t.addClass("M-pqr-wrap-active")
    }, function () {
        t.removeClass("M-pqr-wrap-active")
    });
    var n = $("#footer_weixin_qrcode");
    $("#btn_weixin_qrcode").hover(function () {
        n.addClass("s-qrcode-weixin-active")
    }, function () {
        n.removeClass("s-qrcode-weixin-active")
    })
})()</script>
<script>requirejs.config({baseUrl: "/resource/"})</script>
<%--<script src="${ctx}/static/js/0ddb3eeb.js"></script>--%>
<%--<script>monitor.setProject("360_kids").getTrack().getClickAndKeydown()</script>--%>
<script src="${ctx}/static/js/casa.js"></script>
<!--[if IE 6]>
<script src="http://s7.qhimg.com/static/f54f2caa703115b3/DD_belatedPNG/DD_belatedPNG_0.0.8a.js"></script>
<script>DD_belatedPNG.fix(".SC,.pngfix,.flower-s,.flower-l")</script> <![endif]-->
<!--<script>/(iPhone|Android|iPad|BlackBerry|Windows Phone|XiaoMi)/.test(navigator.userAgent)&&(location.href="/wap.index.html")</script>-->


<%@include file="/WEB-INF/page/public/footer.jsp" %>

</body>
</html>

