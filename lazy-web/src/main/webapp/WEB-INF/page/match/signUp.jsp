<%--
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
        <form class="form-horizontal" action="${ctx}/match/addMatch" id="matchForm" method="post">
            <div class="page-header text-center">
                <h1 style="font-size: 20px;color: #777">项目基本信息</h1>
            </div>
            <div class="form-group">
                <label class="col-sm-2 control-label">项目名称</label>
                <div class="col-sm-10">
                    <input required name="projectName" type="text" class="form-control"
                           placeholder="（仅包含今年开始的项目。)">
                </div>
            </div>
            <div class="form-group">
                <label class="col-sm-2 control-label">项目简介</label>
                <div class="col-sm-10">
                    <textarea required name="info" class="form-control" rows="3"
                              placeholder="（300个字以内。说明通过什么方案解决什么问题取得什么收益。）"></textarea>
                </div>
            </div>
            <div class="form-group">
                <label class="col-sm-2 control-label">项目类别</label>
                <div class="col-sm-10">
                    <label class="checkbox-inline">
                        <input type="checkbox" name="subject" id="inlineCheckbox1" value="技术创新"> 技术创新
                    </label>
                    <label class="checkbox-inline">
                        <input type="checkbox" name="subject" id="inlineCheckbox2" value="商业模式创新"> 商业模式创新
                    </label>
                    <label class="checkbox-inline">
                        <input type="checkbox" name="subject" id="inlineCheckbox3" value="运营创新"> 运营创新
                    </label>
                    <label class="checkbox-inline">
                        <input type="checkbox" name="subject" id="inlineCheckbox4" value="管理创新"> 管理创新
                    </label>
                    <label class="checkbox-inline">
                        <input type="checkbox" name="subject" id="inlineCheckbox5" value="创业项目"> 创业项目
                    </label>
                </div>
            </div>

            <div class="form-group">
                <label class="col-sm-2 control-label">项目背景</label>
                <div class="col-sm-10">
                    <textarea required name="background" class="form-control" rows="3"
                              placeholder="（开展该项目的初衷、希望解决的问题。创业项目可详细阐述市场机会及目标客户群。）"></textarea>
                </div>
            </div>
            <div class="form-group">
                <label class="col-sm-2 control-label">项目目标</label>
                <div class="col-sm-10">
                    <textarea required name="target" class="form-control" rows="3"
                              placeholder="（与背景对应，期望通过该项目而达到的预期结果。）"></textarea>
                </div>
            </div>
            <div class="form-group">
                <label class="col-sm-2 control-label">实现方案</label>
                <div class="col-sm-10">
                    <textarea required name="plan" class="form-control" rows="3"
                              placeholder="（详细阐述如何实现项目目标的具体解决方案。如已有项目进展，请将资料以附件形式上传。）"></textarea>
                </div>
            </div>
            <div class="form-group">
                <label class="col-sm-2 control-label">预期收益</label>
                <div class="col-sm-10">
                    <textarea required name="profit" class="form-control" rows="3"
                              placeholder="（该项目落地后，预期能够给集团或企业带来的利益，最好用数据展示。）"></textarea>
                </div>
            </div>
            <div class="form-group">
                <label class="col-sm-2 control-label">核心优势</label>
                <div class="col-sm-10">
                    <textarea required name="advantage" class="form-control" rows="3"
                              placeholder="（对标外部该项目方案的独特性/领先性。）"></textarea>
                </div>
            </div>
            <div class="form-group">
                <label class="col-sm-2 control-label">所需支持</label>
                <div class="col-sm-10">
                    <textarea required name="resources" class="form-control" rows="3"
                              placeholder="（项目方案落地需要集团/企业提供哪些资源支持。）"></textarea>
                </div>
            </div>
            <div class="form-group">
                <label class="col-sm-2 control-label">专利/知识产权</label>
                <div class="col-sm-10">
                    <textarea required name="situation" class="form-control" rows="3"
                              placeholder="（是否希望申请专利，是否涉及他人专利、知识产权的情况。）"></textarea>
                </div>
            </div>

            <div class="form-group">
                <label class="col-sm-2 control-label">核心团队成员人数</label>
                <div class="col-sm-10 form-inline">
                    <input required name="peopleNum" type="number"  class="form-control"
                           placeholder="（如个人申报，请填“1”。）">
                </div>
            </div>
            <div class="form-group">
                <label class="col-sm-2 control-label">组织模式（仅创业型填写）</label>
                <div class="col-sm-10">
                    <textarea required name="organizationModel" class="form-control" rows="3"
                              placeholder="（作为创业团队，团队核心成员之间如何分工？）"></textarea>
                </div>
            </div>


            <div class="page-header text-center">
                <h1 style="font-size: 20px;color: #777">团队成员信息（包括负责人信息）</h1>
            </div>
            <input type="text" value="1" hidden id="memberNum" name="memberNum">
        <%--团队成员信息开始--%>
            <div name="memberForm">
                <div class="page-header text-center">
                    <h1 style="font-size: 20px;color: #777">团队成员1</h1>
                </div>
                <div class="form-group">
                    <label class="col-sm-2 control-label">姓名</label>
                    <div class="col-sm-4">
                        <input required name="name1" type="text" class="form-control" placeholder="姓名">
                    </div>
                    <label class="col-sm-2 control-label">性别</label>
                    <div class="col-sm-4">
                        <label class="radio-inline">
                            <input type="radio" name="sex1" value="男" checked> 男
                        </label>
                        <label class="radio-inline">
                            <input type="radio" name="sex1" value="女"> 女
                        </label>
                    </div>
                </div>
                <div class="form-group">
                    <label class="col-sm-2 control-label">年龄</label>
                    <div class="col-sm-4 form-inline">
                        <select required name="age1" class="form-control">
                            <option value="">----</option>
                        </select>
                    </div>
                    <label class="col-sm-2 control-label">司龄</label>
                    <div class="col-sm-4 form-inline">
                        <select required name="siling1" class="form-control">
                            <option value="">----</option>
                        </select>
                    </div>
                </div>
                <div class="form-group">
                    <label class="col-sm-2 control-label">产业集团</label>
                    <div class="col-sm-4 form-inline">
                        <select required name="groupId1" class="form-control">
                            <option value="">--请选择--</option>
                        </select>
                    </div>
                    <label class="col-sm-2 control-label">所属企业</label>
                    <div class="col-sm-4 form-inline">
                        <select required name="companyId1" class="form-control">
                            <option value="">--请选择--</option>
                        </select>
                    </div>
                </div>


                <div class="form-group">
                    <label class="col-sm-2 control-label">部门名称</label>
                    <div class="col-sm-4">
                        <input required name="department1" type="projectName" class="form-control" placeholder="部门">
                    </div>
                    <label class="col-sm-2 control-label">职位</label>
                    <div class="col-sm-4">
                        <input required type="text" name="position1" class="form-control" placeholder="职位">
                    </div>
                </div>
                <div class="form-group">
                    <label class="col-sm-2 control-label">身份证号</label>
                    <div class="col-sm-4">
                        <input required name="idCard1" type="text" class="form-control" placeholder="身份证号">
                    </div>

                </div>
                <div class="form-group">
                    <label class="col-sm-2 control-label">毕业院校</label>
                    <div class="col-sm-4">
                        <input required name="school1" type="text" class="form-control" placeholder="毕业院校">
                    </div>
                    <label class="col-sm-2 control-label">学历</label>
                    <div class="col-sm-4 form-inline">
                        <select required name="education1" class="form-control">
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
                        <input required name="email1" type="email" class="form-control" placeholder="邮箱地址">
                    </div>
                    <label class="col-sm-2 control-label">手机号码</label>
                    <div class="col-sm-4">
                        <input required name="phone1" type="tel" class="form-control" placeholder="手机号码">
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

            <div class="center-block" style="margin-top: 100px;margin-bottom: 100px;">
                <div style="display: table;width: auto;margin-left: auto;margin-right: auto" class="center-block">
                    <input id="submitBtn" class="btn btn-danger" type="submit" value="提交">
                    </input>

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

        function addMenberInit(num) {
            $("#memberNum").val(num);
            loadGroupInfo(function (data) {
                if (data.code != 200) {
                    layer.msg("数据加载失败，请刷新重试！");
                } else {
                    var _html = "";
                    var groups = data.data;
                    $.each(groups, function (index, value) {
                        _html += "<option value=" + groups[index].id + ">" + groups[index].name + "</option>";
                    })
                    // alert(_html)
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
        }


        $("#addMember").click(function () {
            var _html = "";
            var memberVar = $("div[name='memberForm']");
            var num = memberVar.length;
            // alert("xxx"+(num+1)+"xxx"
            _html += "<div name='memberForm'> "
            _html += "<div class='page-header text-center'> "
            _html += "<h1 style='font-size: 20px;color: #777'>团队成员" + (num + 1) + "</h1> "
            _html += "</div> "
            _html += "<div class='form-group'> "
            _html += "<label class='col-sm-2 control-label'>姓名</label> "
            _html += "<div class='col-sm-4'> "
            _html += "<input required name='name" + (num + 1) + "' type='text' class='form-control' placeholder='姓名'> "
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
            _html += "<select required name='age" + (num + 1) + "' class='form-control'> "
            _html += "<option value=''>----</option> "
            _html += "</select> "
            _html += "</div> "
            _html += "<label class='col-sm-2 control-label'>司龄</label> "
            _html += "<div class='col-sm-4 form-inline'> "
            _html += "<select required name='siling" + (num + 1) + "' class='form-control'> "
            _html += "<option value=''>----</option> "
            _html += "</select> "
            _html += "</div> "
            _html += "</div> "
            _html += "<div class='form-group'> "
            _html += "<label class='col-sm-2 control-label'>产业集团</label> "
            _html += "<div class='col-sm-4 form-inline'> "
            _html += "<select required name='groupId" + (num + 1) + "' class='form-control'> "
            _html += "<option value=''>--请选择--</option> "
            _html += "</select> "
            _html += "</div> "
            _html += "<label class='col-sm-2 control-label'>所属企业</label> "
            _html += "<div class='col-sm-4 form-inline'> "
            _html += "<select required name='companyId" + (num + 1) + "' class='form-control'> "
            _html += "<option value=''>----</option> "
            _html += "</select> "
            _html += "</div> "
            _html += "</div> "
            _html += "<div class='form-group'> "
            _html += "<label class='col-sm-2 control-label'>部门名称</label> "
            _html += "<div class='col-sm-4'> "
            _html += "<input required name='department" + (num + 1) + "' type='projectName' class='form-control' placeholder='部门'> "
            _html += "</div> "
            _html += "<label class='col-sm-2 control-label'>职位</label> "
            _html += "<div class='col-sm-4'> "
            _html += "<input required name='position" + (num + 1) + "' type='text' class='form-control' placeholder='职位'> "
            _html += "</div> "
            _html += "</div> "
            _html += "<div class='form-group'> "
            _html += "<label class='col-sm-2 control-label'>身份证号</label> "
            _html += "<div class='col-sm-4'> "
            _html += "<input required name='idCard" + (num + 1) + "' type='text' class='form-control' placeholder='身份证号'> "
            _html += "</div> "
            _html += "</div> "
            _html += "<div class='form-group'> "
            _html += "<label class='col-sm-2 control-label'>毕业院校</label> "
            _html += "<div class='col-sm-4'> "
            _html += "<input required name='school" + (num + 1) + "' type='text' class='form-control' placeholder='毕业院校'> "
            _html += "</div> "
            _html += "<label class='col-sm-2 control-label'>学历</label> "
            _html += "<div class='col-sm-4 form-inline'> "
            _html += "<select required name='education" + (num + 1) + "' class='form-control'> "
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
            _html += "<input required name='email" + (num + 1) + "' type='email' class='form-control' placeholder='邮箱地址'> "
            _html += "</div> "
            _html += "<label class='col-sm-2 control-label'>手机号码</label> "
            _html += "<div class='col-sm-4'> "
            _html += "<input required name='phone" + (num + 1) + "' type='tel' class='form-control' placeholder='手机号码'> "
            _html += "</div> "
            _html += "</div> "
            _html += "</div> "

            $("#addMemberDiv").before(_html);

            addMenberInit(num + 1);
        });
//添加成员的初始化方法


        $("#deleteMember").click(function () {
            var memberVar = $("div[name='memberForm']");
            var num = memberVar.length;
            $(memberVar[num - 1]).remove();
            $("#memberNum").val(num - 1);
        })


        //开始初始化页面
        addMenberInit(1);

        <%--$("#submitBtn").click(function () {--%>
        <%--//                  进行费控验证--%>
        <%----%>
        <%--//                    alert("2")--%>
        <%--if (flat) {--%>
        <%--$.ajax({--%>
        <%--cache: false,--%>
        <%--type: "POST",--%>
        <%--url: ctx + "/match/addMatch",--%>
        <%--data: $('#matchForm').serialize(),// 你的formid--%>
        <%--contentType: "application/x-www-form-urlencoded; charset=UTF-8",--%>
        <%--dataType: "json",--%>
        <%--error: function (request) {--%>
        <%--layer.alert("网络连接错误，请刷新重试！");--%>
        <%--},--%>
        <%--success: function (data) {--%>
        <%--if (data.code != 200) {--%>
        <%--layer.msg(data.msg);--%>
        <%--} else {--%>

        <%--window.location.href = "${ctx}/user/page/index";--%>
        <%--}--%>

        <%--}--%>
        <%--});--%>
        <%--}--%>

        <%--});--%>
    });

</script>

<%@include file="/WEB-INF/page/public/footer.jsp" %>
</body>
</html>

