<%@ page import="com.lazy.web.pojo.MatchMember" %>
<%@ page import="java.util.List" %>
<%@ page import="com.lazy.web.pojo.Group" %>
<%@ page import="com.lazy.web.service.impl.GroupServiceImpl" %>
<%@ page import="org.springframework.context.ApplicationContext" %>
<%@ page import="org.springframework.web.context.support.WebApplicationContextUtils" %>
<%@ page import="com.lazy.web.service.GroupService" %>
<%@ page import="com.lazy.web.service.CompanyService" %>
<%@ page import="com.lazy.web.pojo.Company" %>
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
    <%--<script type="text/javascript" src="${ctx}/static/js/signUp.js?v=1.0"></script>--%>
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

        })
    </script>

</head>
<body class="">
<div>

    <div class="loginHead">

        <%--<h1 class="pageName">会员登录</h1>--%>

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
                    <input disabled name="projectName" value="${match.projectName}" type="text" class="form-control"
                           id="inputEmail3" placeholder="请输入项目名称">
                </div>
            </div>
            <div class="form-group">
                <label class="col-sm-2 control-label">项目简介</label>
                <div class="col-sm-10">
                    <textarea disabled name="info" class="form-control" rows="3"
                              placeholder="项目简介">${match.info}</textarea>
                </div>
            </div>
            <div class="form-group">
                <label class="col-sm-2 control-label">项目类别</label>
                <div class="col-sm-10">
                    <label class="checkbox-inline">
                        <%--<input type="checkbox" name="subject" id="inlineCheckbox1" value="v"> v--%>
                        ${match.subject}
                    </label>
                </div>
            </div>

            <div class="form-group">
                <label class="col-sm-2 control-label">项目背景</label>
                <div class="col-sm-10">
                    <textarea disabled name="background" class="form-control" rows="3"
                              placeholder="开展该项目的初衷、原因">${match.background}</textarea>
                </div>
            </div>
            <div class="form-group">
                <label class="col-sm-2 control-label">项目目标</label>
                <div class="col-sm-10">
                    <textarea disabled name="target" class="form-control" rows="3"
                              placeholder="与背景对应，期望通过该项目而达到的预期结果">${match.target}</textarea>
                </div>
            </div>
            <div class="form-group">
                <label class="col-sm-2 control-label">实现方案</label>
                <div class="col-sm-10">
                    <textarea disabled name="plan" class="form-control" rows="3"
                              placeholder="在未来3~7个月内，对该项目的研究或推进日程">${match.plan}</textarea>
                </div>
            </div>
            <div class="form-group">
                <label class="col-sm-2 control-label">预期收益</label>
                <div class="col-sm-10">
                    <textarea disabled name="profit" class="form-control" rows="3"
                              placeholder="该项目落地后，预期能够给集团或企业带来的利益">${match.profit}</textarea>
                </div>
            </div>
            <div class="form-group">
                <label class="col-sm-2 control-label">核心优势</label>
                <div class="col-sm-10">
                    <textarea disabled name="advantage" class="form-control" rows="3"
                              placeholder="在未来3~7个月内，对该项目的研究或推进日程">${match.advantage}</textarea>
                </div>
            </div>
            <div class="form-group">
                <label class="col-sm-2 control-label">所需支持</label>
                <div class="col-sm-10">
                    <textarea disabled name="resources" class="form-control" rows="3"
                              placeholder="在未来3~7个月内，对该项目的研究或推进日程">${match.resources}</textarea>
                </div>
            </div>
            <div class="form-group">
                <label class="col-sm-2 control-label">专利/知识产权</label>
                <div class="col-sm-10">
                    <textarea disabled name="situation" class="form-control" rows="3"
                              placeholder="如是否预期申请专利或是否涉及他人专利、知识产权的情况">${match.situation}</textarea>
                </div>
            </div>
            <div class="form-group">
                <label class="col-sm-2 control-label">核心团队成员人数</label>
                <div class="col-sm-10 form-inline">
                    <input disabled name="peopleNum" value="${match.peopleNum}" type="text" class="form-control"
                           id="" placeholder="">
                </div>
            </div>
            <div class="form-group">
                <label class="col-sm-2 control-label">组织模式（仅创业型填写）</label>
                <div class="col-sm-10">
                    <textarea disabled name="situation" class="form-control" rows="3"
                              placeholder="">${match.organizationModel}</textarea>
                </div>
            </div>






            <div class="page-header text-center">
                <h1 style="font-size: 20px;color: #777">团队成员信息（包括负责人信息）</h1>
            </div>
            <%--团队成员信息开始--%>
                <%

               ServletContext sc = this.getServletConfig().getServletContext();
                ApplicationContext ac = WebApplicationContextUtils.getWebApplicationContext(sc);
                  GroupService groupService=ac.getBean(GroupService.class);
                  CompanyService companyService=ac.getBean(CompanyService.class);

                List<MatchMember> members = (List<MatchMember>) request.getSession().getAttribute("members");
                for (int i = 0; i < members.size(); i++) {
                    Group group=groupService.findGroup(members.get(i).getGroupId());
                    Company company=companyService.findCompanyInfo(members.get(i).getCompanyId());
            %>
            <div name="memberForm">
                <div class="page-header text-center">
                    <h1 style="font-size: 20px;color: #777">团队成员<%=i + 1%>
                    </h1>
                </div>
                <div class="form-group">
                    <label class="col-sm-2 control-label">姓名</label>
                    <div class="col-sm-4">
                        <input disabled value="<%=members.get(i).getMemberName()%>" name="name<%=i+1%>" type="text"
                               class="form-control" placeholder="姓名">
                    </div>
                    <label class="col-sm-2 control-label">性别</label>
                    <div class="col-sm-4">
                        <label class="radio-inline">
                            <%=members.get(i).getSex()%>
                        </label>
                    </div>
                </div>
                <div class="form-group">
                    <label class="col-sm-2 control-label">年龄</label>
                    <div class="col-sm-4 form-inline">
                        <select disabled name="age<%=i+1%>" class="form-control">
                            <option value=""><%=members.get(i).getAge()%>
                            </option>
                        </select>
                    </div>
                    <label class="col-sm-2 control-label">司龄</label>
                    <div class="col-sm-4 form-inline">
                        <select disabled name="siling1" class="form-control">
                            <option value=""><%=members.get(i).getSiling()%>
                            </option>
                        </select>
                    </div>
                </div>
                <div class="form-group">
                    <label class="col-sm-2 control-label">产业集团</label>
                    <div class="col-sm-4">
                        <input disabled id="groupId<%=i+1%>" value="<%=group.getName()%>"
                               type="text" class="form-control" placeholder="产业集团">
                    </div>
                    <label class="col-sm-2 control-label">公司</label>
                    <div class="col-sm-4">
                        <input disabled value="<%=company.getName()%>" type="text" id="companyId<%=i+1%>"
                               class="form-control" placeholder="公司">
                    </div>
                </div>


                <div class="form-group">
                    <label class="col-sm-2 control-label">部门名称</label>
                    <div class="col-sm-4">
                        <input disabled name="department1" value="<%=members.get(i).getDepartment()%>"
                               type="text" class="form-control" placeholder="部门">
                    </div>
                    <label class="col-sm-2 control-label">职位</label>
                    <div class="col-sm-4">
                        <input disabled value="<%=members.get(i).getPosition()%>" type="text" name="position1"
                               class="form-control" placeholder="职位">
                    </div>
                </div>
                <div class="form-group">
                    <label class="col-sm-2 control-label">身份证号</label>
                    <div class="col-sm-4">
                        <input disabled value="<%=members.get(i).getIdCard()%>" name="idCard1" type="text"
                               class="form-control" placeholder="身份证号">
                    </div>

                </div>
                <div class="form-group">
                    <label class="col-sm-2 control-label">毕业院校</label>
                    <div class="col-sm-4">
                        <input disabled value="<%=members.get(i).getSchool()%>" name="school1" type="text"
                               class="form-control" placeholder="毕业院校">
                    </div>
                    <label class="col-sm-2 control-label">学历</label>
                    <div class="col-sm-4 form-inline">
                        <select disabled required name="education1" class="form-control">
                            <option value=""><%=members.get(i).getEducation()%>
                            </option>
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
                        <input disabled value="<%=members.get(i).getEmail()%>" name="email1" type="text"
                               class="form-control" placeholder="邮箱地址">
                    </div>
                    <label class="col-sm-2 control-label">手机号码</label>
                    <div class="col-sm-4">
                        <input disabled value="<%=members.get(i).getPhone()%>" name="phone1" type="text"
                               class="form-control" placeholder="手机号码">
                    </div>
                </div>

                <%
                    }
                %>


                <%--<div id="addMemberDiv" class="col-sm-12">--%>
                <%--<div style="display: table;width: auto;margin-left: auto;margin-right: auto" class="center-block">--%>
                <%--<button class="btn bottom-right" type="button" id="addMember"><i class="fa fa-plus"--%>
                <%--aria-hidden="true"></i></button>--%>
                <%--　　--%>
                <%--<button class="btn bottom-right" type="button" id="deleteMember"><i class="fa fa-minus"--%>
                <%--aria-hidden="true"></i></button>--%>
                <%--</div>--%>
                <%--</div>--%>


            </div>
            <div class="center-block" style="margin-top: 100px">
                <div style="display: table;width: auto;margin-left: auto;margin-right: auto" class="center-block">
                    <%--<button id="submitBtn" class="btn btn-danger" type="button"><i class="fa fa-plus"--%>
                    <%--aria-hidden="true"></i>修改--%>
                    <%--</button>--%>
                    <a class="btn btn-danger bg-primary" href="${ctx}/match/matchEdit/${match.id}">修改</a>

                </div>
            </div>


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
    </div>


    <%@include file="/WEB-INF/page/public/footer.jsp" %>
</body>
</html>

