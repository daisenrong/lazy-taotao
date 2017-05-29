//获取短信验证码
function f_GenCaptcha(emailOrPhone, rule, objfun) {
    $(".mobile").trigger("blur");

    if (!$(".mobileerror").is(":hidden")) {
        return false;
    }

    var result = "";
    $.ajax({
        async: false,
        type: "Post",
        url: "AjaxGenCaptcha.aspx/GenCaptcha",
        //方法传参的写法一定要对，str为形参的名字,str2为第二个形参的名字
        data: "{'emailOrPhone':'" + emailOrPhone + "','rule':" + rule + "}",
        contentType: "application/json; charset=utf-8",
        //dataType: "json",
        success: function (data) {
            //返回的数据用data.d获取内容;
            if (data.d) {
                var json = eval('(' + data.d + ')');
                var o = eval(json);
                if (emailOrPhone.indexOf("@") > 0) {
                    $(".hint").slideDown();
                    $("#myemail").text(emailOrPhone);
                    $("#emailAddr").attr("href", o.mail);
                }
                objfun(o.captch);
            }
        },
        error: function (err) {
            result = err;
        }
    });
    return result;
}


var t;
var ts = 60;
function f_Second(data) {
    if (ts == 60) {
        $("input:hidden[id$='hidCaptcha']").val(data);
    }
    ts--;
    if (ts == 0) {
        clearTimeout(t);
        ts = 60;
        $("a[id$='btnCaptcha']").text("获取验证码").attr("disabled", false);
    }
    else {
        $("a[id$='btnCaptcha']").text(ts + "秒后重新发送").attr("disabled", true);
        t = setTimeout("f_Second()", 1000);
    }
}