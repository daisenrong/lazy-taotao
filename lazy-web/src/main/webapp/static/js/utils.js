jQuery.postItems = function (c) {
    $.ajax({
        cache: true, type: "POST", url: c.url, data: c.data, async: false, success: function (d) {
            c.success && c.success(d)
        }, error: function (f, g, d) {
            c.error && c.error(f, g, d)
        }
    });

};
jQuery.postJsonItems = function (c) {
    $.ajax({
        cache: true,
        type: "POST",
        dataType: "json",
        contentType: "application/json",
        url: c.url,
        data: c.data,
        async: false,
        success: function (d) {
            c.success && c.success(d)
        },
        error: function (f, g, d) {
            c.error && c.error(f, g, d)
        }
    });

};
jQuery.getItems = function (c) {
    $.ajax({
        cache: true, type: "GET", url: c.url, data: c.data, async: false, success: function (d) {
            c.success && c.success(d)
        }, error: function (f, g, d) {
            c.error && c.error(f, g, d)
        }
    });
};
jQuery.getJsonItems = function (c) {
    $.ajax({
        cache: true, type: "GET", url: c.url, data: c.data, dataType: "json", async: false, success: function (d) {
            c.success && c.success(d)
        }, error: function (f, g, d) {
            c.error && c.error(f, g, d)
        }
    });

};
jQuery.getRootPath = function () {
    //获取当前网址，如： http://localhost:8083/uimcardprj/share/meun.jsp
    // var curWwwPath = window.document.location.href;
    //获取主机地址之后的目录，如： uimcardprj/share/meun.jsp
    var pathName = window.document.location.pathname;
    // var pos = curWwwPath.indexOf(pathName);
    //获取主机地址，如： http://localhost:8083
    // var localhostPaht = curWwwPath.substring(0, pos);
    //获取带"/"的项目名，如：/uimcardprj
    var name = pathName.substring(0, pathName.substr(1).indexOf('/') + 1);
    return (name);
}