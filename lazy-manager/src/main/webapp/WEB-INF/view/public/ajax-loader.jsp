<%--
  ajax-loader
  PROJECT_NAME: lazy
  PACKAGE_NAME: 
  Created by Lazy on 2017/4/6 22:36
  Version: 0.1
  Info: loading
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>Title</title>
</head>
<body>
<div id="ajax-loader"
     style="cursor: progress; position: fixed; top: -50%; left: -50%; width: 200%; height: 200%; z-index: 10000; overflow: hidden;"
     hidden>
    <img src="${ctx}/static/img/ajax-loader.gif"
         style="position: absolute; top: 0; left: 0; right: 0; bottom: 0; margin: auto;"/>
</div>
</body>
</html>
