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
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <title>方正集团创新大赛</title>
    <meta content="width=device-width, initial-scale=1, maximum-scale=1, user-scalable=no" name="viewport">
    <%@include file="/WEB-INF/page/public/header.jsp" %>
</head>
<body>

<div id="page"></div>
<script>

    layer.msg("fasdfdsa");
    laypage({
        cont: $('#page'), //容器。值支持id名、原生dom对象，jquery对象,
        pages: 100, //总页数
        skip: true, //是否开启跳页
        skin: '#4b7caf',
        groups: 3 //连续显示分页数
    });

</script>


<%@include file="/WEB-INF/page/public/footer.jsp" %>
<script src="${ctx}/static/plugins/charts/Chart.min.js"></script>
</body>
</html>

