function getMenuJsonList(currentPage, pageSize) {
    $.ajax({
        type: "get",
        url: ctx + "/menu/getMenuPage",
        data: {currentPage: currentPage, pageSize: pageSize},
        //data:$('#yourformid').serialize(),// 你的formid
        //data:JSON.stringify(object),// 你的formid
        contentType: "application/json; charset=utf-8",
        dataType: "json",
        beforeSend: function (XMLHttpRequest) {
            $("#ajax-loader").show();
        },
        complete: function (XMLHttpRequest, textStatus) {
            $("#ajax-loader").hide();
        },
        error: function () {
            layer.msg("网络连接失败，请重试");
        },
        success: function (data, textStatus) {
            var json = data.data;
            if (json.totalCount > 0) {
                var listCont = $("#listCont");
                listCont.html("");
                for (var i = 0; i < json.pageData.length; i++) {
                    var html = "<tr>";
                    html += "<td>" + json.pageData[i].id + "</td>";
                    html += "<td>" + json.pageData[i].parentId + "</td>";
                    html += "<td>" + json.pageData[i].name + "</td>";
                    html += "<td>" + json.pageData[i].icon + "</td>";
                    html += "<td>" + json.pageData[i].urlAddress + "</td>";
                    html += "<td>" + json.pageData[i].status + "</td>";
                    html += "</tr>";
                    listCont.append(html);
                }

                //显示分页
                laypage({
                    cont: 'aaaa', //容器。值支持id名、原生dom对象，jquery对象。【如该容器为】：<div id="page1"></div>
                    pages: json.totalPage, //通过后台拿到的总页数
                    curr: curr, //当前页
                    jump: function (obj, first) { //触发分页后的回调
                        if (!first) { //点击跳页触发函数自身，并传递当前页：obj.curr
                            layer.msg("ss")
                            getMenuJsonList(obj.curr);
                        }
                    }
                });

            }
        }
    });
}

function ajaxFun(currentPage, pageSize) {
    $.ajax({
        type: "get",
        url: ctx + "/menu/getMenuPage",
        data: {currentPage: currentPage, pageSize: pageSize},
        //data:$('#yourformid').serialize(),// 你的formid
        //data:JSON.stringify(object),// 你的formid
        contentType: "application/json; charset=utf-8",
        dataType: "json",
        beforeSend: function (XMLHttpRequest) {
            // $("#ajax-loader").show();
        },
        complete: function (XMLHttpRequest, textStatus) {
            // $("#ajax-loader").hide();
        },
        error: function () {
            // layer.msg("网络连接失败，请重试");
        },
        success: function (data, textStatus) {

        }
    });
}