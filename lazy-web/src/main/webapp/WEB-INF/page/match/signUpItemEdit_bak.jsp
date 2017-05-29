<%@ page import="com.lazy.web.pojo.Match" %>
<%@ page import="org.springframework.context.ApplicationContext" %>
<%@ page import="org.springframework.web.context.support.WebApplicationContextUtils" %>
<%@ page import="com.lazy.web.service.GroupService" %>
<%@ page import="com.lazy.web.service.CompanyService" %><%--
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
    <%
        ServletContext sc = this.getServletConfig().getServletContext();
        ApplicationContext ac = WebApplicationContextUtils.getWebApplicationContext(sc);
        GroupService groupService = ac.getBean(GroupService.class);
        CompanyService companyService = ac.getBean(CompanyService.class);


    %>
    <div class="loginHead">

        <h1 class="pageName">会员登录</h1>

    </div>
    <div class="mymain centermy" style="margin-top: 50px">
        <div class="page-header text-center">
            <h1 style="font-size: 40px">方正集团创业大赛报名信息修改</h1>
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
                    <input name="projectName" value="${match.projectName}" type="text" class="form-control"
                           placeholder="请输入项目名称">
                </div>
            </div>
            <div class="form-group">
                <label class="col-sm-2 control-label">项目简介</label>
                <div class="col-sm-10">
                    <textarea required name="info" class="form-control" rows="3"
                              placeholder="项目简介">${match.info}</textarea>
                </div>
            </div>
            <div class="form-group">
                <label class="col-sm-2 control-label">项目类别</label>
                <div class="col-sm-10">
                    <label class="checkbox-inline">
                        <input type="checkbox" name="subject" id="inlineCheckbox1" value="技术">技术
                    </label>
                    <label class="checkbox-inline">
                        <input type="checkbox" name="subject" id="inlineCheckbox2" value="模式">模式
                    </label>
                    <label class="checkbox-inline">
                        <input type="checkbox" name="subject" id="inlineCheckbox3" value="运营">运营
                    </label>
                    <label class="checkbox-inline">
                        <input type="checkbox" name="subject" id="inlineCheckbox4" value="管理">管理
                    </label>
                </div>
            </div>

            <div class="form-group">
                <label class="col-sm-2 control-label">项目背景</label>
                <div class="col-sm-10">
                    <textarea required name="background" class="form-control" rows="3"
                              placeholder="开展该项目的初衷、原因">${match.background}</textarea>
                </div>
            </div>
            <div class="form-group">
                <label class="col-sm-2 control-label">项目目标</label>
                <div class="col-sm-10">
                    <textarea required name="target" class="form-control" rows="3"
                              placeholder="与背景对应，期望通过该项目而达到的预期结果">${match.background}</textarea>
                </div>
            </div>
            <div class="form-group">
                <label class="col-sm-2 control-label">实施计划</label>
                <div class="col-sm-10">
                    <textarea required name="plan" class="form-control" rows="3"
                              placeholder="在未来3~7个月内，对该项目的研究或推进日程">${match.plan}</textarea>
                </div>
            </div>
            <div class="form-group">
                <label class="col-sm-2 control-label">团队人数</label>
                <div class="col-sm-10 form-inline">
                    <select required name="peopleNum" class="form-control">
                        <option value="${match.peopleNum}">${match.peopleNum}</option>
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
                              placeholder="该项目落地后，预期能够给集团或企业带来的利益">${match.profit}</textarea>
                </div>
            </div>
            <div class="form-group">
                <label class="col-sm-2 control-label">专利及知识产权情况</label>
                <div class="col-sm-10">
                    <textarea required name="situation" class="form-control" rows="3"
                              placeholder="如是否预期申请专利或是否涉及他人专利、知识产权的情况">${match.situation}</textarea>
                </div>
            </div>
            <div class="form-group">
                <label class="col-sm-2 control-label">核心竞争优势</label>
                <div class="col-sm-10">
                    <textarea required name="advantage" class="form-control" rows="3"
                              placeholder="在未来3~7个月内，对该项目的研究或推进日程">${match.advantage}</textarea>
                </div>
            </div>
            <div class="form-group">
                <label class="col-sm-2 control-label">所需资源支持</label>
                <div class="col-sm-10">
                    <textarea required name="resources" class="form-control" rows="3"
                              placeholder="所需要的资源支持">${match.resources}</textarea>
                </div>
            </div>


            <div class="page-header text-center">
                <h1 style="font-size: 20px;color: #777">团队成员信息（包括负责人信息）</h1>
            </div>
            <%--团队成员信息开始--%>


            <div id="addMemberDiv" class="col-sm-12">
                <div style="display: table;width: auto;margin-left: auto;margin-right: auto" class="center-block">
                    <button class="btn bottom-right" type="button" id="addMember"><i class="fa fa-plus"
                                                                                     aria-hidden="true"></i></button>
                    　　
                    <button class="btn bottom-right" type="button" id="deleteMember"><i class="fa fa-minus"
                                                                                        aria-hidden="true"></i></button>
                </div>
            </div>
            <input type="text" value="1" name="peopleNum" id="peopleNum" hidden>
            <div class="center-block" style="margin-top: 100px">
                <div style="margin-bottom:100px;display: table;width: auto;margin-left: auto;margin-right: auto"
                     class="center-block">
                    <button id="submitBtn" class="btn btn-danger" type="button"><i class="fa fa-plus"></i>提交
                    </button>

                </div>
            </div>
        </form>


    </div>
</div>
<script>
    $(function () {
        //回显多选框
        var subjectStr = "${match.subject}";
        var subject = $("input[name='subject']");
        for (var i = 0; i < subject.length; i++) {
            if (subjectStr.indexOf($(subject[i]).val()) >= 0) {
                $(subject[i]).attr("checked", true);
            }
        }

        <%--getMembersByMatchId(${match.id}, function (data) {--%>
            <%--var members = data.data;--%>
            <%--for (var i = 0; i < members.length; i++) {--%>
                <%--var mb = members[i];--%>
                <%--var _html = "";--%>
                <%--var memberVar = $("div[name='memberForm']");--%>
                <%--var num = memberVar.length;--%>
                <%--_html += "<div name='memberForm'> "--%>
                <%--_html += "<div class='page-header text-center'> "--%>
                <%--_html += "<h1 style='font-size: 20px;color: #777'>团队成员" + (num + 1) + "</h1> "--%>
                <%--_html += "</div> "--%>
                <%--_html += "<div class='form-group'> "--%>
                <%--_html += "<label class='col-sm-2 control-label'>姓名</label> "--%>
                <%--_html += "<div class='col-sm-4'> "--%>
                <%--_html += "<input name='name" + (num + 1) + "' type='text' value='" + mb.memberName + "' class='form-control' placeholder='姓名'> "--%>
                <%--_html += "</div> "--%>
                <%--_html += "<label class='col-sm-2 control-label'>性别</label> "--%>
                <%--_html += "<div class='col-sm-4'> "--%>
                <%--_html += "<label class='radio-inline'> "--%>
                <%--if (mb.sex == '男') {--%>
                    <%--_html += "<input type='radio' name='sex" + (num + 1) + "' i value='男' checked> 男 "--%>
                    <%--_html += "</label> "--%>
                    <%--_html += "<label class='radio-inline'> "--%>
                    <%--_html += "<input type='radio' name='sex" + (num + 1) + "' value='女'> 女 "--%>
                <%--} else {--%>
                    <%--_html += "<input type='radio' name='sex" + (num + 1) + "' i value='男' > 男 "--%>
                    <%--_html += "</label> "--%>
                    <%--_html += "<label class='radio-inline'> "--%>
                    <%--_html += "<input type='radio' name='sex" + (num + 1) + "' value='女' checked> 女 "--%>
                <%--}--%>

                <%--_html += "</label> "--%>
                <%--_html += "</div> "--%>
                <%--_html += "</div> "--%>
                <%--_html += "<div class='form-group'> "--%>
                <%--_html += "<label class='col-sm-2 control-label'>年龄</label> "--%>
                <%--_html += "<div class='col-sm-4 form-inline'> "--%>
                <%--_html += "<select name='age" + (num + 1) + "' class='form-control'> "--%>
                <%--_html += "<option value='" + mb.age + "'>" + mb.age + "</option> "--%>
                <%--_html += "</select> "--%>
                <%--_html += "</div> "--%>
                <%--_html += "<label class='col-sm-2 control-label'>司龄</label> "--%>
                <%--_html += "<div class='col-sm-4 form-inline'> "--%>
                <%--_html += "<select name='siling" + (num + 1) + "' class='form-control'> "--%>
                <%--_html += "<option value='" + mb.siling + "'>" + mb.siling + "</option> "--%>
                <%--_html += "</select> "--%>
                <%--_html += "</div> "--%>
                <%--_html += "</div> "--%>
                <%--_html += "<div class='form-group'> "--%>
                <%--_html += "<label class='col-sm-2 control-label'>产业集团</label> "--%>
                <%--_html += "<div class='col-sm-4 form-inline'> "--%>
                <%--_html += "<select name='groupId" + (num + 1) + "' class='form-control'> "--%>
                <%--_html += "<option value='" + mb.groupId + "'></option> "--%>
                <%--_html += "</select> "--%>
                <%--_html += "</div> "--%>
                <%--_html += "<label class='col-sm-2 control-label'>所属企业</label> "--%>
                <%--_html += "<div class='col-sm-4 form-inline'> "--%>
                <%--_html += "<select name='companyId" + (num + 1) + "' class='form-control'> "--%>
                <%--_html += "<option value='" + mb.companyId + "'><%=groupService.findGroup(%>mb.companyId<%)%>></option> "--%>
                <%--_html += "</select> "--%>
                <%--_html += "</div> "--%>
                <%--_html += "</div> "--%>
                <%--_html += "<div class='form-group'> "--%>
                <%--_html += "<label class='col-sm-2 control-label'>部门名称</label> "--%>
                <%--_html += "<div class='col-sm-4'> "--%>
                <%--_html += "<input name='department" + (num + 1) + "' value='" + mb.department + "' type='projectName' class='form-control' placeholder='部门'> "--%>
                <%--_html += "</div> "--%>
                <%--_html += "<label class='col-sm-2 control-label'>职位</label> "--%>
                <%--_html += "<div class='col-sm-4'> "--%>
                <%--_html += "<input type='position" + (num + 1) + "' value='" + mb.position + "' class='form-control' placeholder='职位'> "--%>
                <%--_html += "</div> "--%>
                <%--_html += "</div> "--%>
                <%--_html += "<div class='form-group'> "--%>
                <%--_html += "<label class='col-sm-2 control-label'>身份证号</label> "--%>
                <%--_html += "<div class='col-sm-4'> "--%>
                <%--_html += "<input name='idCard" + (num + 1) + "' value='"+mb.idCard+"' type='text' class='form-control' placeholder='身份证号'> "--%>
                <%--_html += "</div> "--%>
                <%--_html += "</div> "--%>
                <%--_html += "<div class='form-group'> "--%>
                <%--_html += "<label class='col-sm-2 control-label'>毕业院校</label> "--%>
                <%--_html += "<div class='col-sm-4'> "--%>
                <%--_html += "<input name='school" + (num + 1) + "' value='" + mb.school + "' type='text' class='form-control' placeholder='毕业院校'> "--%>
                <%--_html += "</div> "--%>
                <%--_html += "<label class='col-sm-2 control-label'>学历</label> "--%>
                <%--_html += "<div class='col-sm-4 form-inline'> "--%>
                <%--_html += "<select name='education" + (num + 1) + "' class='form-control'> "--%>
                <%--_html += "<option value='" + mb.education + "'>" + mb.education + "</option> "--%>
                <%--_html += "<option value='大专'>大专</option> "--%>
                <%--_html += "<option value='本科'>本科</option> "--%>
                <%--_html += "<option value='硕士研究生'>硕士研究生</option> "--%>
                <%--_html += "<option value='博士研究生'>博士研究生</option> "--%>
                <%--_html += "<option value='MBA'>MBA</option> "--%>
                <%--_html += "<option value='EMBA'>EMBA</option> "--%>
                <%--_html += "<option value='博士'>博士</option> "--%>
                <%--_html += "<option value='博士后'>博士后</option> "--%>
                <%--_html += "</select> "--%>
                <%--_html += "</div> "--%>
                <%--_html += "</div> "--%>
                <%--_html += "<div class='form-group'> "--%>
                <%--_html += "<label class='col-sm-2 control-label'>邮箱地址</label> "--%>
                <%--_html += "<div class='col-sm-4'> "--%>
                <%--_html += "<input name='email" + (num + 1) + "' value='" + mb.email + "' type='text' class='form-control' placeholder='邮箱地址'> "--%>
                <%--_html += "</div> "--%>
                <%--_html += "<label class='col-sm-2 control-label'>手机号码</label> "--%>
                <%--_html += "<div class='col-sm-4'> "--%>
                <%--_html += "<input name='phone" + (num + 1) + "' value='" + mb.phone + "' type='text' class='form-control' placeholder='手机号码'> "--%>
                <%--_html += "</div> "--%>
                <%--_html += "</div> "--%>
                <%--_html += "</div> "--%>

                <%--$("#addMemberDiv").before(_html);--%>

                <%--addMenberInit(num + 1);--%>

            <%--}--%>
        <%--})--%>


        $("#addMember").click(function () {
            addMember();
        });

        $("#deleteMember").click(function () {
            var memberVar = $("div[name='memberForm']");
            var num = memberVar.length;
            $(memberVar[num - 1]).remove();
            $("#peopleNum").val(num - 1);
        })
        //添加成员的初始化方法
        function addMember() {
            var _html = "";
            var memberVar = $("div[name='memberForm']");
            var num = memberVar.length;
            _html += "<div name='memberForm'> "
            _html += "<div class='page-header text-center'> "
            _html += "<h1 style='font-size: 20px;color: #777'>团队成员" + (num + 1) + "</h1> "
            _html += "</div> "
            _html += "<div class='form-group'> "
            _html += "<label class='col-sm-2 control-label'>姓名</label> "
            _html += "<div class='col-sm-4'> "
            _html += "<input name='name" + (num + 1) + "' type='text' class='form-control' placeholder='姓名'> "
            _html += "</div> "
            _html += "<label class='col-sm-2 control-label'>性别</label> "
            _html += "<div class='col-sm-4'> "
            _html += "<label class='radio-inline'> "
            _html += "<input type='radio' name='sex" + (num + 1) + "' i value='男' checked> 男 "
            _html += "</label> "
            _html += "<label class='radio-inline'> "
            _html += "<input type='radio' name='sex" + (num + 1) + "' value='女'> 女 "
            _html += "</label> "
            _html += "</div> "
            _html += "</div> "
            _html += "<div class='form-group'> "
            _html += "<label class='col-sm-2 control-label'>年龄</label> "
            _html += "<div class='col-sm-4 form-inline'> "
            _html += "<select name='age" + (num + 1) + "' class='form-control'> "
            _html += "<option value=''>----</option> "
            _html += "</select> "
            _html += "</div> "
            _html += "<label class='col-sm-2 control-label'>司龄</label> "
            _html += "<div class='col-sm-4 form-inline'> "
            _html += "<select name='siling" + (num + 1) + "' class='form-control'> "
            _html += "<option value=''>----</option> "
            _html += "</select> "
            _html += "</div> "
            _html += "</div> "
            _html += "<div class='form-group'> "
            _html += "<label class='col-sm-2 control-label'>产业集团</label> "
            _html += "<div class='col-sm-4 form-inline'> "
            _html += "<select name='groupId" + (num + 1) + "' class='form-control'> "
            _html += "<option value=''>--请选择--</option> "
            _html += "</select> "
            _html += "</div> "
            _html += "<label class='col-sm-2 control-label'>所属企业</label> "
            _html += "<div class='col-sm-4 form-inline'> "
            _html += "<select name='companyId" + (num + 1) + "' class='form-control'> "
            _html += "<option value=''>----</option> "
            _html += "</select> "
            _html += "</div> "
            _html += "</div> "
            _html += "<div class='form-group'> "
            _html += "<label class='col-sm-2 control-label'>部门名称</label> "
            _html += "<div class='col-sm-4'> "
            _html += "<input name='department" + (num + 1) + "' type='projectName' class='form-control' placeholder='部门'> "
            _html += "</div> "
            _html += "<label class='col-sm-2 control-label'>职位</label> "
            _html += "<div class='col-sm-4'> "
            _html += "<input type='position" + (num + 1) + "' class='form-control' placeholder='职位'> "
            _html += "</div> "
            _html += "</div> "
            _html += "<div class='form-group'> "
            _html += "<label class='col-sm-2 control-label'>身份证号</label> "
            _html += "<div class='col-sm-4'> "
            _html += "<input name='idCard" + (num + 1) + "' type='text' class='form-control' placeholder='身份证号'> "
            _html += "</div> "
            _html += "</div> "
            _html += "<div class='form-group'> "
            _html += "<label class='col-sm-2 control-label'>毕业院校</label> "
            _html += "<div class='col-sm-4'> "
            _html += "<input name='school" + (num + 1) + "' type='text' class='form-control' placeholder='毕业院校'> "
            _html += "</div> "
            _html += "<label class='col-sm-2 control-label'>学历</label> "
            _html += "<div class='col-sm-4 form-inline'> "
            _html += "<select name='education" + (num + 1) + "' class='form-control'> "
            _html += "<option value=''>----</option> "
            _html += "<option value='大专'>大专</option> "
            _html += "<option value='本科'>本科</option> "
            _html += "<option value='硕士研究生'>硕士研究生</option> "
            _html += "<option value='博士研究生'>博士研究生</option> "
            _html += "<option value='MBA'>MBA</option> "
            _html += "<option value='EMBA'>EMBA</option> "
            _html += "<option value='博士'>博士</option> "
            _html += "<option value='博士后'>博士后</option> "
            _html += "</select> "
            _html += "</div> "
            _html += "</div> "
            _html += "<div class='form-group'> "
            _html += "<label class='col-sm-2 control-label'>邮箱地址</label> "
            _html += "<div class='col-sm-4'> "
            _html += "<input name='email" + (num + 1) + "' type='text' class='form-control' placeholder='邮箱地址'> "
            _html += "</div> "
            _html += "<label class='col-sm-2 control-label'>手机号码</label> "
            _html += "<div class='col-sm-4'> "
            _html += "<input name='phone" + (num + 1) + "' type='text' class='form-control' placeholder='手机号码'> "
            _html += "</div> "
            _html += "</div> "
            _html += "</div> "

            $("#addMemberDiv").before(_html);

            addMenberInit(num + 1);
        }

        function addMenberInit(num) {
            $("#peopleNum").val(num);
            loadGroupInfo(function (data) {
                if (data.code != 200) {
                    layer.msg("数据加载失败，请刷新重试！");
                } else {
                    var _html = "";
                    var groups = data.data;
                    $.each(groups, function (index, value) {
                        _html += "<option value=" + groups[index].id + ">" + groups[index].name + "</option>";
                    })
                    $("select[name='groupId" + num + "']").append(_html);
                }
            })
            $("select[name='groupId" + num + "']").change(function () {
                var _html = "<option value=''>--请选择--</option>";
                $("select[name='companyId" + num + "']").html("");
                $("select[name='companyId" + num + "']").append(_html);
                var _v = $("select[name='groupId" + num + "']").val();
                if (_v != "") {
                    loadCompanyInfo(_v, function (data) {
                        if (data.code != 200) {
                            layer.msg("数据加载失败，请刷新重试！");
                        } else {
                            var _html = "<option value=''>--请选择--</option>";
                            var companys = data.data;
                            $.each(companys, function (index, value) {
                                _html += "<option value=" + companys[index].id + ">" + companys[index].name + "</option>";
                            })
                            $("select[name='companyId" + num + "']").html("");
                            $("select[name='companyId" + num + "']").append(_html);

                        }
                    });
                }
            });

            //填充年龄
            var _age = "<option value=''>----</option>";
            //$("select[name='groupId" + num + "']")
            for (var i = 16; i < 91; i++) {
                if (i == 30)
                    _age += "<option value='" + i + "'  selected>" + i + "</option>";
                else
                    _age += "<option value='" + i + "'>" + i + "</option>";
            }
            $("select[name='age" + num + "']").html("").append(_age);
            //填充司龄
            var _siling = "<option value=''>----</option>";
            //$("select[name='groupId" + num + "']")
            for (var i = 1; i < 81; i++) {
                if (i == 5)
                    _siling += "<option value='" + i + "'  selected>" + i + "</option>";
                else
                    _siling += "<option value='" + i + "'>" + i + "</option>";
            }
            $("select[name='siling" + num + "']").html("").append(_siling);

            //修改iframe页面高度
            $(window.parent.document).find("#iframeMain").load(function () {
                var main = $(window.parent.document).find("#iframeMain");
                var thisheight = $(document).height() + 400;
                main.height(thisheight);
            });
        }


    });

</script>


<%@include file="/WEB-INF/page/public/footer.jsp" %>
</body>
</html>

