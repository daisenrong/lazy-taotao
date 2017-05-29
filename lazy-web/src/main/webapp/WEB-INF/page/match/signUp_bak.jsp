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

        .layui-form-label {
            float: left;
            display: block;
            padding: 9px 15px;
            width: 100px;
            font-weight: 400;
            text-align: right;
        }

        .layui-form-select .layui-input {
            margin-left: 10px;
        }

        .layui-form-select dl {
            left: 10px;
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

        <h1 class="pageName">会员登录</h1>

    </div>
    <div class="mymain centermy" style="margin-top: 50px">
        <div class="page-header text-center">
            <h1 style="font-size: 40px">方正集团创业大赛报名</h1>
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
        <form class="form-horizontal" action="#" id="matchForm">
            <div class="page-header text-center">
                <h1 style="font-size: 20px;color: #777">项目基本信息</h1>
            </div>
            <div class="form-group">
                <label class="col-sm-2 control-label">项目名称</label>
                <div class="col-sm-10">
                    <input name="projectName" type="text" class="form-control" id="inputEmail3" placeholder="请输入项目名称">
                </div>
            </div>
            <div class="form-group">
                <label class="col-sm-2 control-label">项目简介</label>
                <div class="col-sm-10">
                    <textarea name="info" class="form-control" rows="3" placeholder="项目简介"></textarea>
                </div>
            </div>
            <div class="form-group">
                <label for="inputEmail3" class="col-sm-2 control-label">项目类别</label>
                <div class="col-sm-10">
                    <label class="checkbox-inline">
                        <input type="checkbox" name="subject" id="inlineCheckbox1" value="技术"> 技术
                    </label>
                    <label class="checkbox-inline">
                        <input type="checkbox" name="subject" id="inlineCheckbox2" value="模式"> 模式
                    </label>
                    <label class="checkbox-inline">
                        <input type="checkbox" name="subject" id="inlineCheckbox3" value="运营"> 运营
                    </label>
                    <label class="checkbox-inline">
                        <input type="checkbox" name="subject" id="inlineCheckbox4" value="管理"> 管理
                    </label>
                </div>
            </div>

            <div class="form-group">
                <label class="col-sm-2 control-label">项目背景</label>
                <div class="col-sm-10">
                    <textarea name="background" class="form-control" rows="3" placeholder="开展该项目的初衷、原因"></textarea>
                </div>
            </div>
            <div class="form-group">
                <label class="col-sm-2 control-label">项目目标</label>
                <div class="col-sm-10">
                    <textarea name="target" class="form-control" rows="3"
                              placeholder="与背景对应，期望通过该项目而达到的预期结果"></textarea>
                </div>
            </div>
            <div class="form-group">
                <label class="col-sm-2 control-label">实施计划</label>
                <div class="col-sm-10">
                    <textarea name="plan" class="form-control" rows="3" placeholder="在未来3~7个月内，对该项目的研究或推进日程"></textarea>
                </div>
            </div>
            <div class="form-group">
                <label class="col-sm-2 control-label">团队人数</label>
                <div class="col-sm-10 form-inline">
                    <select name="peopleNum" class="form-control">
                        <option value="">请选择人数</option>
                        <option value="1">1</option>
                        <option value="2">2</option>
                        <option value="3">3</option>
                        <option value="4">4</option>
                        <option value="5">5</option>
                        <option value="6">6</option>
                        <option value="7">7</option>
                        <option value="8">8</option>
                        <option value="9">9</option>
                        <option value="10">10</option>
                    </select>
                </div>
            </div>
            <div class="form-group">
                <label class="col-sm-2 control-label">预期收益</label>
                <div class="col-sm-10">
                    <textarea name="profit" class="form-control" rows="3"
                              placeholder="该项目落地后，预期能够给集团或企业带来的利益"></textarea>
                </div>
            </div>
            <div class="form-group">
                <label class="col-sm-2 control-label">专利及知识产权情况</label>
                <div class="col-sm-10">
                    <textarea name="situation" class="form-control" rows="3"
                              placeholder="如是否预期申请专利或是否涉及他人专利、知识产权的情况"></textarea>
                </div>
            </div>
            <div class="form-group">
                <label class="col-sm-2 control-label">核心竞争优势</label>
                <div class="col-sm-10">
                    <textarea name="advantage" class="form-control" rows="3"
                              placeholder="在未来3~7个月内，对该项目的研究或推进日程"></textarea>
                </div>
            </div>
            <div class="form-group">
                <label class="col-sm-2 control-label">所需资源支持</label>
                <div class="col-sm-10">
                    <textarea name="resources" class="form-control" rows="3"
                              placeholder="在未来3~7个月内，对该项目的研究或推进日程"></textarea>
                </div>
            </div>


            <div class="page-header text-center">
                <h1 style="font-size: 20px;color: #777">团队成员信息（包括负责人信息）</h1>
            </div>
            <%--团队成员信息开始--%>
            <div name="memberForm">
                <div class="page-header text-center">
                    <h1 style="font-size: 20px;color: #777">团队成员1</h1>
                </div>
                <div class="form-group">
                    <label class="col-sm-2 control-label">姓名</label>
                    <div class="col-sm-4">
                        <input name="name1" type="text" class="form-control" placeholder="姓名">
                    </div>
                    <label class="col-sm-2 control-label">性别</label>
                    <div class="col-sm-4">
                        <label class="radio-inline">
                            <input type="radio" name="sex1" i value="男" checked> 男
                        </label>
                        <label class="radio-inline">
                            <input type="radio" name="sex1" value="女"> 女
                        </label>
                    </div>
                </div>
                <div class="form-group">
                    <label class="col-sm-2 control-label">年龄</label>
                    <div class="col-sm-4 form-inline">
                        <select name="age1" class="form-control">
                            <option value="">----</option>
                        </select>
                    </div>
                    <label class="col-sm-2 control-label">司龄</label>
                    <div class="col-sm-4 form-inline">
                        <select name="siling1" class="form-control">
                            <option value="">----</option>
                        </select>
                    </div>
                </div>
                <div class="form-group">
                    <label class="col-sm-2 control-label">产业集团</label>
                    <div class="col-sm-4 form-inline">
                        <select name="groupId1" class="form-control">
                            <option value="">--请选择--</option>
                        </select>
                    </div>
                    <label class="col-sm-2 control-label">所属企业</label>
                    <div class="col-sm-4 form-inline">
                        <select name="companyId1" class="form-control">
                            <option value="">--请选择--</option>
                        </select>
                    </div>
                </div>


                <div class="form-group">
                    <label class="col-sm-2 control-label">部门名称</label>
                    <div class="col-sm-4">
                        <input name="department1" type="projectName" class="form-control" placeholder="部门">
                    </div>
                    <label class="col-sm-2 control-label">职位</label>
                    <div class="col-sm-4">
                        <input name="position" type="text" class="form-control" placeholder="职位">
                    </div>
                </div>
                <div class="form-group">
                    <label class="col-sm-2 control-label">身份证号</label>
                    <div class="col-sm-4">
                        <input name="idCard1" type="text" class="form-control" placeholder="身份证号">
                    </div>

                </div>
                <div class="form-group">
                    <label class="col-sm-2 control-label">毕业院校</label>
                    <div class="col-sm-4">
                        <input name="school1" type="text" class="form-control" placeholder="毕业院校">
                    </div>
                    <label class="col-sm-2 control-label">学历</label>
                    <div class="col-sm-4 form-inline">
                        <select name="education1" class="form-control">
                            <option value="">----</option>
                            <option value="大专">大专</option>
                            <option value="本科">本科</option>
                            <option value="硕士研究生">硕士研究生</option>
                            <option value="博士研究生">博士研究生</option>
                            <option value="MBA">MBA</option>
                            <option value="EMBA">EMBA</option>
                            <option value="博士">博士</option>
                            <option value="博士后">博士后</option>
                        </select>
                    </div>
                </div>
                <div class="form-group">
                    <label class="col-sm-2 control-label">邮箱地址</label>
                    <div class="col-sm-4">
                        <input name="email1" type="text" class="form-control" placeholder="邮箱地址">
                    </div>
                    <label class="col-sm-2 control-label">手机号码</label>
                    <div class="col-sm-4">
                        <input name="phone1" type="text" class="form-control" placeholder="手机号码">
                    </div>
                </div>

            </div>
            <div id="addMemberDiv" class="col-sm-12">
                <div style="display: table;width: auto;margin-left: auto;margin-right: auto" class="center-block">
                    <button class="btn bottom-right" type="button" id="addMember"><i class="fa fa-plus"
                                                                                     aria-hidden="true"></i></button>
                    　　
                    <button class="btn bottom-right" type="button" id="deleteMember"><i class="fa fa-minus"
                                                                                        aria-hidden="true"></i></button>
                </div>
            </div>
            <div class="center-block" style="margin-top: 100px">
                <div style="display: table;width: auto;margin-left: auto;margin-right: auto" class="center-block">
                    <button id="submitBtn" class="btn btn-danger" type="button"><i class="fa fa-plus"
                                                                                   aria-hidden="true"></i>提交
                    </button>

                </div>
            </div>
        </form>

        <script>
            $("#submitBtn").click(function () {
                layer.alert($("#matchForm").serialize())
                $.ajax({
                    type: "post",
                    url: ctx + "/match/addMatch",
                    data: $("#matchForm").serialize(),
                    contentType: "application/json; charset=utf-8",
                    dataType: "json",
                    success: function (data) {
                    },
                    error: function () {
                        layer.msg("网络连接错误，请刷新重试。");
                    }
                });


            });


            //            layui.use('form', function () {
            //                var form = layui.form();
            //
            //                //监听提交
            ////                form.on('submit(formDemo)', function (data) {
            ////                    layer.msg(JSON.stringify(data.field));
            ////                    return false;
            ////                });
            //            });
        </script>
    </div>
</div>


<%@include file="/WEB-INF/page/public/footer.jsp" %>
</body>
</html>

