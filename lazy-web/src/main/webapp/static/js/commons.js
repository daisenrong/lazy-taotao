/**
 * Coding......
 * Created by D.SR on 2017/3/8.
 */
//用户注册，注册后登陆
function registSubmit() {
//            alert($('#registSubmit').serialize());
    $.ajax({
        type: "POST",
        url: ctx + "/user/regist",
        data: $('#registSubmit').serialize(),
        dataType: "json",
        contentType: "application/x-www-form-urlencoded; charset=UTF-8",
        success: function (data) {
            if (data.code != 200) {
                layer.alert(data.msg);
            } else {
                layer.confirm("注册成功，是否自动登录？", function (e) {
                    // alert($("#loginId").val() + "&password=" + $("#password").val())
                    $.ajax({
                        type: "POST",
                        url: ctx + "/user/login",
                        data: {loginId: $("#loginId").val(), password: $("#password").val()},
                        dataType: "json",
                        success: function (data) {
                            if (data.code != 200) {
                                layer.alert(data.msg);
                            } else {
                                window.location.href = ctx + "/";
                            }
                        },
                        error: function () {
                            layer.alert("注册失败");
                        }
                    });
                })

            }
        },
        error: function () {
            layer.alert("注册失败");
        }
    });

}

//加载集团下拉框信息
function loadGroupInfo(callback) {
    $.ajax({
        type: "post",
        url: ctx + "/group/getGroups",
//                    data: "{'email':'" + $email + "'}",
        contentType: "application/json; charset=utf-8",
        dataType: "json",
        success: function (data) {
            // alert(data.code)
            callback(data);
        }, error: function () {
            layer.msg("网络连接失败")
        }
    });
}


//加载公司下啦信息框
function loadCompanyInfo(groupId,callback) {
    $.ajax({
        type: "post",
        url: ctx + "/company/getCompanys/" + groupId,
//                    data: "{'email':'" + $email + "'}",
        contentType: "application/json; charset=utf-8",
        dataType: "json",
        success: function (data) {
            callback(data);
//
        }
    });
}
function getGroupById(groupId,callback) {
    $.ajax({
        type: "post",
        url: ctx + "/group/getGroup/" + groupId,
//                    data: "{'email':'" + $email + "'}",
        contentType: "application/json; charset=utf-8",
        dataType: "json",
        success: function (data) {
            callback(data);
        },
        error:function () {
            layer.msg("网络连接错误，请刷新重试。");
        }
    });
}
function getCompanyById(companyId,callback) {
    $.ajax({
        type: "post",
        url: ctx + "/company/getCompany/" + companyId,
//                    data: "{'email':'" + $email + "'}",
        contentType: "application/json; charset=utf-8",
        dataType: "json",
        success: function (data) {
            callback(data);
        },
        error:function () {
            layer.msg("网络连接错误，请刷新重试。");
        }
    });
}
function getMembersByMatchId(matchId,callback) {
    $.ajax({
        type: "post",
        url: ctx + "/member/findMemberByMatchId/" + matchId,
//                    data: "{'email':'" + $email + "'}",
        contentType: "application/json; charset=utf-8",
        dataType: "json",
        success: function (data) {
            callback(data);
        },
        error:function () {
            layer.msg("网络连接错误，请刷新重试。");
        }
    });
}
function ajaxLogout() {
    layer.confirm("确定要退出？", function (e) {
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
                    window.location.href = ctx + "/";
                }

            }
        });
    })

}


