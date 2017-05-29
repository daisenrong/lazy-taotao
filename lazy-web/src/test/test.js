$(function () {
    /**
     * Coding......
     * Created by D.SR on 2017/3/24.
     */
//页面打开之后进行初始化
    getyyzb_sx();
    //提交时检验重复
    function checkData() {

        var datarows = jQuery("tr[_target='datarow']");
        var array = new Array();
        for (var i = 0; i < datarows.length; i++) {
            var num = jQuery(datarows[i]).attr("_rowindex");
            var v = jQuery("#field21351_" + num).val();
            var flag = checkRepeat(v, array);

            if (!flag) {
                window.top.Dialog.alert("事项重复，请删除重复项。");
                return false;
            } else {
                array[i] = v;
            }
        }
        return true;
    }

    function checkRepeat(value, array) {
        var flag = true;
        for (var i = 0; i < array.length; i++) {
            if (value == array[i]) {
                return false;
            } else {
                return true;
            }
        }
        return flag;
    }
    function getyyzb_sx() {
        jQuery.ajax({
            type: "POST",
            async: true,
            url: "/Founder/Weekly/getWeeklySX.jsp",
            //data: "organizationid=" + organizationid + "&subject=0",
            dataType: "json",
            success: function (data) {
                var list1 = data.list1;
                var list2 = data.list2;

                for (var i = 0; i < list1.length; i++) {
                    var _html = "<span class=' e8_showNameClass e8_showNameHoverClass'>";
                    _html += "<a title='' href='/formmode/view/AddFormMode.jsp?type=0&modeId=981&formId=-466&billid=" + list1[i] + "' target='_blank'>" + list2[i] + "</a>";
                    _html += "<span class='e8_delClass' id='" + list1[i] + "' onclick='del(event, this, 2, false, {});' style='opacity: 1; visibility: visible;'>";
                    _html += "</span>";
                    _html += "</span>";
                    _html += "</span>";
                    if (i == 0) {
                        jQuery("#field21351_0").val(list1[i]);
                        jQuery("#innerfield21351_0div").html(_html);

                    } else {
                        addRow0(0);
                        jQuery("#field21351_" + i).val(list1[i]);
                        jQuery("#innerfield21351_" + i + "div").html(_html);

                    }
                }
            },
            error: function () {
                top.Dialog.alert("自动获取数据失败，请手动选择!");
            }
        })
    }


    //拦截提交方法
    jsAOP(window, {
        'doSubmit': {
            before: function () {
                return checkData();
            }
        }
    });

})
function jsAOP(obj, handlers) {
    if (typeof obj == 'function') {
        obj = obj.prototype;
    }
    for (var methodName in handlers) {
        var _handlers = handlers[methodName];
        for (var handler in _handlers) {
            if ((handler == 'before' || handler == 'after')
                && typeof _handlers[handler] == 'function') {
                eval(handler)(obj, methodName, _handlers[handler]);
            }
        }
    }

    function before(obj, method, f) {
        var original = obj[method];
        obj[method] = function () {
            var isSubmit = f.apply(this, arguments);
            if (!isSubmit)
                return false;
            return original.apply(this, arguments);
        }
    }

    function after(obj, method, f) {
        var original = obj[method];
        obj[method] = function () {
            original.apply(this, arguments);
            return f.apply(this, arguments);
        }
    }
}