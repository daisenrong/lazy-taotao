<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<meta http-equiv="Content-Type" content="text/html; charset=utf-8"/>
<c:set var="ctx" value="${pageContext.request.contextPath}"/>
<link rel="shortcut icon" href="${ctx}/static/favicon.ico?v=1.0">

<script language="javascript" src="${ctx}/static/plugins/jquery/jquery.min.js"></script>
<script language="javascript" src="${ctx}/static/js/commons.js?v=1.1"></script>
<script src="${ctx}/static/plugins/layui/lay/dest/layui.all.js?v=1.0"></script>

<link rel="stylesheet" href="${ctx}/static/css/commons.css?v=1.0">

<script type="text/javascript">
    //全局系统变量
    var ctx = "${ctx}";
    var layer = layui.layer;
    var layform = layui.form();
    var laypage = layui.laypage;
    var laydate = layui.laydate;
    var layedit = layui.layedit;
    var layelement = element = layui.element();

</script>