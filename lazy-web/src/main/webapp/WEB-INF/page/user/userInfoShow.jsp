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

        <%--<h1 class="pageName">会员登录</h1>--%>

    </div>
    <div class="mymain centermy" style="margin-top: 50px">
        <%--<div class="page-header text-center">--%>
        <%--<h1 style="font-size: 40px">方正集团创业大赛报名信息修改</h1>--%>
        <%--</div>--%>

        <form class="form-horizontal" action=""  id="matchForm">

            <input type="text" hidden value="${user.id}">
            <div class="page-header text-center">
                <h1 style="font-size: 20px;color: #777">个人信息修改</h1>
            </div>
            <%

                ServletContext sc = this.getServletConfig().getServletContext();
                ApplicationContext ac = WebApplicationContextUtils.getWebApplicationContext(sc);
                GroupService groupService = ac.getBean(GroupService.class);
                CompanyService companyService = ac.getBean(CompanyService.class);

                User user = (User) request.getSession().getAttribute("user");

                Group group = groupService.findGroup(user.getGroupId());
                Company company = companyService.findCompanyInfo(user.getCompanyId());
            %>
            <div name="memberForm">
                <div class="form-group">
                    <label class="col-sm-2 control-label">姓名</label>
                    <div class="col-sm-4">
                        <input  disabled value="<%=user.getName()%>" name="name" type="text"
                               class="form-control" placeholder="姓名">
                    </div>
                    <label class="col-sm-2 control-label">性别</label>
                    <div class="col-sm-4">
                        <label class="radio-inline">
                            <%
                                if ("男".equals(user.getSex())) {
                            %>
                            <label class="radio-inline">
                                <input type="radio" name="sex" value="男" checked> 男
                            </label>
                            <label class="radio-inline">
                                <input type="radio" disabled name="sex" value="女"> 女
                            </label>
                            <%
                            } else {
                            %>
                            <label class="radio-inline">
                                <input type="radio" disabled name="sex" value="男"> 男
                            </label>
                            <label class="radio-inline">
                                <input type="radio" name="sex" value="女" checked> 女
                            </label>
                            <%
                                }
                            %>
                        </label>
                    </div>
                </div>
                <div class="form-group">
                    <label class="col-sm-2 control-label">年龄</label>
                    <div class="col-sm-4 form-inline">
                        <select disabled name="age" class="form-control">
                            <%
                                for (int j = 16; j <= 80; j++) {
                                    if (user.getAge() == j) {
                            %>
                            <option selected="selected" value="<%=j%>"><%=j%>
                            </option>
                            <%
                            } else {
                            %>
                            <option value="<%=j%>"><%=j%>
                            </option>
                            <%
                                    }
                                }
                            %>
                        </select>
                    </div>
                    <label class="col-sm-2 control-label">司龄</label>
                    <div class="col-sm-4 form-inline">
                        <select disabled name="siling" class="form-control">
                            <%
                                for (int j = 1; j <= 40; j++) {
                                    if (user.getSiling() == j) {
                            %>
                            <option selected="selected" value="<%=j%>"><%=j%>
                            </option>
                            <%
                            } else {
                            %>
                            <option value="<%=j%>"><%=j%>
                            </option>
                            <%
                                    }
                                }
                            %>
                        </select>
                    </div>
                </div>
                <div class="form-group">
                    <label class="col-sm-2 control-label">产业集团</label>
                    <div class="col-sm-4">
                        <select disabled name="groupId" class="form-control">
                            <option value="">--请选择--</option>
                            <%
                                List<Group> groups = groupService.findAllGroupInfo();
                                for (int j = 0; j < groups.size(); j++) {
                                    if (user.getGroupId() == groups.get(j).getId()) {
                            %>
                            <option selected value="<%=groups.get(j).getId()%>"><%=groups.get(j).getName()%>
                            </option>
                            <%
                            } else {
                            %>
                            <option value="<%=groups.get(j).getId()%>"><%=groups.get(j).getName()%>
                            </option>
                            <%
                                    }
                                }
                            %>
                        </select>
                    </div>
                    <label class="col-sm-2 control-label">公司</label>
                    <div class="col-sm-4">
                        <select disabled name="companyId" class="form-control">
                            <option value="">--请选择--</option>
                            <%
                                List<Company> companies = companyService.findAllCompanyInfo(user.getGroupId());
                                for (int j = 0; j < companies.size(); j++) {
                                    if (user.getCompanyId() == companies.get(j).getId()) {
                            %>
                            <option selected value="<%=companies.get(j).getId()%>"><%=companies.get(j).getName()%>
                            </option>
                            <%
                            } else {
                            %>
                            <option value="<%=companies.get(j).getId()%>"><%=companies.get(j).getName()%>
                            </option>
                            <%
                                    }
                                }
                            %>
                        </select>
                    </div>
                </div>
                <script>
                    $("select[name='groupId']").change(function () {
                        var _html = "<option value=''>--请选择--</option>";
                        $("select[name='companyId']").html("");
                        $("select[name='companyId']").append(_html);
                        var _v = $("select[name='groupId']").val();
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
                                    $("select[name='companyId']").html("");
                                    $("select[name='companyId']").append(_html);

                                }
                            });
                        }
                    });
                </script>


                <div class="form-group">
                    <label class="col-sm-2 control-label">部门名称</label>
                    <div class="col-sm-4">
                        <input disabled name="department" value="<%=user.getDepartment()%>"
                               type="text" class="form-control" placeholder="部门">
                    </div>
                    <label class="col-sm-2 control-label">职位</label>
                    <%
                        if (user.getPosition() == null) {
                    %>
                    <div class="col-sm-4">
                        <input disabled type="text" name="position"
                               class="form-control" placeholder="职位">
                    </div>
                    <%
                    } else {
                    %>
                    <div class="col-sm-4">
                        <input disabled value="${user.position}" type="text" name="position"
                               class="form-control" placeholder="职位">
                    </div>
                    <%
                        }
                    %>
                </div>
                <div class="form-group">
                    <label class="col-sm-2 control-label">身份证号</label>
                    <%
                        if (user.getIdCard() == null) {
                    %>
                    <div class="col-sm-4">
                        <input disabled  name="idCard" type="text"
                               class="form-control" placeholder="身份证号">
                    </div>
                    <%
                    } else {
                    %>
                    <div class="col-sm-4">
                        <input disabled value="<%=user.getIdCard()%>" name="idCard" type="text"
                               class="form-control" placeholder="身份证号">
                    </div>
                    <%
                        }
                    %>


                </div>
                <div class="form-group">
                    <label class="col-sm-2 control-label">毕业院校</label>
                    <%
                        if (user.getSchool() == null) {
                    %>
                    <div class="col-sm-4">
                        <input disabled  name="school" type="text"
                               class="form-control" placeholder="毕业院校">
                    </div>
                    <%
                    } else {
                    %>
                    <div class="col-sm-4">
                        <input disabled value="<%=user.getSchool()%>" name="school" type="text"
                               class="form-control" placeholder="毕业院校">
                    </div>
                    <%
                        }
                    %>

                    <label class="col-sm-2 control-label">学历</label>
                    <div class="col-sm-4 form-inline">
                        <select disabled name="education" class="form-control">
                            <%
                                if (user.getEducation() == null) {
                            %>
                            <option value="">--请选择--
                            </option>
                            <%
                            } else {
                            %>
                            <option value="<%=user.getEducation()%>"><%=user.getEducation()%>
                            </option>
                            <%
                                }
                            %>
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
                        <input disabled value="<%=user.getEmail()%>" name="email" type="text"
                               class="form-control" placeholder="邮箱地址">
                    </div>
                    <label class="col-sm-2 control-label">手机号码</label>
                    <div class="col-sm-4">
                        <input disabled value="<%=user.getPhone()%>" name="phone" type="text"
                               class="form-control" placeholder="手机号码">
                    </div>
                </div>
            </div>



            <div class="center-block" style="margin-top: 100px">
                <div style="margin-bottom:100px;display: table;width: auto;margin-left: auto;margin-right: auto"
                     class="center-block">
                    <a class="btn btn-default" href="${ctx}/user/page/userInfoModify">修改</a>


                </div>
            </div>
        </form>

    </div>
</div>
<script>
    function checkInput() {

        var flat = true;
        var inputs = $("input");
        for (var i = 0; i < inputs.length; i++) {
            if ($(inputs[i]).val() == '') {
                alert("所有项目均为必填项");
                flat = false;
                break;
            }
        }
        return flat;
    }
    $(function () {


    });

</script>


<%@include file="/WEB-INF/page/public/footer.jsp" %>
</body>
</html>

